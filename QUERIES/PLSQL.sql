
--EMPLOYEE ID SEQUENCE
create sequence "EMPLOYEE_ID_SEQ"
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
create sequence "TICKET_NUMBER_SEQ"
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
CREATE SEQUENCE "PASSENGER_ID_SEQ"
START WITH 1
MINVALUE 1 
MAXVALUE 999 
INCREMENT BY 1 
NOCACHE
ORDER
NOCYCLE
/

------------------------------------

--adding new passenger procedure
create or replace procedure "NEW_PASSENGER_PRO"
(passport_number IN VARCHAR2,
flight_code IN VARCHAR2,
firstname IN VARCHAR2,
lastname IN VARCHAR2,
homeaddress IN VARCHAR2,
phonenumber IN NUMBER,
p_gender IN VARCHAR2,
p_freqfdiscount IN VARCHAR2,
p_employeediscount IN VARCHAR2,
p_employeeid IN VARCHAR2,
p_class IN VARCHAR2,
p_seat IN VARCHAR2,
p_price IN NUMBER)
is
BEGIN


INSERT INTO PASSENGER_DATA ("PASSENGER_ID","PASSPORT_NUMBER","FLIGHT_CODE") VALUES 
(PASSENGER_ID_SEQ.nextval, passport_number,flight_code);
COMMIT;
INSERT INTO PASSENGER_DETAILS ("PASSENGER_ID","FNAME","LNAME","HOME_ADDRESS",
 "PHONE_NUMBER","GENDER","FREQF_DISCOUNT","EMPLOYEE_DISCOUNT","EMPLOYEE_ID") VALUES 
(PASSENGER_ID_SEQ.currval, firstname, lastname, homeaddress, phonenumber, 
 p_gender,p_freqfdiscount,p_employeediscount,p_employeeid);
COMMIT;
INSERT INTO TICKET ("TICKET_NUMBER", "FLIGHT_CODE", "PASSENGER_ID", "SEAT_NUM") VALUES 
(TICKET_NUMBER_SEQ.nextval, flight_code, PASSENGER_ID_SEQ.currval, p_seat);
COMMIT;
INSERT INTO TICKET_DATA ("TICKET_NUMBER","BOOKING_DATE","TRAVEL_DATE","CANCEL_DATE","CLASS","PRICE") VALUES 
(TICKET_NUMBER_SEQ.currval, sysdate, sysdate+7, '', p_class, p_price);
COMMIT;
END;
/
-- example run 1
BEGIN
   NEW_PASSENGER_PRO('A1234568','AI2014','Pranav','Arora', '123-sector-28-panchkula',9877012312,'M','N','N','','FIRST-CLASS','B021',12345);
END;

-- EXAMPLE RUN2

BEGIN
   NEW_PASSENGER_PRO('A1234568','LH9876','SAKSHAM','KAUSHAL', '45-sector-28-HIMACHAL',1234563121,'M','N','N','','FIRST-CLASS','B021',12347);
END;

BEGIN
   NEW_PASSENGER_PRO('A1234568','LH9876','AKSHAT','SHARMA', '7720 MCCALLUM BLVD, APT 1082, DALLAS, TX',9080367266,'M','N','N','','Economy','a023',15000);
END;


----------------------------------------------------------------------------------

-- NEW_EMPLOYEE_PRO created to manage employees


create or replace procedure "NEW_EMPLOYEE_PRO"
(airport_code IN VARCHAR2,
department_id IN NUMBER,
p_fname IN VARCHAR2,
p_lname IN VARCHAR2,
p_phone_num IN NUMBER,
p_age IN NUMBER,
p_gender IN VARCHAR2,
p_home_address IN VARCHAR2)
is
BEGIN
    INSERT INTO EMPLOYEE ("EMPLOYEE_ID","AIRPORT_CODE") VALUES 
    (EMPLOYEE_ID_SEQ.nextval, airport_code);
    COMMIT;
    
    INSERT INTO EMPLOYEE_DETAILS ("EMPLOYEE_ID","DEPARTMENT_ID","FNAME",
        "LNAME","PHONE_NUMBER","AGE","GENDER","HOME_ADDRESS")
    VALUES 
    (EMPLOYEE_ID_SEQ.currval, department_id,p_fname,p_lname,p_phone_num,p_age,p_gender,p_home_address);
    COMMIT;
END;
/;

BEGIN
   NEW_EMPLOYEE_PRO('SDF','118','Pratham','arora',5345679512,27,'M','731 Fondren, Houston, TX');
