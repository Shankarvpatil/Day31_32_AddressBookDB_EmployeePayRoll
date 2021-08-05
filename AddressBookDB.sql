show databases;
UC1

CREATE DATABASE AddressBookService;


USE AddressBookService;


SELECT DATABASE ();


UC2


CREATE TABLE  AddressBook
(
first name VARCHAR (20) NOT NULL,
last name VARCHAR (20) NOT NULL,
address VARCHAR (150) NOT NULL,
city VARCHAR (50) NOT NULL,
state VARCHAR (50) NOT NULL,
zip code INT UNSIGNED NOT NULL AUTO_INCREMENT,
phone number INT (10),
emailid VARCHAR (50) NOT NULL
);

DESCRIBE AddressBook;


UC3
  

INSERT INTO AddressBook (first name, last name, address, city, state, zip code, phone number, emailid) VALUES
('Nethaji', 'Ch', 'HiTech City', 'Hyderabad', 'Telangana', 741258, 9876543210, 'nethaji@gmail.com'),
('Vinod', 'Kumar', 'WhiteField', 'Bangalore', 'Karnataka', 641553, 98756878210, 'vinod@gmail.com'),
('Dinesh', 'K', 'Madhapur', 'Hyderabad', 'Telangana', 741248, 9854627895, 'dinesh@gmail.com'),
('Naveen', 'Kumar', 'Chepauk', 'Chennai', 'TamilNadu', 541218, 9878552345, 'naveen@gmail.com'),
('Prabhas', 'Raju', 'Jubliee Hills', 'Hyderabad', 'Telangana', 741358, 7354686538, 'prabhas@gmail.com');

SELECT * FROM AddressBook;

UC4

UPDATE AddressBook SET emailid = 'nethaji55@gmail.com' WHERE first name = 'Nethaji';

SELECT * FROM AddressBook;


UC5

DELETE FROM AddressBook WHERE first name = 'Nethaji';

SELECT * FROM AddressBook;


UC6

SELECT first name FROM AddressBook WHERE city = 'Hyderabad' OR state = 'Telangana';


UC7

SELECT COUNT (first name) FROM AddressBook WHERE city = 'Hyderabad' OR state = 'Telangana'; 


UC8 

SELECT * FROM AddressBook WHERE city = 'Hyderabad' ORDER BY first name;

UC9 


ALTER TABLE AddressBook 
ADD  type VARCHAR(150),
	name VARCHAR(100)
UPDATE AddressBook SET type = 'Friend', AddressBookName = 'FriendsBook' where firstname in ('Nethaji','Vinod','Dinesh','Kiran');
UPDATE AddressBook SET type = 'Family', AddressBookName = 'FamilyBook' where firstname in ('Suresh','Prabhas');
UPDATE AddressBook SET type = 'Profession', AddressBookName = 'Office' where firstname = ('Akhil');
select * from AddressBook


UC10

SELECT COUNT(firts name) FROM AddressBook WHERE type = 'Friend';


UC11

INSERT INTO AddressBook (first name, last name, address, city, state, zip code, phone number, emailid, type ) VALUES
('Suresh', 'T', 'HiTech City', 'Hyderabad', 'Telangana', 568974, 9687451236, 'suresh@gmail.com', 'Family');

INSERT INTO AddressBook (first name, last name, address, city, state, zip code, phone number, emailid, type) VALUES
('Kiran' , 'K', 'Bandra', 'Mumbai', 'Maharastra', 654987, 9863256324, 'kiran@gmail.com', 'Friend');
