create table Calendar
(
	listing_id int NOT NULL,
	date date NOT NULL, 
	available bit NOT NULL,
	price float,
	PRIMARY KEY(listing_id, date) 
)

create table Listings
(
	id int PRIMARY KEY, 
	listing_url varchar(MAX) NOT NULL,
	name varchar(MAX) NOT NULL,
	number_of_bedrooms int,
	description varchar(MAX),
	cancellation_policy varchar(MAX),
	review_scores_value float, 
	reviews_per_month float, 
	host_id int NOT NULL,
	host_name varchar(MAX)
)	

create table Reviews
(
	id int PRIMARY KEY,
	listing_id int,
	comments varchar(MAX)
)

create table Bookings
(
	id int PRIMARY KEY, 
	listing_id int NOT NULL,
	guest_name varchar(MAX) NOT NULL,
	stay_from date NOT NULL,
	stay_to date NOT NULL,
	number_of_guests int NOT NULL
)

alter table Calendar
add foreign key (listing_id) references Listings(id)
 
alter table Reviews
add foreign key (listing_id) references Listings(id)

alter table Bookings
add foreign key (listing_id) references Listings(id)

