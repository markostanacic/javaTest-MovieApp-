<h2>cinema-booking-system</h2>
<p>Site for booking tickets to the cinema.</p>
<p>Front-end: html, css, bootstrap, a little bit of jQuery.</p>
<p>Back-end: Java, Spring MVC.</p>
<p>DB: MySQL.</p>
<p>JPA: Hibernate.</p>
<p>Container: Tomcat 8</p>
<p>Build: Maven</p>
<p>for creation tables use .sql and for insertion use .cvs files from   src/main/resources/sql.</p>
<p>Appication.properties - file with DB settings ( db's name "cinema") and keys for social networks</p>
 <p>(user can login by Facebook or Twitter - Spring Social)</p>
 <p>package valueobjects - orderVo use for get data from view during the purchase, statistics - get data to admin from admin panel</p>
 
 
<p>At the index page you can buy ticket to specific film ( at the moment - 4) - choose date due to <select> and press buy. 
After on the concrete cinema page select today's session ( cinema consists of 2 hall and can have a lot of sessions per day).
Choose free seats, do payment ( in this project there is no real payment system or even check up with email - 
only form with HTML5 validation), get ticket.</p>


