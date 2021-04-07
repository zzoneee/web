# Generated by Django 3.1.4 on 2021-03-31 17:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ex', '0017_loginrecord'),
    ]

    operations = [
        migrations.CreateModel(
            name='TLPost',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=31)),
                ('message', models.CharField(max_length=511)),
                ('time', models.DateTimeField(auto_now_add=True)),
                ('group', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.group')),
            ],
        ),
    ]