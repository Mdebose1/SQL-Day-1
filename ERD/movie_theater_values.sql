insert into customers(username, first_name, last_name, email)
values
('bdunn', 'Brad', 'Dunn', 'bdunn1@lasttime.com'),
('rgiller', 'Robin', 'Giller', 'rgiller@thisemail.com')

insert into movies(premire_date, show_times, shwoing_times, showing_dates, description, title)
values
('March 7 2022', '12:00 pm', 'March 7', 'A spy gets in over her head.', 'The Spy Game'),
('March 29 2022', '7:00 pm', 'March 7', 'A dog gets lost in the big city', 'Poor Yeller')


insert into tickets(customer_id, total_number, theater_id, price, date_of_purchase, purchase_origin, movie_id)
values
('2', '4', '12', '12.99', 'March 8' 'online', '1'),
('1', '10', '127', '12.99', 'March 30', 'ticket counter','2')

insert into concessions(theater_id, food, drink, apparel, candy, beer, alcohol),
('2', 'popcorn','cherry slushie', 't-shirt', 'Skittles', 'none','Meltdown')
('1', 'pizza', 'sprite', 'none', 'Twix', 'Dos XX', 'Peach Margarita')

