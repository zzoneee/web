# Generated by Django 3.1.4 on 2021-02-20 14:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ex', '0008_post_title'),
    ]

    operations = [
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('message', models.CharField(max_length=511)),
                ('time', models.DateTimeField(auto_now_add=True)),
                ('post', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.post')),
                ('userStu', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.student')),
                ('userTea', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.teacher')),
            ],
        ),
    ]
