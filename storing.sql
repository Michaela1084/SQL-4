Insert Into customer (first_name, last_name, phone_number) Values ('Peter', 'Bogisich', ' (628) 031-2282');  
Insert Into customer (first_name, last_name, phone_number) Values ('Clayton', 'Larkin', ' (791) 346-5354');  
Insert Into customer (first_name, last_name, phone_number) Values ('Olive', 'Hodkiewicz', ' (569) 231-3243');  
Insert Into customer (first_name, last_name, phone_number) Values ('Maryann', 'Zulauf', ' (624) 792-5437');  
Insert Into customer (first_name, last_name, phone_number) Values ('Brooke', 'Kiehn', ' (146) 241-1407');  
Insert Into customer (first_name, last_name, phone_number) Values ('Dwayne', 'Hane', ' (781) 040-7053');  
Insert Into customer (first_name, last_name, phone_number) Values ('Frankie', 'Vandervort', ' (763) 591-4914');  



select * from customer;

select * from salesperson;
 
Insert Into salesperson (first_name, last_name) Values ('Rosemarie', 'Schmidt');  
Insert Into salesperson (first_name, last_name) Values ('Laverne', 'Runolfsson');  
Insert Into salesperson (first_name, last_name) Values ('Rosie', 'Becker');  
Insert Into salesperson (first_name, last_name) Values ('Josefina', 'Gerlach');  
Insert Into salesperson (first_name, last_name) Values ('Tabitha', 'Funk');  
Insert Into salesperson (first_name, last_name) Values ('Noah', 'Schmitt-Grimes');  
Insert Into salesperson (first_name, last_name) Values ('Ignacio', 'Brown');  
Insert Into salesperson (first_name, last_name) Values ('Arthur', 'Olson');  
Insert Into salesperson (first_name, last_name) Values ('Nora', 'Conn');  
Insert Into salesperson (first_name, last_name) Values ('Mable', 'Shields'); 

select * from salesperson;

INSERT INTO car (status,make,model,year,price)
values
	('New', 'Toyota', 'Tacoma', 2022, 39000.00),
	('Used', 'Volkswagen', 'Golf', 2013, 10000.00),
	('New', 'BMW', 'M5', 2023, 65000.00),
	('Used', 'Toyota', 'Supra', 1998, 1.0);
	
select * from car;

insert into invoice
(invoice_date,total_amount,employee_id,customer_id,car_id)
Values
('08/10/2023',169,5,5,3),
('10/03/2023',210,5,5,2),
('03/23/2023',350,5,5,5),
('06/18/2023',2000,5,5,1),
('08/12/2023',60,5,5,4);
select * from invoice;

Insert Into mechanic (first_name, last_name, phone_number) Values ('Louise', 'Hoeger', '(901) 299-1477');  
Insert Into mechanic (first_name, last_name, phone_number) Values ('Ian', 'Schroeder', '(617) 047-9797');  
Insert Into mechanic (first_name, last_name, phone_number) Values ('Arturo', 'Murazik', '(926) 925-5780');  
Insert Into mechanic (first_name, last_name, phone_number) Values ('Tonya', 'Pfannerstill', '(315) 198-4769');  
Insert Into mechanic (first_name, last_name, phone_number) Values ('Iris', 'Lang', '(886) 268-9387');  
Insert Into mechanic (first_name, last_name, phone_number) Values ('Jeff', 'Lindgren', '(193) 590-3812');  
Insert Into mechanic (first_name, last_name, phone_number) Values ('Dwight', 'Stokes', '(533) 651-0207');  
select * from mechanic;

insert into mechanic_car_assignment(
	car_id,
	mechanic_id
)values
(2,5),
(3,6),
(1,2);
select * from mechanic_car_assignment;



insert into parts(
	part_name,
	part_description,
	part_cost
)values(
	'Pirelli Tires',
	'5 New 16" Pirelli Tires.',
	1050
),(
	'Oil Filter',
	'Small fit regular filter.',
	20
);
select * from parts;


insert into service_history(
	service_date,
	description,
	car_id
)values
	('03/23/2023','Oil Change',5),
	('06/18/2023','Tire change',1);
select * from service_history sh ;


insert into service_ticket(
	ticket_date,description,customer_id
)Values
('02/23/2023','Next Oil change',19),
('05/18/2023','Tire change',13);
select * from service_ticket;


insert into service_part_assignment(
	ticket_id,part_id,quantity
)values
(1,1,1),
(2,2,5);
select * from service_part_assignment;
