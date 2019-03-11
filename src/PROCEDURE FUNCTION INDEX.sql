 /*explain select employeeNumber,firstName,lastName from employees
force index(jtIndx) where jobTitle='sales Rep';

show indexes from employees;

select employeeNumber,lastname,firstname from employees force index(jtIndx) where jobTitle='Sales Rep';

**********************************************************************

create procedure GetAllProducts()

 select * from products;

call GetAllProducts(); 

************************************************************************

create procedure countEmployees()

select count(*) from employees;

call countEmployees();

**************************************************************************

Set @A=10;

select @A;

***************************************************************************

create procedure GetOfficeByCountry(IN cn VARCHAR(255))
select * from offices where country=cn;
employeesemployees
call GetOfficeByCountry('USA');

***************************************************************************


create procedure GetEmployee(IN c VARCHAR(255))
select count(*) from employees e join offices o on e.officeCode=o.officeCode where o.country=c;
call GetEmployee('USA');

****************************************************************************


create procedure CountOrderByStatus(IN os VARCHAR(25),OUT total int)
select count(orderNumber)Into total from orders where status=os;

call CountOrderByStatus('Cancelled',@total);
select @total;

******************************************************************************

Function .

///////////////////    */

/*create function Test(A int) Returns int
Return A*A

select Test(20)*/


create function CustomerLevel(pc double) Returns Varchar(10)
if pc>50000 then
 return 'PLATINUM';
 esle if(pc<=50000 AND pc>=10000)then
   return 'GOLD';
elseif(pc<10000)then 
   return 'SILVER';
END IF;








 
 
 create PROCEDURE countoffices(IN cn VARCHAR(255))
 select count(*) from employees e join offices o on e.officeCode=o.officeCode where o.country=cn;
 
 call countoffices('USA');
 
 
 create procedure countorderbystatus(IN os varchar(25),OUT total INT)
 
 
 select count(ordernumber) into total from orders where status=os;
 
 call countorderbystatus('Shipped', @total);
 SELECT @total;
 


create table employees_audit(
id int auto_increment primary key,
employeeNumber int not null,
lastName varchar(50) not null,
changeDat datetime default null,
action varchar(50) default null);

create Trigger before_employee_update
Before Update on employees

for each row
insert into employees_audit set action='update',
employeeNumber=OLD.employeeNumber,
lastName=OLD.LASTNAME,
ChangeDat=NOW();

SHOW Triggers;
 
UPDATE Employees set lastName='RAJ' where employeeNumber=1702;




