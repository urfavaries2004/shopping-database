create table Customer_5 
( 
Customer_id int primary key, 
Customer_name varchar2(30), 
Customer_phn varchar2(10), 
Customer_address varchar2(30) 
);

insert into Customer_5 values(1001,'Chandraye Saha',8017117752,'Kolkata');

insert into Customer_5 values(1002,'Chandan Saha',9831202776,'Mumbai');

insert into Customer_5 values(1003,'Sujata Saha',9830605304,'Delhi');

insert into Customer_5 values(1004,'Ranajit Saha',8277661234,'Bangalore');

insert into Customer_5 values(1005,'Krishna Roy',9276124533,'Chennai');

select * from Customer_5;

create table Product_5 
(  
Product_id int primary key, 
Product_name varchar2(20), 
Product_type varchar2(20), 
Product_company varchar2(30), 
Product_date date, 
Product_price number(38) 
);

insert into Product_5 values(2001,'Cake','Grocery','Britania','25-NOV-23',60);

insert into Product_5 values(2002,'Biscuits','Grocery','Marie','22-OCT-23',100);

insert into Product_5 values(2003,'Toothpaste','Health','Colgate','10-AUG-23',110);

insert into Product_5 values(2004,'Soap','Health','Dettol','11-NOV-23',10);

insert into Product_5 values(2005,'Chocolate','Eatables','Cadbury','09-NOV-23',100);

select * from Product_5;

create table Employee_5 
( 
Employee_id int primary key, 
Employee_name varchar2(30), 
Employee_detail varchar2(30), 
Employee_salary number(6) 
);

insert into Employee_5 values(3001,'Rajat Kumar','hard working',2000);

insert into Employee_5 values(3002,'Sneha Das','energetic',1000);

insert into Employee_5 values(3003,'Anushka Maji','focused',1500);

insert into Employee_5 values(3004,'Beena Saha','diligent',1700);

insert into Employee_5 values(3005,'Veer Kumar','active',1300);

select * from Employee_5;

create table Supplier_5 
( 
Supplier_id int primary key, 
Supplier_name varchar2(30), 
Supplier_phn varchar2(10), 
Supplier_address varchar2(30) 
);

insert into Supplier_5 values(4001,'Romen Roy',8856781239,'Kolkata');

insert into Supplier_5 values(4002,'Tarini Ghosal',9022432912,'Chennai');

insert into Supplier_5 values(4003,'Parul Mitra',8295557689,'Mumbai');

insert into Supplier_5 values(4004,'Mitul Ghosh',8852222239,'Delhi');

insert into Supplier_5 values(4005,'Aarya Sahal',9833343212,'Bangalore');

select * from Supplier_5;

create table Order_list_5 
( 
Order_id int primary key, 
Order_date date, 
Sup_id number(10), 
Pro_id number(10),  
foreign key(Sup_id) references Supplier_5(Supplier_id), 
foreign key(Pro_id) references Product_5(Product_id)  
);

insert into Order_list_5 values(5001,'25-NOV-23',4001,2002);

insert into Order_list_5 values(5002,'24-NOV-23',4002,2004);

insert into Order_list_5 values(5003,'23-NOV-23',4003,2003);

insert into Order_list_5 values(5004,'22-NOV-23',4004,2001);

insert into Order_list_5 values(5005,'21-NOV-23',4005,2005);

select * from Order_list_5;

create table Shop_Store_5 
( 
Store_id int primary key,  
Store_name varchar2(30), 
Store_phn varchar2(10), 
Store_address varchar2(30) 
);

insert into Shop_Store_5 values(6001,'Milan Stores',9812344542,'Kolkata');

insert into Shop_Store_5 values(6002,'Aaashirbaad Stores',8865112233,'Delhi');

insert into Shop_Store_5 values(6003,'Crawford Market',802111234,'Mumbai');

insert into Shop_Store_5 values(6004,'Ritu Kumar Co.',8277771234,'Bangalore');

insert into Shop_Store_5 values(6005,'Saravana Stores',9825341001,'Chennai');

select * from Shop_Store_5;

create table Cart_5( 
Transaction_id int primary key, 
p_id int, 
c_id int, 
e_id int, 
s_id int, 
quantity number(10),  
foreign key(p_id) references Product_5(Product_id), 
foreign key(c_id) references Customer_5(Customer_id), 
foreign key(e_id) references Employee_5(Employee_id), 
foreign key(s_id) references Shop_Store_5(Store_id) 
);

insert into Cart_5 values(7001,2002,1001,3005,6001,2);

insert into Cart_5 values(7002,2004,1002,3001,6003,5);

insert into Cart_5 values(7003,2003,1003,3002,6002,7);

insert into Cart_5 values(7004,2001,1004,3004,6004,1);

insert into Cart_5 values(7005,2005,1005,3003,6005,10);

select * from Cart_5;

select Customer_name from Customer_5 where Customer_name LIKE "%SAHA%";

select Customer_name from Customer_5 where Customer_name LIKE '%SAHA%';

select name,address from Customer_5;

select Customer_name,Customer_address from Customer_5;

select count(Customer_name) from Customer_5 where Customer_name LIKE '%Saha%';

select count(Product_name),Product_type from Product_5 group by Product_type;

select MAX(Product_price) from Product_5;

select C.Customer_name,S.Store_name from Customer_5 C, Shop_Store_5 S where C.Customer_address=S.Store_address;

