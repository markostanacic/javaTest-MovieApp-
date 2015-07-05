# Cinema-booking-system

Site for booking tickets to the cinema.

Front-end: jsp, bootstrap, jQuery

Back-end: spring MVC.

DB: MySQL.

JPA: Hibernate.

Container: Tomcat 8

Build: Maven

## General setting

* For creation tables use .sql and for insertion use .cvs files from   src/main/resources/sql.


Appication.properties - file with DB settings ( db's name "cinema") and keys for social networks
 (user can login by Facebook or Twitter - Spring Social)
 package valueobjects - orderVo use for get data from view during the purchase, statistics - get data to admin from admin panel</p>
 
 
At the index page you can buy ticket to specific film ( at the moment - 4) - choose date due to <select> and press buy. 
After on the concrete cinema page select today's session ( cinema consists of 2 hall and can have a lot of sessions per day).
Choose free seats, do payment ( in this project there is no real payment system or even check up with email - 
only form with HTML5 validation), get ticket.


