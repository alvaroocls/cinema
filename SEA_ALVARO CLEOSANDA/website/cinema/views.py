from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.template import loader
from .models import UserData,MovieData,Tickets
from django.contrib import messages
from datetime import date
# Create your views here.

def homepage(request) : 
    login_username = request.session.get('login_username')
    if login_username : 
        user = UserData.objects.get(username = login_username)
    else : 
        user = ''

    movie = MovieData.objects.all().values()
    return render(request,'home.html',{'user' : user,'movie' : movie})

def login(request) : 
    if request.method == 'POST' : 
        username = request.POST.get('username')
        password = request.POST.get('password')

        if UserData.objects.filter(username = username,password=password).exists() : 
            request.session['login_username'] = username
            return redirect('/')
        else : 
            messages.error(request,'Password / Username salah')
            
    return render(request,'login.html')

def register(request) : 
    if request.method == 'POST' : 
        username = request.POST.get('username')
        password = request.POST.get('password')
        name = request.POST.get('name')
        age = request.POST.get('age')

        if not UserData.objects.filter(username = username).exists() : #check apakah username sudah ada di database 
            UserData.objects.create(username = username,password = password,name = name,age = age)
            messages.success (request,'Registrasi Berhasil')
        else : 
            messages.error(request,'Username sudah dipakai!')

    return render(request,'register.html')

def logout(request) : 
    if 'login_username' in request.session : 
        del request.session['login_username']
        messages.success(request,'Logout Berhasil')
        return redirect('/')
    else : 
        messages.error(request,'Logout gagal')
        return redirect('/')

def profile(request) : 
    login_username = request.session.get('login_username')
    user = UserData.objects.get(username = login_username)
    tickets = Tickets.objects.filter(user_id = login_username).select_related('movie')

    newname = request.POST.get('name')
    oldpass = request.POST.get('oldpassword')
    newpassword = request.POST.get('password')
    topup = request.POST.get('topup')
    withdraw = request.POST.get('withdraw')
    refund = []
    all = dict(request.POST.items())
    res = {key: val for key, val in all.items()
       if key.startswith('refund')}
    
    for x in res.values() : 
        if x != '':
            refund.append(x)


    if request.method == 'POST' : 
        if newname : 
            user.name = newname
            user.save()
            messages.success(request,'Name change success')
        if oldpass and newpassword :
            if user.password == oldpass : 
                user.password = newpassword
                user.save()
                messages.success(request,'Password change success')
            else : 
                messages.error(request,'Incorrect Password!')
        if topup : 
            if user.balance == None : 
                user.balance = topup
                user.save()
                messages.success(request,'Top Up success')
            else : 
                user.balance = int(user.balance) + int(topup)
                user.save()
                messages.success(request,'Top Up success')
        if withdraw : 
            if user.balance == None or user.balance == 0: 
                messages.error(request,'Insufficient Balance')
            else : 
                user.balance = int(user.balance) - int(withdraw)
                user.save()
                messages.success(request,'Withdrawal success')
        if refund : 
            refund_ticket = Tickets.objects.select_related('movie').get(id = refund[0])
            user.balance += refund_ticket.movie.ticket_price
            user.save()
            refund_ticket.delete()
            messages.success(request,'Refund succes !')
    return render(request,'profile.html',{'user' : user,
                                          'tickets' : tickets})

def booking(request,movie_id) : 
    login_username = request.session.get('login_username')
    movie = MovieData.objects.get(id = movie_id)
    user = UserData.objects.get(username = login_username)
    tickets = Tickets.objects.filter(movie = movie_id).values()
    sold_seats = []
    success_message = ''
    total_price = 0
    selected_seats = []

    for x in tickets : 
        sold_seats.append(x['seat_id'])
    
    
    row1 = [x for x in range (1,9)]
    row2 = [x for x in range (9,17)]
    row3 = [x for x in range (17,25)]
    row4 = [x for x in range (25,33)]
    row5 = [x for x in range (33,41)]
    row6 = [x for x in range (41,49)]
    row7 = [x for x in range (49,57)]
    row8 = [x for x in range (57,65)]

    if request.method == 'POST':
        all = dict(request.POST.items())
        for key in all :
            if all[key] != '' : 
                selected_seats.append(all[key])
        selected_seats.pop(0)
        if len(selected_seats) > 0 : 
            if user.age < movie.age_rating : 
                messages.error(request,'Umur anda belum cukup untuk menonton film ini !')
            elif user.balance == None or user.balance < movie.ticket_price * len(selected_seats): 
                messages.error(request,'Insufficient balance')
            elif len(selected_seats) > 6 : 
                messages.error(request,'Maksimal booking 6 tiket!')
            else :
                for x in selected_seats:
                    Tickets.objects.create(movie = movie,user = user,seat_id = x, purchase_date = date.today() )
                total_price = len(selected_seats)*movie.ticket_price
                user.balance -= total_price
                user.save()
                messages.success(request,'Tiket Berhasil di Book !')
                success_message = 'Tiket berhasil di book!'

    return render(request,'booking.html',{'movie' : movie,
                                          'user' : user,
                                          'sold_seats' : sold_seats,
                                          'success_message' : success_message,
                                          'total_price' : total_price,
                                          'selected_seats' : (', ').join(selected_seats),
                                          'row1' : row1,
                                          'row2' : row2,
                                          'row3' : row3,
                                          'row4' : row4,
                                          'row5' : row5,
                                          'row6' : row6,
                                          'row7' : row7,
                                          'row8' : row8,})

