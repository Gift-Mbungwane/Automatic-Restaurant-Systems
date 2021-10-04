# Automatic Restaurant Managment System
System for automatic management of a restaurant room, registering orders and reservations made by customers, as well as calculating payments, printing reports, keeping statistics of the most popular hours and updating databases (using JDBC).

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Features](#features)
* [Screenshots](#screenshots)

## General info
ARMS is supposed to be a system for efficient service in a restaurant. The system components are: a database that stores information about employees, orders, products and an employee application which enable to control over restaurant rooms, realize orders and bookings, making manager functions.  The final effect of the created software is an improvement the work of users application by introducing an automated environment. This allow to increase speed of performed operations and avoid errors caused by different factors.


Entity Relationship Diagram
![screenshot](./png/erd.PNG)

## Technologies
* Java - JDK version 1.8
* JDBC - MySQL Connector/J version 5.1.47
* JFreeChart - version 0.9.21
* JCommon - version 0.9.7
* Rs2xml

## Features
* logging in/out
* creating an order/a booking
* merging orders/splitting an order
* adding/deleting products from order
* finalizing order
* editing the database of products, tables, employees, menu
* making an inventory, a work schedule, a daily report
* displaying 'popular hours' statistics

## Screenshots
![screenshot](./png/login.png)
![screenshot](./png/view.PNG)
![screenshot](./png/menu.PNG)
![screenshot](./png/merge.PNG)
![screenshot](./png/split.PNG)
![screenshot](./png/finalize.PNG)
![screenshot](./png/calendar.PNG)
![screenshot](./png/booking.png)
![screenshot](./png/db.PNG)
![screenshot](./png/inventory.PNG)
![screenshot](./png/report.PNG)
![screenshot](./png/chart.PNG)
