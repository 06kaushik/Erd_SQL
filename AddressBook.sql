create database address_book;
use address_book;
CREATE table AddressBook (
FirstName     varchar(45) Not Null,
LastName      varchar(45) Not Null,
Address       varchar(45) ,
City          varchar(45) ,
State         varchar(45) ,
ZipCode       varchar(45) ,
PhoneNumber   varchar(45) Primary Key ,
EmailId       varchar(45));
 
Select * From AddressBook;
Insert into AddressBook (FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, EmailId) 
values     ("Himanshu", "Kaushik", "Model Town", "Delhi", "Delhi", 110018, 9898787656, "kaushik@gmail.com"),
	   ("Ritik", "Chauhan", "Janakpuri", "Delhi", "Delhi", 110020, 6698787656, "ritik.var@gmail.com"),
	   ("Naman", "Varshney", "Ansal Plaza", "Aligarh", "Uttar Pradesh", 290880, 8987687656, "varshney@gmail.com"),
	   ("Jay", "Yadav", "Sec 62", "Noida", "Uttar Pradesh", 202389, 8768787656, "jay.yadav09@gmail.com"),
	   ('Disha','Rawat','Capt Town','Bangalore','Karnataka','748994','847847838','rawat@gmail.com');
Update AddressBook set EmailId = "ritikvar.gnail.com" where FirstName = 'Ritik';
Delete From AddressBook where FirstName='Disha';
Select * From AddressBook;
Select FirstName From AddressBook where City = 'Bangalore' or State = 'Delhi';
Select Count(City) From AddressBook;
Select Count(State) From AddressBook;
Insert into AddressBook (FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, EmailId) 
values      ('Seema','Rawat','New gali', 'Bangalore','Karnataka' ,'878767','8767654356','seema@yahoo.com'),
	    ('Anushka','Dhadheech','Kothrud','Pune','Maharashtra','400138','9890878512','anushka05@gmail.com');
Select FirstName From AddressBook where City = 'Delhi' order by FirstName;
Select FirstName From AddressBook where City = 'Pune' order by FirstName ASC;
Select FirstName From AddressBook where City = 'Bangalore' order by FirstName DESC;
Alter table AddressBook add AddressBookName varchar(45) Not Null after EmailId;
Alter table AddressBook add AddressBookType varchar(45) Not Null after AddressBookName; 
Update AddressBook set AddressBookName= 'AddressBook1' where FirstName  = 'Ritik' or FirstName  = 'Anushka';
Update AddressBook set AddressBookName ='AddressBook2' where FirstName  = 'Jay' or FirstName  = 'Naman' or FirstName  = 'Seema' or FirstName  = 'Himanshu';
Update AddressBook set AddressBookType = 'Family' where FirstName  = 'Seema'  or FirstName  = 'Anushka';
Update AddressBook set AddressBookType = 'Friends' where FirstName  = 'Himanshu' or FirstName  = 'Ritik';
Update AddressBook set AddressBookType = 'Profession' where FirstName  = 'Naman' or FirstName  = 'Jay'; 
Select Count(FirstName) From AddressBook where AddressBookType = 'Family' order by FirstName;
Select Count(FirstName) From AddressBook where AddressBookType = 'Friends' order by FirstName;
Select Count(FirstName) From AddressBook where AddressBookType = 'Profession' order by FirstName;
update  AddressBook set AddressBookName = "AddressBook1" where FirstName = "Ritik" ;
update  AddressBook set AddressBookName = "AddressBook1" where FirstName = "Anushka" ;
desc addressbook;