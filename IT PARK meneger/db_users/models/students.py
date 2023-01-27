from django.db import models


class Students(models.Model):
    full_name = models.CharField(max_length=200)
    username = models.CharField(max_length=100)
    user_id = models.CharField(max_length=50, unique=True)

    def __str__(self):
        return self.full_name


class ListOfStudents(Students):
    list_display = ('full_name','username','user_id')