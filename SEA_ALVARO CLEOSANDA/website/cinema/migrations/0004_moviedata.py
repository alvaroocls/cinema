# Generated by Django 4.2.1 on 2023-06-25 13:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cinema', '0003_userdata_balance'),
    ]

    operations = [
        migrations.CreateModel(
            name='MovieData',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('description', models.TextField(max_length=1000)),
                ('release_date', models.CharField(max_length=100)),
                ('poster_url', models.CharField(max_length=255)),
                ('age_rating', models.IntegerField()),
                ('ticket_price', models.IntegerField()),
            ],
        ),
    ]