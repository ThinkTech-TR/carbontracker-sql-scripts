# Table creation script
use carbon;

drop table car_carbon;
drop table housing;
drop table journey;
drop table questionaire;
drop table transport;
drop table users;
drop table diet_carbon;

CREATE TABLE IF NOT exists  (
  user_id int NOT NULL AUTO_INCREMENT,
  auth_user_id nvarchar(255) NOT NULL,
  nickname nvarchar(255) NOT NULL,
  PRIMARY KEY (user_id),
  UNIQUE KEY idx_users_auth_user_id (`auth_user_id`)
);

create table if not exists transport (
transport_id int not null auto_increment,
transport_type nvarchar(50) not null,
primary key(transport_id),
 UNIQUE KEY idx_transport_transport_type (transport_type));
 
create table if not exists car_carbon (
car_carbon_id int not null auto_increment,
car_type nvarchar(50) not null,
kg_carbon_per_mile decimal(8, 6) not null,
primary key(car_carbon_id),
UNIQUE KEY idx_car_carbon_car_type (car_type));
create table if not exists housing (
housing_id int not null auto_increment,
housing_age nvarchar(50) not null,
housing_type nvarchar(50) not null,
kg_carbon_annual decimal(8, 2) not null,
primary key(housing_id),
UNIQUE KEY idx_housing_housing (housing_age, housing_type));

CREATE table if not exists questionaire (
questionaire_id int not null auto_increment,
user_id int not null,
userCategory nvarchar(50) not null,
diet nvarchar(50) not null,
carUsage nvarchar(50) null,
carMileage int null,
numberInHousehold int,
houseType nvarchar(50) not null,
houseAge nvarchar(50) not null,
primary key(questionaire_id),
foreign key (user_id) references users(user_id));

create table if not exists journey (
journey_id int not null auto_increment,
user_id int not null,
transport_id int not null,
journey_date date not null,
distance_miles int,
primary key(journey_id),
foreign key (user_id) references users(user_id),
foreign key (transport_id) references transport(transport_id));

drop view vw_journey;

create view vw_journey as
select a.journey_id, a.user_id, b.auth_user_id, a.transport_id, c.transport_type, a.journey_date, a.distance_miles 
from journey a inner join users b on a.user_id = b.user_id
inner join  transport c on a.transport_id = c.transport_id;

 create table if not exists diet_carbon (
  diet_carbon_id int not null auto_increment,
  diet_type nvarchar(50) not null,
  kg_carbon_annual int not null,
  primary key (diet_carbon_id),
  unique key idx_diet_carbon_diet_type (diet_type)
);

ALTER TABLE carbon.transport ADD kg_carbon_per_mile decimal(8,6) NOT NULL AFTER transport_type;

