from django.db import models


class Savodxonlik(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Savodxonlik"
        verbose_name_plural = "Savodxonlik"

    def __str__(self):
        return self.full_name


class Backend(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Backend"
        verbose_name_plural = "Backend"

    def __str__(self):
        return self.full_name


class English(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "English"
        verbose_name_plural = "English"

    def __str__(self):
        return self.full_name


class Frontend(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Frontend"
        verbose_name_plural = "Frontend"

    def __str__(self):
        return self.full_name


class GrafikDizayin(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Grafik_dizayin"
        verbose_name_plural = "Grafik_dizayin"

    def __str__(self):
        return self.full_name


class MobilIlova(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Mobil_ilova"
        verbose_name_plural = "Mobil_ilova"

    def __str__(self):
        return self.full_name


class Robototexnika(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Robototexnika"
        verbose_name_plural = "Robototexnika"

    def __str__(self):
        return self.full_name


class SMM(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "SMM"
        verbose_name_plural = "SMM"

    def __str__(self):
        return self.full_name


class UchDdizayin(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "UchD_dizayin"
        verbose_name_plural = "UchD_dizayin"

    def __str__(self):
        return self.full_name

class FullStack(models.Model):
    full_name = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    date = models.CharField(max_length=250)
    time = models.CharField(max_length=300)
    language = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Full_Stack"
        verbose_name_plural = "Full_Stack"

    def __str__(self):
        return self.full_name
