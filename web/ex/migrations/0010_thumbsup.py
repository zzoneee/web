# Generated by Django 3.1.4 on 2021-02-20 16:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ex', '0009_comment'),
    ]

    operations = [
        migrations.CreateModel(
            name='thumbsUp',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('post', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.post')),
                ('userStu', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.student')),
                ('userTea', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.teacher')),
            ],
        ),
    ]
