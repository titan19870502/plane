from django.db import models

# Create your models here.
class Operator(models.Model):
    op_id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=10)
    sex = models.CharField(max_length=4)
    education = models.CharField(max_length=10)
    birthday = models.DateTimeField()
    own_company = models.CharField(max_length=10)
    create_date = models.DateTimeField()
    employ_date = models.DateTimeField()
    phone = models.IntegerField()
    mobile_phone = models.IntegerField()
    id_card = models.CharField(max_length=18)
    address = models.CharField(max_length=20)
    cert_no = models.CharField(max_length=20)
    agency = models.CharField(max_length=20)
    cert_gain_date = models.DateTimeField()
    cert_expire_date = models.DateTimeField()

    class Meta:
        db_table = 'Operator'

    def __unicode__(self):
        return self.name


class Plane(models.Model):
    plane_id = models.IntegerField(primary_key=True)
    serial_no = models.CharField(max_length=20)
    user_group = models.CharField(max_length=20)
    manufacture = models.CharField(max_length=20)
    model_name = models.CharField(max_length=20)
    type = models.CharField(max_length=20)
    capacity = models.CharField(max_length=20)
    standard = models.CharField(max_length=20)
    production_date = models.DateTimeField()
    purchase_date = models.DateTimeField()
    sim_no = models.CharField(max_length=20)

    class Meta:
        db_table = 'Plane'

    def __unicode__(self):
        return self.serial_no


class PlaneInUse(models.Model):
    plane_id = models.IntegerField(primary_key=True)
    op_id = models.ForeignKey(Operator)
    relat_id = models.IntegerField()
    create_date = models.DateTimeField()
    valid_date = models.DateTimeField()
    expire_date = models.DateTimeField()
    ext1 = models.CharField(max_length=20)
    ext2 = models.CharField(max_length=20)

    class Meta:
        db_table = 'Plane_In_Use'

    def __unicode__(self):
        return self.plane_id


class PlaneRecord(models.Model):
    plane_id = models.IntegerField()
    start_time = models.DateTimeField()
    pos_x = models.FloatField()
    pos_y = models.FloatField()
    pos_z = models.FloatField()
    speed = models.FloatField()
    record_time = models.DateTimeField()
    relat_id = models.IntegerField()

    class Meta:
        db_table = 'Plane_Record'

    def __unicode__(self):
        return self.plane_id


class PlaneIllegal(models.Model):
    plane_id = models.IntegerField(primary_key=True)
    type = models.CharField(max_length=20)
    pos_x = models.FloatField()
    pos_y = models.FloatField()
    pos_z = models.FloatField()
    speed = models.FloatField()
    record_date = models.DateTimeField()
    feishou_id = models.ForeignKey(Operator)

    class Meta:
        db_table = 'Plane_illegal'

    def __unicode__(self):
        return self.plane_id

class PlaneMantain(models.Model):
    plane_id = models.IntegerField(primary_key=True)
    type = models.CharField(max_length=20)
    describe = models.TextField()
    quality = models.CharField(max_length=10)
    response = models.CharField(max_length=10)
    remark = models.TextField()
    record_date = models.DateTimeField()

    class Meta:
        db_table = 'Plane_Mantain'

    def __unicode__(self):
        return self.plane_id


class District(models.Model):
    district_id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=20)
    create_date = models.DateTimeField()
    valid_date = models.DateTimeField()
    expire_date = models.DateTimeField()

    class Meta:
        db_table = 'District'

    def __unicode__(self):
        return self.name


class PlaneDistrict(models.Model):
    relat_id = models.IntegerField(primary_key=True)
    plane_id = models.ForeignKey(Plane)
    district_id = models.ForeignKey(District)
    create_date = models.DateTimeField()
    valid_date = models.DateTimeField()
    expire_date = models.DateTimeField()

    class Meta:
        db_table = 'Plane_District'

    def __unicode__(self):
        return self.plane_id


class Owner(models.Model):
    owner_id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=20)
    phone = models.IntegerField()
    create_date = models.DateTimeField()
    valid_date = models.DateTimeField()
    expire_date = models.DateTimeField()

    class Meta:
        db_table = 'Owner'

    def __unicode__(self):
        return self.name


class PlaneOwner(models.Model):
    relat_id = models.IntegerField(primary_key=True)
    plane_id = models.ForeignKey(Plane)
    owner_id = models.ForeignKey(District)
    create_date = models.DateTimeField()
    valid_date = models.DateTimeField()
    expire_date = models.DateTimeField()

    class Meta:
        db_table = 'Plane_Owner'

    def __unicode__(self):
        return self.plane_id