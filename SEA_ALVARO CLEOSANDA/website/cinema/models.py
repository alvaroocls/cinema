from django.db import models

# Create your models here.
class UserData (models.Model) : 
    username = models.CharField(primary_key=True, max_length= 255)
    password = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    age = models.IntegerField()
    balance = models.IntegerField(null=True)

class MovieData (models.Model) : 
    title = models.CharField(max_length=100)
    description = models.TextField(max_length=1000)
    release_date = models.CharField(max_length=100)
    poster_url = models.CharField(max_length=255)
    age_rating = models.IntegerField()
    ticket_price = models.IntegerField()

class Tickets (models.Model) :
    movie = models.ForeignKey(MovieData, on_delete=models.CASCADE)
    user = models.ForeignKey(UserData, on_delete=models.CASCADE)
    seat_id = models.IntegerField()
    purchase_date = models.DateField()

