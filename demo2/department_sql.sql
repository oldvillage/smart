UPDATE user set u_phone=CONCAT(SUBSTR(u_phone,1,3),'*****',SUBSTR(u_phone,9,3));
SELECT de.de_name,COUNT(us.u_id) from user us LEFT JOIN department de ON de.de_id = us.u_de_id GROUP BY de.de_name
SELECT us.u_name,us.u_age,de.de_name from department de LEFT JOIN user us ON de.de_id = us.u_de_id where NOT EXISTS(select * from user where us.u_de_id=u_de_id and u_age<us.u_age)
select u_phone FROM user where u_phone LIKE "17%"