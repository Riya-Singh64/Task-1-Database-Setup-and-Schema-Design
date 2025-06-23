create database ecommerce;
use ecommerce;
create table customers(customerID int primary key, name varchar(25), email varchar(200), phone varchar(25));
create table products(productID int primary key, name varchar(25), price varchar(200), stock int);
create table orders(orderID int primary key, customerID int, orderdate date, totalamt decimal(10,2), 
foreign key (customerID) references customers(customerID));
create table OrderItems(OrderItemsID int primary key, orderID int, productID int, quantityID int,
price decimal(10,2), foreign key (orderID) references orders(orderID), foreign key (productID) references 
products(productID));
create table payments(paymentID int primary key, orderID int, paymentdate date, amount decimal(10,2), 
foreign key (orderID) references orders(orderID));