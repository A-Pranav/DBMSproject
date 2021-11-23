INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('LKUS','Louisville','Kentucky','United States');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('CCI','Chandigarh','Chandigarh','India');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('FWTUS','Fort Worth','Texas','United States');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('DDI','Delhi','Delhi','India');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('MMMI','Mumbai','Maharashtra','India');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('SFCUS','San Francisco', 'California', 'United States');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('FHG','Frankfurt','Hesse','Germany');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('HTUS','Houston','Texas','United States');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('NYCUS','New York City','New York','United States');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('TFUS','Tampa', 'Florida', 'United States');
INSERT INTO CITY ("CITY_CODE","CITY_NAME","STATE","COUNTRY") VALUES('CTNI','Chennai', 'Tamil Nadu', 'India');





INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('Louisville International Airport','SDF','LKUS');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('Chandigarh International Airport','IXC','CCI');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('Dallas/Fort Worth International Airport','DFW','FWTUS');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('Indira Gandhi International Airport','DEL','DDI');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('Chhatrapati Shivaji International Airport','BOM','MMMI');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('San Francisco International Airport','SFO','SFCUS');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('Frankfurt Airport','FRA','FHG');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('George Bush Intercontinental Airport','IAH','HTUS');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('John F. Kennedy International Airport','JFK','NYCUS');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('Tampa International Airport','TPA','TFUS');
INSERT INTO AIRPORT ("AIRPORT_NAME","AIRPORT_CODE","CITY_CODE") VALUES('Chennai International Airport','MAA','CTNI');




INSERT INTO AIRLINE ("AIRLINE_ID","AIRLINE_NAME","AIRLINE_CODE") VALUES('AA','American Airlines','001');
INSERT INTO AIRLINE ("AIRLINE_ID","AIRLINE_NAME","AIRLINE_CODE") VALUES('AI','Air India Limited','098');
INSERT INTO AIRLINE ("AIRLINE_ID","AIRLINE_NAME","AIRLINE_CODE") VALUES('LH','Lufthansa', '220');
INSERT INTO AIRLINE ("AIRLINE_ID","AIRLINE_NAME","AIRLINE_CODE") VALUES('BA','British Airways','125');
INSERT INTO AIRLINE ("AIRLINE_ID","AIRLINE_NAME","AIRLINE_CODE") VALUES('QR','Qatar Airways','157');
INSERT INTO AIRLINE ("AIRLINE_ID","AIRLINE_NAME","AIRLINE_CODE") VALUES('JW','Jet Airways','589');
INSERT INTO AIRLINE ("AIRLINE_ID","AIRLINE_NAME","AIRLINE_CODE") VALUES('EK','Emirates','176');
INSERT INTO AIRLINE ("AIRLINE_ID","AIRLINE_NAME","AIRLINE_CODE") VALUES('EY','Ethiad Airways','607');





INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('001','SDF');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('001','JFK');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('001','IAH');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('001','SFO');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('001','TPA');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('098','IXC');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('098','DFW');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('098','DEL');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('098','BOM');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('098','IAH');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('220','BOM');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('220','FRA');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('220','JFK');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('220','SFO');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('220','DFW');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('125','JFK');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('125','BOM');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('125','IXC');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('125','FRA');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('125','SFO');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('157','BOM');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('157','DFW');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('157','JFK');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('157','TPA');
INSERT INTO DOCKED_AIRLINE ("AIRLINE_CODE","AIRPORT_CODE") VALUES('157','SDF');



INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('AI2014','BOM','DFW','24hr','02:10','03:15' ,'3', '1','098');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('QR2305','BOM','DFW','21hr','13:00','13:55' ,'0', '0','157');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('EY1234','JFK','TPA','3hrs','19:20','20:05' ,'5', '2','607');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('LH9876','JFK','BOM','18hrs','05:50','06:35','0', '0','220');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('BA1689','FRA','DEL','7hrs','10:20','10:55' ,'0', '0','125');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('AA4367','SFO','FRA','11hrs','18:10','18:55','0', '0','001');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('QR1902','IXC','IAH','28hrs','22:00','22:50','5', '1','157');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('BA3056','BOM','DFW','29hrs','02:15','02:55','4', '1','125');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('EK3456','BOM','SFO','23hrs','18:50','19:40','0', '0','176');
INSERT INTO FLIGHT_DATA("FLIGHT_CODE","SOURCE","DESTINATION","DURATION","ARRIVAL","DEPARTURE","LAYOVER_TIME","NUM_STOPS","AIRLINE_CODE") VALUES('JW2334','IAH','DEL','18hrs','23:00','13:45','0', '0','589');





INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('JW2334','140','43','70','14','55','24','15','5');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('EK3456','147','40','65','10','65','20','17','10');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('BA3056','145','41','80','10','50','25','15','6');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('QR1902','153','55','70','17','70','29','13','9');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('AA4367','186','36','90','10','80','17','16','9');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('BA1689','250','119','80','10','70','19','17','7');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('LH9876','164','37','70','10','75','16','19','11');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('EY1234','166','30','85','10','65','17','16','3');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('QR2305','164','33','80','10','70','18','14','5');
INSERT INTO CABIN_DATA("FLIGHT_CODE","TOTAL_SEATS","AVAIL_SEATS","TOTAL_ECONOMY_CLASS","AVAIL_ECONOMY_CLASS","TOTAL_BUSINESS_CLASS","AVAIL_BUSINESS_CLASS","TOTAL_FIRST_CLASS","AVAIL_FIRST_CLASS") VALUES('AI2014','168','32','75','10','80','14','13','8');





INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(102,'ADMINISTRATIVE SUPPORT',50000,'','SDF');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(103,'Air Traffic Control',65000,'','SDF');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(104,'communications',45000,'','SDF');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(105,'Medical Center',40000,'','SDF');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(106,'Flight Safety',55000,'','SDF');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(107,'Air Security Service',75000,'','SDF');

INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(108,'ADMINISTRATIVE SUPPORT',50000,'','IXC');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(109,'Air Traffic Control',65000,'','IXC');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(110,'communications',45000,'','IXC');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(111,'Medical Center',40000,'','IXC');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(112,'Flight Safety',55000,'','IXC');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(113,'Air Security Service',75000,'','IXC');

INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(114,'ADMINISTRATIVE SUPPORT',50000,'','DFW');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(115,'Air Traffic Control',65000,'','DFW');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(116,'communications',45000,'','DFW');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(117,'Medical Center',40000,'','DFW');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(118,'Flight Safety',55000,'','DFW');
INSERT INTO DEPARTMENT_DETAILS("DEPARTMENT_ID","DEPARTMENT_NAME","SALARY","JOB_TYPE","AIRPORT_CODE") VALUES(119,'Air Security Service',75000,'','DFW');





















INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(1,'A1234568');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(2,'B9876541');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(3,'C2345698');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(4,'D1002004');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(5,'X9324666');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(6,'B8765430');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(7,'J9801235');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(8,'A1122334');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(9,'Q1243567');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(10,'S1243269');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(11,'E3277889');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(12,'K3212322');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(13,'P3452390');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(14,'W7543336');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(15,'R8990566');




INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('A1234568','PRANAV','ARORA','2230 NORTHSIDE, APT 11, ALBANY, NY',8080367290,30,'M');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('B9876541','ANKITA','AHIR','3456 VIKAS APTS, APT 102,DOMBIVLI, INDIA',8080367280,26,'F');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('C2345698','ABHINAV','RANA','7820 MCCALLUM COURTS, APT 234, AKRON, OH',8082267280,30,'F');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('D1002004','AKSHAT','SHARMA','7720 MCCALLUM BLVD, APT 1082, DALLAS, TX',9080367266,23,'F');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('X9324666','ANURAG','GUPTA','9082 ESTAES OF RICHARDSON, RICHARDSON, TX',9004360125,28,'F');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('B8765430','GAURAV','SINGH','1110 FIR HILLS, APT 903, AKRON, OH',7666190505,30,'F');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('J9801235','JIYA','MANCHANDA','345 CHATHAM COURTS, APT 678, MUMBAI, INDIA',9080369290,29,'M');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('A1122334','NIKHIL','GARG','5589 CHTHAM REFLECTIONS, APT 349 HOUSTON, TX',9004335126,25,'F');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('Q1243567','MEHAK','BHARADWAJ','4444 FRANKFORD VILLA, APT 77, GUILDERLAND, NY',9727626643,22,'M');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('S1243269','SANYA','SINGLA','7720 MCCALLUM BLVD, APT 2087, DALLAS, TX',9004568903,60,'M');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('E3277889','SUKRITI','BANSAL','1234 BAKER APTS, APT 59, HESSE, GERMANY',9724569986,10,'M');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('K3212322','PRABAL','SINGH','6785 SPLITSVILLA, APT 34, MIAMI, FL',9024569226,15,'F');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('P3452390','TANISHKA','CHOPRA','548 MARKET PLACE, SAN Francisco, CA',9734567800,10,'F');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('W7543336','DEEPANSHU','BATRA','6666 ROCK HILL, APT 2902, TAMPA, FL',4624569986,55,'M');
INSERT INTO PASSENGER2(PASSPORTNO,FNAME,LNAME,HOME_ADDRESS,PHONE,AGE,SEX) VALUES('R8990566','GURPREET','SINGH','3355 PALENCIA, APT 2065, MUMBAI, INDIA',4724512343,10,'M');



INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(1,'AI2014');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(2,'LH9876');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(3,'9W2334');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(4,'QR1902');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(5,'EY1234');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(6,'BA3056');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(7,'9W2334');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(8,'AA4367');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(9,'QR1902');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(10,'EK3456');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(11,'BA1689');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(12,'QR1902');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(13,'AI2014');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(14,'BA1689');
INSERT INTO PASSENGER3(PID, FLIGHT_CODE) VALUES(15,'QR2305');





INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(123456789, '7700225V','LINDA','GOODMAN','731 Fondren, Houston, TX',4356789345, 35, 'F','ADMINISTRATIVE SUPPORT','RECEPTIONIST','','','','Louisville International Airport','SDF');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(333445555, '5452407D','JOHNY','PAUL','638 Voss, Houston, TX',9834561995, 40, 'M','ADMINISTRATIVE SUPPORT','SECRETARY','','','','Louisville International Airport','SDF');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(999887777, '1241125L', 'JAMES','CHARLES','3321 Castle, Spring, TX',9834666995, 50, 'M','ENGINEER','','RADIO ENGINEER','','','Louisville International Airport','SDF');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(987654321, '6993459T','SHERLOCK','HOLMES','123 TOP HILL, SAN Francisco,CA',8089654321, 47, 'M','TRAFFIC MONITOR','','','DAY','','San Francisco International Airport','SFO');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(666884444, '0691084D','SHELDON','COOPER','345 CHERRY PARK, HESSE,GERMANY',1254678903, 55, 'M','TRAFFIC MONITOR','','NIGHT','','','Frankfurt Airport','FRA');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(453453453, '7141506R','RAJ','SHARMA','345 FLOYDS, MUMBAI,INDIA',4326789031, 35, 'M','AIRPORT AUTHORITY','','','','MANAGER','Chhatrapati Shivaji International Airport','BOM');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(987987987, '9857460S','NIKITA','RAJPUT','110 SYNERGY PARK, DALLAS,TX',5678904325, 33, 'F','ENGINEER','','AIRPORT CIVIL ENGINEER','','','Dallas/Fort Worth International Airport','DFW');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(888665555, '4835734Q','SHUBHAM','GUPTA','567 CHANDANI CHOWK, DELHI, INDIA',8566778890, 39, 'M','ADMINISTRATIVE SUPPORT','DATA ENTRY WORKER','','','','Indira Gandhi International Airport','DEL');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(125478909, '4115381J','PRATIK','KUMAR','334 VITRUVIAN PARK, ALBANY, NY',4444678903, 56, 'M','TRAFFIC MONITOR','','DAY','','','John F. Kennedy International Airport','JFK');
INSERT INTO EMPLOYEE("EMPLOYEE_ID","AIRPORT_CODE") VALUES(324567897, '8268048M','ADIT','DESAI','987 SOMNATH, CHANDIGARH, INDIA',2244658909, 36, 'M','TRAFFIC MONITOR','','DAY','','','Chandigarh International Airport','IXC');

