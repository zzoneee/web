# Generated by Django 3.1.4 on 2021-03-30 15:15

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ex', '0016_experimentdata'),
    ]

    operations = [
        migrations.CreateModel(
            name='loginRecord',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField(auto_now_add=True)),
                ('student', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.student')),
            ],
        ),
    ]
