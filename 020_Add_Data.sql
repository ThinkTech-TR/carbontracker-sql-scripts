# Add Data

insert into carbon.users 
(auth_user_id)
VALUES (5ff623d0bd77a6006920bff3);

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
values (car);

insert into transport (transport_type)
values (bus);

insert into transport (transport_type)
values (train);

insert into transport (transport_type)
values (plane);

select * from transport order by transport_id;

insert into carbon.journey
(user_id, transport_id, journey_date, distance_miles)
values (1, 3, 20210110, 100);

select * from carbon.journey;

insert into car_carbon (car_type, kg_carbon_per_mile)
values ('smallPetrolDiesel', 0.23254);

insert into car_carbon (car_type, kg_carbon_per_mile)
values ('mediumPetrolDiesel', 0.28276);

insert into car_carbon (car_type, kg_carbon_per_mile)
values ('largePetrolDiesel', 0.35923);

insert into car_carbon (car_type, kg_carbon_per_mile)
values ('plugInHybrid', 0.15284);

insert into car_carbon (car_type, kg_carbon_per_mile)
values ('electric', 0.08487);

select * from carbon.car_carbon;

insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('pre1919', 'detached', 6030.08);
 
 insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1919-44', 'detached', 5556.59);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1945-64', 'detached', 4961.96);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1965-82', 'detached', 4233.69);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1983-92', 'detached', 4036.36);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1993-99', 'detached', 4041.28);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('post1999', 'detached', 3899.12);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('pre1919', 'semiDetached', 4565.97);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1919-44', 'semiDetached', 3717.53);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1945-64', 'semiDetached', 3326.48);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1965-82', 'semiDetached', 3151.14);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1983-92', 'semiDetached', 2728.24);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1993-99', 'semiDetached', 2691.46);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('post1999', 'semiDetached', 2469.5);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('pre1919', 'endTerrace', 3791.08);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1919-44', 'endTerrace', 3358.32);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1945-64', 'endTerrace', 3064.13);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1965-82', 'endTerrace', 2972.2);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1983-92', 'endTerrace', 2581.14);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1993-99', 'endTerrace', 2654.69);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('post1999', 'endTerrace', 2584.75);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('pre1919', 'midTerrace', 3196.45);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1919-44', 'midTerrace', 2999.12);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1945-64', 'midTerrace', 2893.72);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1965-82', 'midTerrace', 2686.54);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1983-92', 'midTerrace', 2392.35);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1993-99', 'midTerrace', 2419.27);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('post1999', 'midTerrace', 2506.27);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('pre1919', 'bungalow', 4060.99);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1919-44', 'bungalow', 3856.09);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1945-64', 'bungalow', 3390.17);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1965-82', 'bungalow', 3187.91);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1983-92', 'bungalow', 3100.91);
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1993-99', 'bungalow', 3165.92);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('post1999', 'bungalow', 2982.05);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('pre1919', 'convertedFlat', 2778.47);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1919-44', 'convertedFlat', 2709.85);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1945-64', 'convertedFlat', 2586.07);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1965-82', 'convertedFlat', 2420.59);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1983-92', 'convertedFlat', 2583.78);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1993-99', 'convertedFlat', 2635.34);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('post1999', 'convertedFlat', 2580.18);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('pre1919', 'purposeBuiltFlat', 2630.06);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1919-44', 'purposeBuiltFlat', 2321.08);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1945-64', 'purposeBuiltFlat', 2123.75);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1965-82', 'purposeBuiltFlat', 1986.51);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1983-92', 'purposeBuiltFlat', 2034.46);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('1993-99', 'purposeBuiltFlat', 2164.49);
 
insert into housing (housing_age, housing_type, kg_carbon_annual)
 values ('post1999', 'purposeBuiltFlat', 1951.06);

INSERT INTO `carbon`.`diet_carbon` (`diet_type`, `kg_carbon_annual`)
	VALUES ("frequent_meat_eater", 3300);

INSERT INTO `carbon`.`diet_carbon` (`diet_type`, `kg_carbon_annual`)
	VALUES ("meat_eater", 2500);
    
INSERT INTO `carbon`.`diet_carbon` (`diet_type`, `kg_carbon_annual`)
	VALUES ("pescatarian", 1900);
    
INSERT INTO `carbon`.`diet_carbon` (`diet_type`, `kg_carbon_annual`)
	VALUES ("vegetarian", 1700);
    
INSERT INTO `carbon`.`diet_carbon` (`diet_type`, `kg_carbon_annual`)
	VALUES ("vegan", 1500); 
    
 select * from carbon.housing





