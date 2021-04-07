# Generated by Django 3.1.4 on 2021-02-11 17:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ex', '0002_notice'),
    ]

    operations = [
        migrations.CreateModel(
            name='TeacherNewNotice',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('new', models.IntegerField(default=1)),
                ('notice_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.notice')),
                ('teacher_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.teacher')),
            ],
        ),
    ]