"EMPLOYEE_ID","AIRPORT_CODE"



INSERT INTO EMPLOYEE_DETAILS(JOBTYPE, SALARY)VALUES('ADMINISTRATIVE SUPPORT',50000);
INSERT INTO EMPLOYEE_DETAILS(JOBTYPE, SALARY)VALUES('ENGINEER',70000);
INSERT INTO EMPLOYEE_DETAILS(JOBTYPE, SALARY)VALUES('TRAFFIC MONITOR',80000);
INSERT INTO EMPLOYEE_DETAILS(JOBTYPE, SALARY)VALUES('AIRPORT AUTHORITY',90000);




INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(453453453,'AI2014','BOM');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(453453453,'QR2305','BOM');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(125478909,'EY1234','JFK');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(125478909,'LH9876','JFK');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(987654321,'AA4367','SFO');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(324567897,'QR1902','IXC');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(666884444,'BA1689','FRA');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(333445555,'JW2334','IAH');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(453453453,'EK3456','BOM');
INSERT INTO WORKPLACE(Emp_Id, FLIGHT_CODE, Airport_Code) VALUES(453453453,'BA3056','BOM');





INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(0011234111122,'BOM','DFW','05-11-16','','12-15-16','32A','ECONOMY',1,'A1234568');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(0984567222299,'JFK','BOM','06-11-16','12-10-16','20-DEC-16','45D','ECONOMY',2,'B9876541');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(1768901333273,'IAH','DEL','08-21-16','','12-25-16','1A','BUSINESS',3,'C2345698');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(5890987441464,'IXC','IAH','08-05-16','','01-12-17','20C','FIRST-CLASS',4,'D1002004');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(1577654664266,'JFK','TPA','06-13-16','','12-10-16','54E','ECONOMY',5,'X9324666');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(2206543545545,'BOM','DFW','11-11-16','','02-12-17','43B','ECONOMY',6,'B8765430');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(7064321779737,'IAH','DEL','11-15-16','','12-25-16','27B','FIRST-CLASS',7,'J9801235');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(1571357215116,'SFO','FRA','10-15-16','','12-18-16','34E','ECONOMY',8,'A1122334');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(1570864987655,'IXC','IAH','11-12-16','','12-30-16','54C','ECONOMY',9,'Q1243567');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(1579283997799,'BOM','SFO','01-22-16','','12-15-16','38A','ECONOMY',10,'S1243269');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(1255701876107,'FRA','DEL','10-19-16','','12-31-16','57F','ECONOMY',11,'E3277889');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(1251334499699,'IXC','IAH','11-20-16','','01-12-17','45D','ECONOMY',12,'K3212322');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(1258776199490,'BOM','DFW','05-13-16','05-25-16','12-15-16','37C','ECONOMY',13,'P3452390');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(5891155114477,'FRA','DEL','06-26-16','','12-23-16','55C','ECONOMY',14,'W7543336');
INSERT INTO TICKET1(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS) VALUES(5893069766787,'BOM','DFW','08-11-16','','12-22-16','33F','ECONOMY',15,'R8990566');





INSERT INTO TICKET3(DATE_OF_CANCELLATION, SURCHARGE) VALUES('12-10-16',7500);
INSERT INTO TICKET3(DATE_OF_CANCELLATION, SURCHARGE) VALUES('05-25-16',2500);
