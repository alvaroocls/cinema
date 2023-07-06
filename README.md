Ticket booking website for compfest
by Alvaro Cleosanda

Framework yang digunakan : Django 4.2.1
Versi Python : 3.10.7

Fitur Website : 
  1. Login
  2. Register
  3. Edit Profile ( mengganti username / password)
  4. Topup / Withdraw Balance
  5. Melihat film-film yang sedang tayang dan deskripsinya
  6. Book ticket film 
  7. Refund ticket film

Sebelum menjalankan website : 
  1. Pastikan mysqlclient sudah terinstall.
     command untuk instal mysqlclient (jika belum) : pip install mysqlclient
  2. Import file cinema.sql ke database.
  3. Sesuaikan name, user, password, dan port yang berada di file settings.py dengan settingan database anda.
  4. Pastikan server database sudah menyala
  5. Jalankan website dengan memasukkan command 'python manage.py runserver 'di terminal 
