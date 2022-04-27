create table customers(
	customer_id serial primary key,
	username varchar (50) unique,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(255)
);

create table movies(
movie_id serial primary key,
premire_date date,
constraint fk_date foreign key (premire_date) references tickets(premire_date),
show_times time,
constraint fk_time foreign key (show_times) references tickets(show_times),
showing_dates date,
constraint fk_dates foreign key (showing_dates) references tickets(showing_dates),
description varchar(255)
);

create table tickets(
theater_id serial primary key,
customer_id int,
total_number int,
price float8,
date_of_purchase date,
purchase_origin varchar(255),
movie_id int
);

create table concession(
theater_id int,
food varchar(255)
drink varchar(255)
apparel varchar(255)
candy varchar(255)
beer varchar(255)
alcohol varchar(255)
);

