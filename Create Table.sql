CREATE table "CITY" (
    "CITY_CODE"  VARCHAR2(9) NOT NULL,
    "CITY_NAME"  VARCHAR2(20),
    "STATE"      VARCHAR2(25),
    "COUNTRY"    VARCHAR2(30),
    constraint  "CITY_PK" primary key ("CITY_CODE")
)

CREATE table "AIRPORT" (
    "AIRPORT_CODE" VARCHAR2(9) NOT NULL,
    "CITY_CODE"    VARCHAR2(9) NOT NULL,
    "AIRPORT_NAME" VARCHAR2(50),
    constraint  "AIRPORT_PK" primary key ("AIRPORT_CODE")
);

ALTER TABLE "AIRPORT" ADD CONSTRAINT "AIRPORT_FK" 
FOREIGN KEY ("CITY_CODE")
REFERENCES "CITY" ("CITY_CODE")
ON DELETE CASCADE;

CREATE table "AIRLINE" (
    "AIRLINE_ID"   VARCHAR2(3) NOT NULL,
    "AIRLINE_CODE" VARCHAR2(3) NOT NULL,
    "AIRLINE_NAME" VARCHAR2(50),
    constraint  "AIRLINE_PK" primary key ("AIRLINE_CODE")
)
/

CREATE table "DOCKED_AIRLINE" (
    "AIRLINE_CODE" VARCHAR2(3) NOT NULL,
    "AIRPORT_CODE" VARCHAR2(9) NOT NULL,
    constraint  "DOCKED_AIRLINE_PK" primary key ("AIRLINE_CODE")
)
/
ALTER TABLE "DOCKED_AIRLINE" ADD CONSTRAINT "DOCKED_AIRLINE_FK_APC" 
FOREIGN KEY ("AIRPORT_CODE")
REFERENCES "AIRPORT" ("AIRPORT_CODE")
ON DELETE CASCADE
/
ALTER TABLE "DOCKED_AIRLINE" ADD CONSTRAINT "DOCKED_AIRLINE_FK_ALC" 
FOREIGN KEY ("AIRLINE_CODE")
REFERENCES "AIRLINE" ("AIRLINE_CODE")
ON DELETE CASCADE
/


CREATE table "FLIGHT_DATA" (
    "FLIGHT_CODE"  VARCHAR2(10) NOT NULL,
    "SOURCE"       VARCHAR2(9) NOT NULL,
    "DESTINATION"  VARCHAR2(9) NOT NULL,
    "DURATION"     VARCHAR2(5),
    "ARRIVAL"      VARCHAR2(10),
    "DEPARTURE"    VARCHAR2(10),
    "LAYOVER_TIME" VARCHAR2(10),
    "NUM_STOPS"    VARCHAR2(10),
    "AIRLINE_CODE" VARCHAR2(3) NOT NULL,
    constraint  "FLIGHT_DATA_PK" primary key ("FLIGHT_CODE")
)
/
ALTER TABLE "FLIGHT_DATA" ADD CONSTRAINT "FLIGHT_DATA_FK" 
FOREIGN KEY ("AIRLINE_CODE")
REFERENCES "AIRLINE" ("AIRLINE_CODE")
ON DELETE CASCADE
/


CREATE table "CABIN_DATA" (
    "FLIGHT_CODE"          VARCHAR2(10) NOT NULL,
    "TOTAL_SEATS"          NUMBER(3), 
	"AVAIL_SEATS"          NUMBER(3), 
    "TOTAL_ECONOMY_CLASS"  NUMBER(3),
    "AVAIL_ECONOMY_CLASS"  NUMBER(3),
    "TOTAL_BUSINESS_CLASS" NUMBER(3),
    "AVAIL_BUSINESS_CLASS" NUMBER(3),
    "TOTAL_FIRST_CLASS"    NUMBER(3),
    "AVAIL_FIRST_CLASS"    NUMBER(3),
    constraint  "CABIN_DATA_PK" primary key ("FLIGHT_CODE")
)
/

ALTER TABLE "CABIN_DATA" ADD CONSTRAINT "CABIN_DATA_FK" 
FOREIGN KEY ("FLIGHT_CODE")
REFERENCES "FLIGHT_DATA" ("FLIGHT_CODE")
ON DELETE CASCADE

/

CREATE table "PASSENGER_DATA" (
    "PASSENGER_ID"    NUMBER(3) NOT NULL,
    "PASSPORT_NUMBER" VARCHAR2(10) NOT NULL,
    "FLIGHT_CODE"     VARCHAR2(10) NOT NULL,
    constraint  "PASSENGER_DATA_PK" primary key ("PASSENGER_ID")
)
/
ALTER TABLE "PASSENGER_DATA" ADD CONSTRAINT "PASSENGER_DATA_FK" 
FOREIGN KEY ("FLIGHT_CODE")
REFERENCES "FLIGHT_DATA" ("FLIGHT_CODE")
ON DELETE CASCADE
/

CREATE table "PASSENGER_DETAILS" (
    "PASSENGER_ID"      NUMBER(3) NOT NULL,
    "FNAME"             VARCHAR2(20),
    "LNAME"             VARCHAR2(20),
    "HOME_ADDRESS"      VARCHAR2(100),
    "PHONE_NUMBER"      NUMBER(10),
    "GENDER"            VARCHAR2(1),
    "FREQF_DISCOUNT"    VARCHAR2(1),
    "EMPLOYEE_DISCOUNT" VARCHAR2(1),
    "EMPLOYEE_ID"       NUMBER(10),
    constraint  "PASSENGER_DETAILS_PK" primary key ("PASSENGER_ID")
)
/
ALTER TABLE "PASSENGER_DETAILS" ADD CONSTRAINT "PASSENGER_DETAILS_FK" 
FOREIGN KEY ("PASSENGER_ID")
REFERENCES "PASSENGER_DATA" ("PASSENGER_ID")
ON DELETE CASCADE
/

