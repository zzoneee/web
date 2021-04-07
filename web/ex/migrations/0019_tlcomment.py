# Generated by Django 3.1.4 on 2021-03-31 20:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ex', '0018_tlpost'),
    ]

    operations = [
        migrations.CreateModel(
            name='TLComment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('message', models.CharField(max_length=511)),
                ('time', models.DateTimeField(auto_now_add=True)),
                ('group', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.group')),
                ('tlPost', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.tlpost')),
            ],
        ),
    ]
