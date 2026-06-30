
-- DISCOUNT LOAN INTEREST
SET SERVEROUTPUT ON;

BEGIN

FOR customerRecord IN
(
    SELECT CustomerID
    FROM Customers
    WHERE Age>60
)
LOOP

UPDATE Loans
SET InterestRate=InterestRate-1
WHERE CustomerID=customerRecord.CustomerID;

END LOOP;

DBMS_OUTPUT.PUT_LINE('Interest updated.');

END;
/


-- VIP CUSTOMERS 

BEGIN

FOR customerRecord IN
(
    SELECT CustomerID
    FROM Customers
    WHERE Balance>10000
)
LOOP

UPDATE Customers
SET IsVIP='TRUE'
WHERE CustomerID=customerRecord.CustomerID;

END LOOP;

DBMS_OUTPUT.PUT_LINE('VIP Customers Updated');

END;
/


-- LOAN REMINDER

BEGIN

FOR loanRecord IN
(
SELECT
CustomerID,
DueDate
FROM Loans
WHERE DueDate<=SYSDATE+30
)
LOOP

DBMS_OUTPUT.PUT_LINE(
'Reminder sent to Customer '
||loanRecord.CustomerID
||' Loan Due on '
||loanRecord.DueDate
);

END LOOP;

END;
/



