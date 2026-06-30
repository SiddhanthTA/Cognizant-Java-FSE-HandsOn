-- MONTHLY INTEREST 

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN

UPDATE Accounts
SET Balance=Balance+(Balance*0.01)
WHERE AccountType='Savings';

COMMIT;

END;
/

--EMPLOYEE BONUS 

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus
(
deptName IN VARCHAR2,
bonusPercentage IN NUMBER
)
IS
BEGIN

UPDATE Employees
SET Salary=Salary+(Salary*bonusPercentage/100)
WHERE Department=deptName;

COMMIT;

END;
/

-- TRANSFER FUNDS

CREATE OR REPLACE PROCEDURE TransferFunds
(
fromAccount IN NUMBER,
toAccount IN NUMBER,
amount IN NUMBER
)
IS

currentBalance NUMBER;

BEGIN

SELECT Balance
INTO currentBalance
FROM Accounts
WHERE AccountID=fromAccount;

IF currentBalance>=amount THEN

UPDATE Accounts
SET Balance=Balance-amount
WHERE AccountID=fromAccount;

UPDATE Accounts
SET Balance=Balance+amount
WHERE AccountID=toAccount;

COMMIT;

DBMS_OUTPUT.PUT_LINE('Transfer Successful');

ELSE

DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

END IF;

END;
/

-- EXECUTIONS

BEGIN
ProcessMonthlyInterest;
END;
/

BEGIN
UpdateEmployeeBonus('HR',10);
END;
/

BEGIN
TransferFunds(201,202,2000);
END;
/