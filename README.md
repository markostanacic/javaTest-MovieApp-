<<<<<<< HEAD
# Cinema booking system

Site for booking cinema tickets.

Front-end: Jsp, bootstrap, jQuery

Back-end: Spring MVC.

DB: MySQL.

JPA: Hibernate.

Container: Tomcat 8

Build: Maven

### General setting

* for creation tables use .sql and .cvs files from   src/main/resources/sql.
  .sql files help you create necessary tables and .cvc files - fill them with information.

* appication.properties - file with DB settings ( db's name "cinema") and keys for social networks
  (user can login by Facebook or Twitter - Spring Social)
 
* package valueobjects - orderVo use for get data from view during the purchase, statistics - get data from admin panel
* ADMIN PANEL - you have to log in as admin ( user with ROLE_ADMIN) and at the index page choose "Admin panel" on submenu near your email address.
* app developed under Chrome 

### Description 
 
At the index page you can buy ticket to specific film (choose among 4) - choose date  and press buy. 
After on the concrete cinema page select today's session (In the cinema there are 2 halls and lots of sessions per day).
Choose free seats, do payment (in this project there is no real payment system or even check up with email - only form with HTML5 validation),and  get a print of tickets.




=======
# cinema-booking-system
learning Spring MVC
>>>>>>> 68adf42d574147b2b569f4219b708e6a8a6836a9