CREATE table "TICKET" (
    "TICKET_NUMBER" NUMBER(10) NOT NULL,
    "FLIGHT_CODE"   VARCHAR2(10) NOT NULL,
    "PASSENGER_ID"  NUMBER(3) NOT NULL,
    "SEAT_NUM"      VARCHAR2(4),
    constraint  "TICKET_PK" primary key ("TICKET_NUMBER")
)
/
ALTER TABLE TICKET
ADD CONSTRAINT uq_seat UNIQUE (SEAT_NUM);
/
ALTER TABLE "TICKET" ADD CONSTRAINT "TICKET_FK_FD" 
FOREIGN KEY ("FLIGHT_CODE")
REFERENCES "FLIGHT_DATA" ("FLIGHT_CODE")
ON DELETE CASCADE

/
ALTER TABLE "TICKET" ADD CONSTRAINT "TICKET_FK_PI" 
FOREIGN KEY ("PASSENGER_ID")
REFERENCES "PASSENGER_DATA" ("PASSENGER_ID")
ON DELETE CASCADE

/

CREATE table "TICKET_DATA" (
    "TICKET_NUMBER" NUMBER(10) NOT NULL,
    "BOOKING_DATE"  VARCHAR2(15),
    "TRAVEL_DATE"   VARCHAR2(15),
    "CANCEL_DATE"   VARCHAR2(15),
    "CLASS"         VARCHAR2(15),
    "PRICE"         NUMBER(10),
    constraint  "TICKET_DATA_PK" primary key ("TICKET_NUMBER")
)
/

ALTER TABLE "TICKET_DATA" ADD CONSTRAINT "TICKET_DATA_FK_TN" 
FOREIGN KEY ("TICKET_NUMBER")
REFERENCES "TICKET" ("TICKET_NUMBER")
ON DELETE CASCADE

/

CREATE table "CANCEL_BOOKING" (
    "TICKET_NUMBER" NUMBER(10) NOT NULL,
    "PASSENGER_ID"  NUMBER(3) NOT NULL,
    "CANCEL_DATE"   VARCHAR2(15),
    "CHARGES"       NUMBER(10),
    constraint  "CANCEL_BOOKING_PK" primary key ("TICKET_NUMBER")
)
/

ALTER TABLE "CANCEL_BOOKING" ADD CONSTRAINT "CANCEL_BOOKING_FK_TN" 
FOREIGN KEY ("TICKET_NUMBER")
REFERENCES "TICKET" ("TICKET_NUMBER")
ON DELETE CASCADE

/
ALTER TABLE "CANCEL_BOOKING" ADD CONSTRAINT "CANCEL_BOOKING_FK_PI" 
FOREIGN KEY ("PASSENGER_ID")
REFERENCES "PASSENGER_DATA" ("PASSENGER_ID")
ON DELETE CASCADE

/

CREATE table "EMPLOYEE" (
    "EMPLOYEE_ID"  NUMBER(5) NOT NULL,
    "AIRPORT_CODE" VARCHAR2(9) NOT NULL,
    constraint  "EMPLOYEE_PK" primary key ("EMPLOYEE_ID")
)
/
ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_FK" 
FOREIGN KEY ("AIRPORT_CODE")
REFERENCES "AIRPORT" ("AIRPORT_CODE")
ON DELETE CASCADE
/


CREATE table "EMPLOYEE_DETAIL" (
    "EMPLOYEE_ID"   NUMBER(5) NOT NULL,
    "DEPARTMENT_ID" NUMBER(5) NOT NULL,
    "FNAME"         VARCHAR2(20),
    "LNAME"         VARCHAR2(20),
    "PHONE_NUMBER"  NUMBER(10),
    "AGE"           NUMBER(3),
    "GENDER"        VARCHAR2(1),
    "HOME_ADDRESS"  VARCHAR2(100),
    constraint  "EMPLOYEE_DETAIL_PK" primary key ("EMPLOYEE_ID")
)
/
ALTER TABLE "EMPLOYEE_DETAIL" ADD CONSTRAINT "EMPLOYEE_DETAIL_FK" 
FOREIGN KEY ("EMPLOYEE_ID")
REFERENCES "EMPLOYEE" ("EMPLOYEE_ID")
ON DELETE CASCADE
/
ALTER TABLE "EMPLOYEE_DETAIL" ADD CONSTRAINT "EMPLOYEE_DETAIL_FK_DI" 
FOREIGN KEY ("DEPARTMENT_ID")
REFERENCES "DEPARTMENT_DETAILS" ("DEPARTMENT_ID")
ON DELETE CASCADE
/


CREATE table "DEPARTMENT_DETAILS" (
    "DEPARTMENT_ID"   NUMBER(5) NOT NULL,
    "DEPARTMENT_NAME" VARCHAR2(15),
    "SALARY"          NUMBER(10),
    "JOB_TYPE"        VARCHAR2(15),
    "DATE_APPOINTING" VARCHAR2(15),
    "AIRPORT_CODE"    VARCHAR2(9),
    constraint  "DEPARTMENT_DETAILS_PK" primary key ("DEPARTMENT_ID")
)
/

ALTER TABLE "DEPARTMENT_DETAILS" ADD CONSTRAINT "DEPARTMENT_DETAILS_FK" 
FOREIGN KEY ("AIRPORT_CODE")
REFERENCES "AIRPORT" ("AIRPORT_CODE")
ON DELETE CASCADE

/
