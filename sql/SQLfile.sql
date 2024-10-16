use bank_pro;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(255),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    dob DATE,
    branch_name VARCHAR(100)
);

select * from customers;

drop table Customers;
drop table loans;
drop table branches;
drop table accounts;


CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(50),
    balance DECIMAL(15, 2),
    opened_date date,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


select * from accounts;

drop table Accounts;
drop table transactions;

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(50), -- 'deposit', 'withdrawal', 'transfer'
    amount DECIMAL(15, 2),
    transaction_date date,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

ALTER TABLE transactions change  amount trans_amount decimal(15, 2);

alter table transactions drop column Deposit_amount;

select * from Transactions;

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_type VARCHAR(50), -- 'personal', 'home', 'car', etc.
    loan_amount DECIMAL(15, 2),
    interest_rate DECIMAL(5, 2),
    loan_term INT, -- In months
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


select * from Loans;


CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    customer_id INT,
    branch_name VARCHAR(100),
    branch_address VARCHAR(255),
    branch_phone VARCHAR(15),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


select * from Branches;

