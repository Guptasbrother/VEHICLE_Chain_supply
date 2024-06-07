-- retrived the given informatin about vehicle chains..
vehicle_production, vehicle_sales, vehicle_customer are the three foundamentals elements of businee cycle.
	
	
	--(1) vehicle_production table
 
	create table vehicle_production		
(production_id serial primary key,
 price int,
 brand varchar,
 model varchar,
 year int,
 color varchar,
 mileage int,
 body_style varchar,
 engine_type varchar,
 cubic_capacity int,
 seat_capacity int,
 fuel_type varchar,
 tansmission varchar,
 region varchar,
 state varchar,
 city varchar,
 pincode int)
 
 
	--(2) vehicle_sales table
	create table vehicle_sales
(sales_id int primary key,
 sales_date int,
 sales_type varchar,
 payment_mode varchar,
 profit float,
 production_id int,
 FOREIGN KEY (production_id) REFERENCES vehicle_production (production_id))


	--(3) vehicle_customer table
	create table vehicle_customer
(cust_id int primary key,
 name varchar,
 gender varchar,
 age int,
 contact int,
 city varchar,
 production_id int,
 sales_id int,
 FOREIGN KEY(production_id) REFERENCES vehicle_production(production_id),
 FOREIGN KEY(sales_id) REFERENCES vehicle_sales(sales_id))
 
