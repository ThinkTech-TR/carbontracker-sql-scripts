# Add Data

insert into carbon.users 
(auth_user_id)
VALUES ("5ff623d0bd77a6006920bff3");

insert into carbon.questionaire
(user_id,
 userCategory,
 diet,
 carUsage,
 carMileage,
 numberInHousehold,
 houseType,
 houseAge)
VALUES
(1,
 'individual',
 'frequentMeatEaster',
  null,
  500,
  3,
  'detached',
  'pre1919');

insert into transport (transport_type)
values ("car");

insert into transport (transport_type)
values ("bus");

insert into transport (transport_type)
values ("train");

insert into transport (transport_type)
values ("plane");

select * from transport order by transport_id;

insert into carbon.journey
(user_id, transport_id, journey_date, distance_miles)
values (1, 3, 20210110, 100);

select * from carbon.journey;

insert into car_carbon (car_type, kg_carbon_per_mile)
values ('smallPetrolDiesel', 0.23254);

select * from carbon.car_carbon;




