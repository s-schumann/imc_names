alter table imc_members modify fullname varchar(64) default null;

/*
mysql> desc imc_members;
+----------+------------------+------+-----+---------+----------------+
| Field    | Type             | Null | Key | Default | Extra          |
+----------+------------------+------+-----+---------+----------------+
| id       | int(10) unsigned | NO   | PRI | NULL    | auto_increment | 
| username | char(64)         | NO   | MUL |         |                | 
| domain   | char(64)         | NO   |     |         |                | 
| room     | char(64)         | NO   |     |         |                | 
| flag     | int(11)          | NO   |     |         |                | 
| fullname | varchar(64)      | YES  |     | NULL    |                | 
+----------+------------------+------+-----+---------+----------------+
6 rows in set (0.01 sec)
*/

/*
BACKUP of database:
drop database backup;
create database backup;
create table backup.imc_members select * from imc_members;
create table backup.imc_rooms select * from imc_rooms;
*/
/* if empty issue following lines */
/*
insert into imc_members select * from backup.imc_members;
insert into imc_rooms select * from backup.imc_rooms;
*/
