SELECT customer_id, first_name, last_name, account_type, balance
FROM customers 
JOIN accounts A ON customer.customer_id = accounts.customer_id
WHERE account_type ='Savings';



SELECT * FROM Transactions
WHERE account_id = 1
ORDER BY transaction_date DESC;


SELECT SUM(balance) AS total_balance
FROM Accounts
WHERE customer_id = 1;


------------------------------ / joins  /---------------------------------------------------------


SELECT 
    customer_id,
    account_id,
    account_type,
    balance
FROM 
    customers
JOIN 
    accounts  ON customers.customer_id = accounts.customer_id;



SELECT 
    transaction_id,
    transaction_type,
    trans_amount,
    transaction_date
FROM 
    Transactions 
JOIN 
    accounts  ON transactions.account_id = accounts.account_id
JOIN 
    customers  ON accounts.customer_id = customers.customer_id;
	
    ------------------------------ / views /--------------------------------------------------------------
    
CREATE VIEW AccountBalances AS 
SELECT 
	customer_id,
    account_id,
    account_type,
    balance
FROM 
    customers 
JOIN 
    accounts  ON customer.customer_id = accounts.customer_id;

CREATE VIEW RecentTransactions AS
SELECT 
    customer_id,
    transaction_id,
    transaction_type,
    trans_Amount,
    transactions_date
FROM 
    Transactions 
JOIN 
    accounts  ON transactions.account_id = accounts.account_id
JOIN 
    customers  ON accounts.customer_id = customers.customer_id
ORDER BY 
    transaction_date DESC;


--------------------------------------------------------------------------------------------------------------------------

SELECT * FROM Branches;
 
 delimiter $$
 create procedure get_customers()
 begin
   select*from customers;
 end $$
 delimiter ;
 
call get_customers(); 
 
 delimiter $$
 create procedure get_transaction()
 begin
   select * from transactions;
end $$
delimiter ;

call get_transactions();

delimiter $$
create procedure find (In id int)
begin
  select * from customers
  where customer_id =id ;
  end $$
  delimiter ;
  
  
  call find();