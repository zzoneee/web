# Generated by Django 3.1.4 on 2021-02-03 13:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Car',
            fields=[
                ('license_plate_number', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('url', models.CharField(blank=True, max_length=255, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Equipment',
            fields=[
                ('id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('equipmentType', models.CharField(max_length=1)),
                ('place', models.CharField(max_length=255)),
                ('direction', models.CharField(max_length=255, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Formation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('plane_cnt', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Group',
            fields=[
                ('id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Light',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20)),
                ('RGB', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='LightList',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('time', models.IntegerField(default=1)),
            ],
        ),
        migrations.CreateModel(
            name='Teacher',
            fields=[
                ('id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('password', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=20, null=True)),
                ('college', models.CharField(max_length=20, null=True)),
                ('phone', models.CharField(max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='TeamEvaluation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Rater_ID', models.CharField(max_length=20)),
                ('Ratee_ID', models.CharField(max_length=20)),
                ('score', models.IntegerField(default=-1)),
            ],
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('stu_num', models.CharField(max_length=20)),
                ('password', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=20, null=True)),
                ('college', models.CharField(max_length=20, null=True)),
                ('class_name', models.CharField(max_length=20, null=True)),
                ('phone', models.CharField(max_length=20, null=True)),
                ('role', models.CharField(max_length=20, null=True)),
                ('group', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ex.group')),
            ],
        ),
        migrations.CreateModel(
            name='Report',
            fields=[
                ('id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('ex_name', models.CharField(max_length=255)),
                ('system_score', models.IntegerField(default=-1)),
                ('teacher_score', models.IntegerField(default=-1)),
                ('url', models.CharField(blank=True, max_length=255, null=True)),
                ('create_time', models.DateTimeField(auto_now_add=True)),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.group')),
            ],
        ),
        migrations.CreateModel(
            name='Plane',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('x', models.IntegerField(default=0)),
                ('y', models.IntegerField(default=0)),
                ('z', models.IntegerField(default=0)),
                ('formation', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.formation')),
            ],
        ),
        migrations.CreateModel(
            name='LightScheme',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('formation', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.formation')),
            ],
        ),
        migrations.CreateModel(
            name='LightListLight',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('light', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.light')),
                ('lightList', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.lightlist')),
            ],
        ),
        migrations.AddField(
            model_name='lightlist',
            name='lightScheme',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.lightscheme'),
        ),
        migrations.CreateModel(
            name='FormationPath',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('time_tot', models.IntegerField(default=5)),
                ('direction', models.CharField(max_length=255, null=True)),
                ('speed', models.FloatField(default=0)),
                ('end_formation', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='end_formation', to='ex.formation')),
                ('start_formation', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='start_formation', to='ex.formation')),
            ],
        ),
        migrations.AddField(
            model_name='formation',
            name='owner',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.group'),
        ),
        migrations.CreateModel(
            name='CarEquipment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField(auto_now_add=True)),
                ('car', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.car')),
                ('equipment', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ex.equipment')),
            ],
        ),
    ]
