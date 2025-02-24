-- INSERT
-- INSERTING IN ALL THE COLUMNS
-- INSERTING IN SPECIFIC COLUMNS
-- 1. INSERTING IN ALL THE COLUMNS

DESC employees;
-- INSERTING IN ALL THE COLUMNS
INSERT INTO employees VALUES(101,"POOJA","SALES",37000);
INSERT INTO employees VALUES(102,"POOJA","SALES",37000);
-- SELECT  (DQL)
SELECT * FROM EMPLOYEES;
-- * -> ALL COLUMNS
SELECT ENAME FROM EMPLOYEES;

-- INSERTING MULTIPLE RECORDS
INSERT INTO EMPLOYEES VALUES(103,"NAINA","HR",50000),(104,"SHILPA","IT",40000),(105,"SURAJ","HR",55000),(106,"PAWAN","SALES",35000);

-- 2. INSERTING IN SPECIFIC COLUMNS
INSERT INTO employees(EID,ENAME) VALUES(107,"PRIYA");

-- INSERTING DATA FROM ONE TABLE TO ANOTHER TABLE

SELECT * FROM EMP;
CREATE TABLE EMP2(EID INT,ENAME VARCHAR(50),DEPT VARCHAR(30),SALARY FLOAT);
SELECT * FROM EMP2;
INSERT INTO EMP2 VALUES(110,"RAM","HR",62000);

-- INSERT THE DATA OF EMP TO THE EMP2 TABLE  -> EMP - EMP2
INSERT INTO EMP2
SELECT * FROM EMP;

-- UPDATE
SELECT * FROM EMP;

UPDATE emp
SET SALARY=50000
WHERE ENAME="suraj";

UPDATE EMP
SET ENAME="pooja",SALARY=40000
WHERE EID=102;

set sql_safe_updates=0;  -- 0-> off and 1 ->on

-- DELETE
-- DELETING SPECIFIC DATA (RECORDS)

SELECT * FROM EMP2;

DELETE FROM EMP2;

DELETE FROM EMP2
WHERE EID=107 OR EID=106 OR EID=105;


