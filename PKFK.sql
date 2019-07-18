create table customers(
	customer_number int NOT NULL auto_increment,
    fullname nvarchar(50) not null unique,
    address nvarchar(500) not null,
    email nvarchar(50) not null unique,
    phone varchar(15) not null unique,
    primary key(customer_number)
);

create table accounts(
	account_number int NOT NULL auto_increment,
    account_type varchar(10) default 'Standard',
    open_date date,
    balance decimal(10,2) default 0,
    customer_numer int references customers(customer_number),
    primary key(account_number)
);

create table transactions(
	tran_number int not null auto_increment,
    account_number int references accounts(account_number),
    tran_date date,
    amounts decimal(10,2) default 0,
    descriptions nvarchar (50),
    primary key(tran_number)
);

