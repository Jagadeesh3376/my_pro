use bank_pro;

INSERT INTO customers (customer_id, first_name, last_name, address, phone_number, email, dob,branch_name)
VALUES 
('1', 'John', 'raj', '123 Main St', '123-456-7890', 'john.raj@gmail.com', '1980-01-01',"pallavaram"),
('2', 'ram', 'kumar', '12 cross St', '987-654-3210', 'ramkumar5@yahoo.com', '1981-01-10',"thiruvanmyur"),
('3', 'ravi', 'krishna', '6 main St', '867-065-4310', 'ravi78krish@gmail.com', '1979-02-22',"vellolre"),
('4', 'hari', 'krishna', '78 kumar St', '786-556-7890', 'harikrishna@gmail.com', '1978-12-21',"trichy"),
('5', 'madhan', 'kumar', '28 gandhi St', '543-678-1290', 'madhankumar56@yahoo.com', '1981-06-23',"pallikaranai"),
('6', 'rakesh', 'kumar', '12 nehru St', '678-890-6750', 'rakesh89@gmail.com', '1982-07-07',"tambaram"),
('7', 'ravi', 'raj', '34 bharathidasan St', '567-876-5890', 'raviraj78@yahoo.com', '1978-08-09',"madipakam"),
('8', 'sampath', 'raj', '03 ravisastari St', '555-123-4870', 'sampath678@gmail.com', '1982-06-03',"medavakam"),
('9', 'rajesh', 'kana', '21 greams St', '556-124-8976', 'rajesjana@yahoo.com', '1983-09-07',"chrompet"),
('10', 'ramesh', 'kanan', '32 tagore St', '786-567-7890', 'rameshkana45@example.com', '1978-09-10',"porur")
;


INSERT INTO accounts (account_id, customer_id, account_type, balance, opened_date)
VALUES 
(0001, 1, 'Savings', 5000.00, current_date()),
(0002, 2, 'Savings', 8000.00, current_date()),
(0003, 3, 'Savings', 6000.00,current_date()),
(0004, 4, 'Savings', 4000.00,current_date()),
(0005, 5, 'Savings', 9000.00,current_date()),
(0006,6,'Savings', 1000.00,current_date()),
(0007,7,'Savings',2000.00,current_date())
;

drop table transactions;

drop table accounts;




INSERT INTO Transactions (transaction_id, account_id, transaction_type, trans_amount,transaction_date)
VALUES 
(321, 1, 'deposit', 1000.00, current_date()),
(322, 1, 'deposit', 5000.00, current_date()),
(323, 3, 'deposit', 3000.00,current_date()),
(324, 3, 'deposit', 4000.00, current_date()),
(325, 5, 'deposit', 6000.00, current_date())
;


INSERT INTO Loans (loan_id,customer_id,loan_type,loan_amount,interest_rate,loan_term,start_date ,end_date )
VALUES 
(4501,1,"deposit",8000,1,2,'2024-09-01', '2054-09-01'),
(4502,1,"credit",7000,1,2,'2024-07-19', '2054-07-19'),
(4503,2,"deposit",9000,2,4,'2024-11-12', '2054-11-12'),
(4504,1,"deposit",4000,.5,2,'2024-10-21', '2054-10-21'),
(4505,3,"credit",6000,1,4,'2024-06-11', '2054-06-11'),
(4506,4,"deposit",3000,2,4,'2024-05-22', '2054-05-22'),
(4507,5,"deposit",6000,1,3,'2024-02-23', '2054-02-23'),
(4508,6,"credit",9000,1,4,'2024-03-09', '2054-03-09') 
;


INSERT INTO Branches( branch_id ,customer_id ,branch_name, branch_address, branch_phone)
VALUES
(01,1,"pallavaram",'123 Main St',555-222-3402),
(02,2,"thiruvanmyur",'12 cross St',555-232-4302),
(03,3,"vellolre",'6 main St',555-242-5402),
(04,4,"trichy",'78 kumar St',555-212-0002),
(05,5,"pallikaranai",'28 gandhi St',555-262-3982),
(06,6,"tambaram",'12 nehru St',515-202-3602),
(07,7,"madipakkam",'34 bharathidasan St',555-342-3062),
(08,8,"medavakam", '03 ravisastari St',666-122-8802),
(09,9,"chrompet",'21 greams St',590-122-3652),
(10,10,"porur",'32 tagore St',566-267-3802)
;