END;

----------------------------------------------------------------

--PROCEDURRE TO UPDATE THE SEATS LEFT 
-- UPDATE_SEATS_PRO
create or replace procedure "UPDATE_SEATS_PRO"
(p_flight_code IN VARCHAR2,
p_class IN VARCHAR2,
p_seat_num IN VARCHAR2)
is
begin
DECLARE
    T_AVAIL_SEATS number;
    AVAIL_ECO_SEATS number;
    AVAIL_BUS_SEATS number;
    AVAIL_FIR_SEATS number;
    FL_CLASS VARCHAR(30);
BEGIN
    SELECT AVAIL_SEATS INTO T_AVAIL_SEATS FROM CABIN_DATA WHERE FLIGHT_CODE = p_flight_code;
    SELECT AVAIL_ECONOMY_CLASS INTO AVAIL_ECO_SEATS FROM CABIN_DATA WHERE FLIGHT_CODE = p_flight_code;
    SELECT AVAIL_BUSINESS_CLASS INTO AVAIL_BUS_SEATS FROM CABIN_DATA WHERE FLIGHT_CODE = p_flight_code;
    SELECT AVAIL_FIRST_CLASS INTO AVAIL_FIR_SEATS FROM CABIN_DATA WHERE FLIGHT_CODE = p_flight_code;
    IF T_AVAIL_SEATS > 0 THEN
        dbms_output.put_line('ALL SEATS ARE FULL IN FLIGHT');
    ELSE
        IF p_class = 'economy' OR p_class = 'ECONOMY' OR p_class = 'ECO' THEN
            FL_CLASS:='AVAIL_ECONOMY_CLASS';
            IF AVAIL_ECO_SEATS <= 0 THEN
                dbms_output.put_line('ALL SEATS ARE FULL IN ECONOMY CLASS');
            ELSE
                UPDATE CABIN_DATA SET AVAIL_SEATS=AVAIL_SEATS-1,
                AVAIL_ECONOMY_CLASS=AVAIL_ECONOMY_CLASS-1 
                WHERE FLIGHT_CODE=p_flight_code;
                COMMIT;
             END IF;
        ELSIF p_class = 'BUSINESS' OR p_class = 'business' OR p_class = 'busi' THEN
            FL_CLASS:='AVAIL_BUSINESS_CLASS';
            FL_CLASS:='AVAIL_ECONOMY_CLASS';
            IF AVAIL_ECO_SEATS <= 0 THEN
                dbms_output.put_line('ALL SEATS ARE FULL IN BUSINESS CLASS');
            ELSE
                UPDATE CABIN_DATA SET AVAIL_SEATS=AVAIL_SEATS-1,
                AVAIL_BUSINESS_CLASS=AVAIL_BUSINESS_CLASS-1 
                WHERE FLIGHT_CODE=p_flight_code;
                COMMIT;
            END IF;
        ELSE 
            FL_CLASS:='AVAIL_FIRST_CLASS';
            IF AVAIL_ECO_SEATS <= 0 THEN
                dbms_output.put_line('ALL SEATS ARE FULL IN BUSINESS CLASS');
            ELSE
                UPDATE CABIN_DATA SET AVAIL_SEATS=AVAIL_SEATS-1,
                AVAIL_FIRST_CLASS=AVAIL_FIRST_CLASS-1 
                WHERE FLIGHT_CODE=p_flight_code;
                COMMIT;
             END IF;
        END IF;
    END IF;
END;
END;

-----------------------------------------------------------
create or replace procedure "REM_PASSENGER_PRO"
(p_passenger_id IN NUMBER,
p_ticket_number IN NUMBER)
is
begin
BEGIN
    DELETE FROM PASSENGER_DATA WHERE PASSENGER_ID=p_passenger_id;
    COMMIT;
    
    DELETE FROM PASSENGER_DETAILS WHERE PASSENGER_ID=p_passenger_id;
    COMMIT;
    
    DELETE FROM TICKET WHERE PASSENGER_ID=p_passenger_id;
    COMMIT;
    
    DELETE FROM TICKET WHERE TICKET_NUMBER=p_ticket_number;
    COMMIT;
END;
end;
/   


-- EXAMPLE RUN
BEGIN
   REM_PASSENGER_PRO(10,123);
END;

    create or replace procedure "fol"
    BEGIN
        dbms_output.put_line('helo');
    END;
    /