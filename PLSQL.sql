
--EMPLOYEE ID SEQUENCE
create sequence "EMPLOYEE_ID"
start with 0
increment by 1
maxvalue 99999
minvalue 00000
nocache
nocycle
noorder
/   
------------------------

--TICKET NUMBER SEQUENCE
create sequence "TICKET_NUMBER"
start with 123
increment by 1
maxvalue 99999
minvalue 000000000
nocache
nocycle
noorder
/   
---------------------------------

--PASSENEGR ID SEQUENCE
CREATE SEQUENCE "PASSENGER_ID"
START WITH 1
MINVALUE 1 
MAXVALUE 999 
INCREMENT BY 1 
NOCACHE
ORDER
NOCYCLE
/
