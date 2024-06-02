prompt PL/SQL Developer Export Tables for user C##RIVKA@XE
prompt Created by rivka on יום ראשון 02 יוני 2024
set feedback off
set define off

prompt Creating TRANSPORTATION...
create table TRANSPORTATION
(
  number_of_passengers NUMBER not null,
  driver               VARCHAR2(15) not null,
  id_transportation    NUMBER not null,
  duration_time        DATE not null
);

alter table TRANSPORTATION
  add primary key (ID_TRANSPORTATION)
  ;

prompt Creating TRIPS...
create table TRIPS
(
  name              VARCHAR2(15) not null,
  id_trip           NUMBER not null,
  price             NUMBER not null,
  id_transportation NUMBER,
  trip_date         DATE not null
)
;
alter table TRIPS
  add primary key (ID_TRIP)
  ;
alter table TRIPS
  add foreign key (ID_TRANSPORTATION)
  references TRANSPORTATION (ID_TRANSPORTATION) on delete cascade;

prompt Creating DESTINATIONS...
create table DESTINATIONS
(
  name            VARCHAR2(15) not null,
  id_destinations NUMBER not null,
  description     VARCHAR2(100) not null,
  id_trip         NUMBER not null
)
;
alter table DESTINATIONS
  add primary key (ID_DESTINATIONS)
  ;
alter table DESTINATIONS
  add foreign key (ID_TRIP)
  references TRIPS (ID_TRIP) on delete cascade;

prompt Creating GUARD...
create table GUARD
(
  name         VARCHAR2(15) not null,
  id_guard     NUMBER not null,
  number_phone VARCHAR2(15) not null
);
alter table GUARD
  add primary key (ID_GUARD)
  
  ;

prompt Creating GUIDED_BY...
create table GUIDED_BY
(
  price    NUMBER not null,
  id_trip  NUMBER not null,
  id_guard NUMBER not null
)
;
alter table GUIDED_BY
  add primary key (ID_TRIP, ID_GUARD)
  
  ;
alter table GUIDED_BY
  add foreign key (ID_TRIP)
  references TRIPS (ID_TRIP) on delete cascade;
alter table GUIDED_BY
  add foreign key (ID_GUARD)
  references GUARD (ID_GUARD) on delete cascade;

prompt Creating TRAVELERS...
create table TRAVELERS
(
  name          VARCHAR2(15) not null,
  year_of_birth NUMBER not null,
  id_travels    NUMBER not null
)
;
alter table TRAVELERS
  add primary key (ID_TRAVELS)
  ;

prompt Creating TRAVELERS_LIST...
create table TRAVELERS_LIST
(
  id_travelers_list NUMBER not null,
  price             NUMBER not null,
  id_trip           NUMBER not null,
  id_travels        NUMBER not null
)
;
alter table TRAVELERS_LIST
  add primary key (ID_TRAVELERS_LIST)
 ;
alter table TRAVELERS_LIST
  add unique (ID_TRIP, ID_TRAVELS)
  ;
alter table TRAVELERS_LIST
  add foreign key (ID_TRIP)
  references TRIPS (ID_TRIP) on delete cascade;
alter table TRAVELERS_LIST
  add foreign key (ID_TRAVELS)
  references TRAVELERS (ID_TRAVELS) on delete cascade;

prompt Disabling triggers for TRANSPORTATION...
alter table TRANSPORTATION disable all triggers;
prompt Disabling triggers for TRIPS...
alter table TRIPS disable all triggers;
prompt Disabling triggers for DESTINATIONS...
alter table DESTINATIONS disable all triggers;
prompt Disabling triggers for GUARD...
alter table GUARD disable all triggers;
prompt Disabling triggers for GUIDED_BY...
alter table GUIDED_BY disable all triggers;
prompt Disabling triggers for TRAVELERS...
alter table TRAVELERS disable all triggers;
prompt Disabling triggers for TRAVELERS_LIST...
alter table TRAVELERS_LIST disable all triggers;
prompt Disabling foreign key constraints for TRIPS...
alter table TRIPS disable constraint SYS_C008917;
prompt Disabling foreign key constraints for DESTINATIONS...
alter table DESTINATIONS disable constraint SYS_C008923;
prompt Disabling foreign key constraints for GUIDED_BY...
alter table GUIDED_BY disable constraint SYS_C008928;
alter table GUIDED_BY disable constraint SYS_C008929;
prompt Disabling foreign key constraints for TRAVELERS_LIST...
alter table TRAVELERS_LIST disable constraint SYS_C008936;
alter table TRAVELERS_LIST disable constraint SYS_C008937;
prompt Loading TRANSPORTATION...
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Cary', 1, to_date('08-04-2011', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Clay', 2, to_date('25-09-2855', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Harris', 3, to_date('18-05-2856', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Clarence', 4, to_date('29-09-2317', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Bernie', 5, to_date('03-10-2729', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Rosanna', 6, to_date('10-11-2423', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Ming-Na', 7, to_date('28-09-2793', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Christina', 8, to_date('22-03-2173', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Clarence', 9, to_date('27-02-2465', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Anne', 10, to_date('28-08-2527', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Tara', 11, to_date('03-08-2710', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Lynette', 12, to_date('18-12-2864', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Franco', 13, to_date('25-03-2115', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Juliet', 14, to_date('10-08-1989', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Jean-Claude', 15, to_date('10-09-2717', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Judy', 16, to_date('10-06-2130', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Vonda', 17, to_date('07-04-2044', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Jesus', 18, to_date('22-03-2124', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Mickey', 19, to_date('09-06-2843', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Sonny', 20, to_date('07-11-2010', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Rhett', 21, to_date('29-05-2303', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Matt', 22, to_date('04-06-2448', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Jim', 23, to_date('28-10-2094', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Ali', 24, to_date('20-03-2527', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Mykelti', 25, to_date('13-06-1988', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Morris', 26, to_date('06-12-2653', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Patti', 27, to_date('16-10-2985', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Rachael', 28, to_date('17-10-2619', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Juliet', 29, to_date('21-11-2236', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Yolanda', 30, to_date('03-08-2040', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Antonio', 31, to_date('15-02-2075', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Kate', 32, to_date('06-09-2048', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Xander', 33, to_date('19-08-2372', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Tal', 34, to_date('24-09-2014', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Elias', 35, to_date('02-04-2618', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Forest', 36, to_date('25-01-2951', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Mary-Louise', 37, to_date('18-06-2519', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Freddie', 38, to_date('19-06-2263', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Tim', 39, to_date('22-02-2241', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Vienna', 40, to_date('16-01-2989', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Jimmie', 41, to_date('27-09-2779', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Jeffery', 42, to_date('17-07-2676', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Mykelti', 43, to_date('11-11-2911', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Caroline', 44, to_date('21-10-2889', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Beth', 45, to_date('09-01-2304', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Bette', 46, to_date('19-09-2214', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Steven', 47, to_date('16-06-2585', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Rene', 48, to_date('24-05-2085', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Lizzy', 49, to_date('15-02-3047', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Merillee', 50, to_date('08-06-2680', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Helen', 51, to_date('17-10-2274', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Pablo', 52, to_date('13-01-2314', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Nicolas', 53, to_date('17-08-2133', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Vertical', 54, to_date('06-05-2122', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Susan', 55, to_date('12-11-2621', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Rhea', 56, to_date('05-07-2885', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Rosario', 57, to_date('04-08-2910', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Glen', 58, to_date('27-02-2880', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Ned', 59, to_date('24-10-1967', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Suzy', 60, to_date('05-01-2181', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Jesus', 61, to_date('09-05-2152', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Rawlins', 62, to_date('07-08-1950', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Jake', 63, to_date('24-11-2333', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Irene', 64, to_date('14-12-2612', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Fiona', 65, to_date('18-10-2897', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Ryan', 66, to_date('13-01-2204', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Cathy', 67, to_date('06-11-2973', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Campbell', 68, to_date('27-04-2453', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Dave', 69, to_date('28-06-2741', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Alan', 70, to_date('12-03-2137', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Catherine', 71, to_date('04-12-2608', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Terri', 72, to_date('26-12-2917', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Grant', 73, to_date('12-05-2943', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Isabella', 74, to_date('01-09-2103', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Woody', 75, to_date('16-02-2353', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Busta', 76, to_date('19-03-2744', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Marianne', 77, to_date('14-05-2877', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Taye', 78, to_date('09-03-2934', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Steven', 79, to_date('05-12-2805', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Pablo', 80, to_date('13-04-2181', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Wayne', 81, to_date('28-04-2253', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Karen', 82, to_date('21-10-2550', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Davy', 83, to_date('21-11-2018', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Jackson', 84, to_date('24-07-2154', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Julianna', 85, to_date('28-06-2090', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Busta', 86, to_date('22-05-2352', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Adina', 87, to_date('22-06-2512', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Parker', 88, to_date('18-02-2296', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Tilda', 89, to_date('30-11-2770', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Greg', 90, to_date('01-05-2517', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Mary-Louise', 91, to_date('03-09-2887', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Wade', 92, to_date('08-01-3005', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Eddie', 93, to_date('04-02-2498', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Suzy', 94, to_date('04-10-2116', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Stevie', 95, to_date('03-04-2787', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Olympia', 96, to_date('30-12-2882', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Raul', 97, to_date('09-07-2132', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Gabrielle', 98, to_date('18-08-2586', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Jared', 99, to_date('20-11-2042', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Stellan', 100, to_date('25-07-2000', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Bob', 101, to_date('31-10-2678', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Teena', 102, to_date('14-01-2818', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Ving', 103, to_date('17-06-2184', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Sheryl', 104, to_date('06-02-2927', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Nina', 105, to_date('03-02-1984', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Laurie', 106, to_date('19-10-2640', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Andrae', 107, to_date('22-12-2318', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Caroline', 108, to_date('04-01-2929', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Ronny', 109, to_date('06-03-2204', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Leonardo', 110, to_date('29-08-2371', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Temuera', 111, to_date('22-12-2846', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Edgar', 112, to_date('04-06-2783', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Crystal', 113, to_date('08-01-2260', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Joseph', 114, to_date('15-02-2855', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Debbie', 115, to_date('15-06-2556', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Hugh', 116, to_date('07-12-2680', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Rodney', 117, to_date('06-08-2715', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Shannyn', 118, to_date('31-07-2487', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Corey', 119, to_date('28-01-1974', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'King', 120, to_date('26-06-3021', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Gilberto', 121, to_date('11-01-2591', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Natacha', 122, to_date('01-04-2120', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Loren', 123, to_date('17-06-2629', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Aaron', 124, to_date('24-04-2331', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Katie', 125, to_date('05-09-2019', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Treat', 126, to_date('22-07-1984', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Thora', 127, to_date('10-04-2765', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Jody', 128, to_date('18-08-2461', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Debbie', 129, to_date('22-08-2609', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Jeroen', 130, to_date('29-05-2123', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Fats', 131, to_date('26-02-2079', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Randall', 132, to_date('11-10-2125', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Roscoe', 133, to_date('24-10-2367', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Anna', 134, to_date('05-01-2819', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Benicio', 135, to_date('07-04-2507', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Richard', 136, to_date('07-06-2458', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Suzy', 137, to_date('14-02-2329', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Nikka', 138, to_date('22-10-2977', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Colm', 139, to_date('05-06-2936', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Bryan', 140, to_date('27-12-2713', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Jaime', 141, to_date('20-06-2346', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Carla', 142, to_date('06-05-2958', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Taye', 143, to_date('01-11-2488', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Vickie', 144, to_date('28-02-2144', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Frederic', 145, to_date('14-12-2595', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Robbie', 146, to_date('30-03-2159', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Charles', 147, to_date('21-09-2622', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Anne', 148, to_date('26-09-2046', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Mindy', 149, to_date('06-01-2952', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Wayman', 150, to_date('25-10-1968', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Rosario', 151, to_date('27-05-2114', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Vertical', 152, to_date('15-03-2271', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Zooey', 153, to_date('03-01-2088', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Leon', 154, to_date('22-07-2629', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Roger', 155, to_date('15-04-2799', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Halle', 156, to_date('01-12-2047', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Liam', 157, to_date('11-11-1979', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Alannah', 158, to_date('24-03-2855', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Jennifer', 159, to_date('21-05-1910', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Edgar', 160, to_date('10-06-2366', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Kirk', 161, to_date('04-09-2617', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Ben', 162, to_date('20-12-1924', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Maria', 163, to_date('12-01-2415', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Rueben', 164, to_date('11-11-2718', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Gilbert', 165, to_date('21-01-2598', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Jerry', 166, to_date('07-12-1920', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Andrae', 167, to_date('28-05-2489', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Rodney', 168, to_date('03-10-2956', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Simon', 169, to_date('14-04-2749', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Alan', 170, to_date('31-05-2190', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Belinda', 171, to_date('28-01-1999', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Illeana', 172, to_date('23-09-2489', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Veruca', 173, to_date('10-11-2003', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Courtney', 174, to_date('14-09-1925', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Drew', 175, to_date('05-01-3000', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Angie', 176, to_date('11-06-2282', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Kevin', 177, to_date('17-04-2073', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Judge', 178, to_date('23-08-2354', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Joe', 179, to_date('02-03-2735', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Madeline', 180, to_date('21-02-2466', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Harry', 181, to_date('27-02-2496', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Edwin', 182, to_date('09-09-2680', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Davey', 183, to_date('30-08-2589', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Wade', 184, to_date('30-05-2785', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Hugh', 185, to_date('24-03-2026', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Josh', 186, to_date('01-12-3019', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Radney', 187, to_date('24-10-2669', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Shirley', 188, to_date('07-11-2811', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Miguel', 189, to_date('08-11-2630', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Nina', 190, to_date('27-02-2006', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Ritchie', 191, to_date('16-03-2529', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Jared', 192, to_date('13-12-2677', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Michelle', 193, to_date('26-05-2080', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Russell', 194, to_date('20-10-2899', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Tori', 195, to_date('20-03-2989', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Alex', 196, to_date('21-08-3026', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Sissy', 197, to_date('14-09-2560', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Christian', 198, to_date('20-04-2348', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Hilton', 199, to_date('14-04-1943', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Connie', 200, to_date('01-01-1990', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Collective', 201, to_date('13-09-3062', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Roy', 202, to_date('04-01-2092', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Joseph', 203, to_date('12-07-2022', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Pete', 204, to_date('13-09-2591', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Roy', 205, to_date('10-03-2393', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Talvin', 206, to_date('06-08-3064', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Robbie', 207, to_date('11-08-2433', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Gordie', 208, to_date('05-05-1928', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Anthony', 209, to_date('23-05-2315', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Elle', 210, to_date('13-11-2778', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Geena', 211, to_date('04-09-2841', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Dean', 212, to_date('01-07-1982', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Lucinda', 213, to_date('30-08-2973', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Kristin', 214, to_date('03-12-3071', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Maury', 215, to_date('19-06-2780', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Miguel', 216, to_date('18-06-2251', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Mary Beth', 217, to_date('11-06-3041', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Danny', 218, to_date('01-11-2651', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Brenda', 219, to_date('31-12-2707', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Morris', 220, to_date('25-02-2873', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Rowan', 221, to_date('23-05-2038', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Clint', 222, to_date('26-03-2098', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Rueben', 223, to_date('15-01-2537', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Simon', 224, to_date('20-08-2539', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Mel', 225, to_date('09-11-2556', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Carrie-Anne', 226, to_date('19-07-2226', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Kyra', 227, to_date('03-12-1994', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Christina', 228, to_date('06-10-2828', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Wesley', 229, to_date('14-03-2200', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Elisabeth', 230, to_date('29-09-2889', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Merillee', 231, to_date('03-07-2757', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Gary', 232, to_date('28-07-2656', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Victor', 233, to_date('21-11-2958', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Rosanne', 234, to_date('05-01-2530', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Jack', 235, to_date('11-01-2013', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Dylan', 236, to_date('28-04-2124', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Devon', 237, to_date('22-10-2544', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Sonny', 238, to_date('23-04-2614', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Sara', 239, to_date('02-11-2682', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'James', 240, to_date('09-08-2402', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Devon', 241, to_date('02-02-3053', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Nigel', 242, to_date('07-05-2567', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Martha', 243, to_date('28-07-2320', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Thomas', 244, to_date('25-09-2699', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Etta', 245, to_date('30-10-2059', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Mac', 246, to_date('01-01-2859', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'France', 247, to_date('22-09-2967', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Debra', 248, to_date('12-04-2711', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Gilbert', 249, to_date('18-01-2113', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Regina', 250, to_date('03-08-2447', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Miko', 251, to_date('28-03-2223', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Greg', 252, to_date('05-08-2778', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Vanessa', 253, to_date('30-04-1961', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Anthony', 254, to_date('02-06-2944', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Rip', 255, to_date('18-05-2513', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Clay', 256, to_date('26-09-2509', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Mae', 257, to_date('04-09-2537', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Busta', 258, to_date('21-04-2761', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Henry', 259, to_date('07-05-2935', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Aaron', 260, to_date('27-09-2437', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Linda', 261, to_date('24-04-2214', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Scott', 262, to_date('08-10-2425', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Dick', 263, to_date('01-05-3017', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Rachid', 264, to_date('11-02-3002', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Swoosie', 265, to_date('29-09-1998', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Sydney', 266, to_date('05-10-2561', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Bonnie', 267, to_date('10-02-2171', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Jimmy', 268, to_date('27-09-2488', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Delbert', 269, to_date('11-05-2830', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Eliza', 270, to_date('09-08-2197', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Chalee', 271, to_date('04-07-2425', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Gordon', 272, to_date('04-01-2913', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Junior', 273, to_date('04-10-2124', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Benicio', 274, to_date('27-03-3005', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Tea', 275, to_date('27-05-2332', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Mekhi', 276, to_date('14-12-2550', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Renee', 277, to_date('09-12-2886', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Frederic', 278, to_date('24-03-3026', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Ice', 279, to_date('01-11-1980', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Anne', 280, to_date('05-12-2329', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Rhea', 281, to_date('29-05-1971', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Karon', 282, to_date('20-05-2539', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Kieran', 283, to_date('23-02-2895', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Stephen', 284, to_date('23-10-3019', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Patricia', 285, to_date('17-01-1972', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Juan', 286, to_date('01-09-2685', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Jeffery', 287, to_date('21-02-2174', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Larnelle', 288, to_date('11-06-2209', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Penelope', 289, to_date('28-09-2148', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Norm', 290, to_date('26-05-2454', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Chazz', 291, to_date('11-07-2864', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Chad', 292, to_date('25-11-2698', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Sarah', 293, to_date('18-03-2878', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Albert', 294, to_date('25-07-2280', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Luis', 295, to_date('31-03-2884', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Collective', 296, to_date('29-12-3074', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Eliza', 297, to_date('21-05-1966', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Diamond', 298, to_date('14-05-2806', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Terrence', 299, to_date('07-09-2715', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Denny', 300, to_date('19-02-2679', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Micky', 301, to_date('02-12-2610', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Pierce', 302, to_date('03-03-2941', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Steven', 303, to_date('14-08-3003', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Victor', 304, to_date('13-03-2906', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Frank', 305, to_date('10-10-2531', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Jay', 306, to_date('30-09-2823', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Jonatha', 307, to_date('24-03-2292', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Clive', 308, to_date('06-12-2353', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Night', 309, to_date('07-02-2285', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Lara', 310, to_date('26-11-2297', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Ashton', 311, to_date('04-05-1901', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Mark', 312, to_date('17-02-2451', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Rebecca', 313, to_date('04-06-2866', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Thin', 314, to_date('08-05-2269', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Tramaine', 315, to_date('22-12-2893', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Lucinda', 316, to_date('25-05-2857', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Nicolas', 317, to_date('13-03-2984', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Chazz', 318, to_date('04-08-2494', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Thelma', 319, to_date('13-07-2723', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Rowan', 320, to_date('17-09-2674', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'George', 321, to_date('16-04-1975', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Maura', 322, to_date('22-10-2581', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Davis', 323, to_date('01-08-2970', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Bridget', 324, to_date('31-07-2638', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Hazel', 325, to_date('25-07-2868', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Shannon', 326, to_date('13-04-2694', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Anna', 327, to_date('22-02-2244', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Jaime', 328, to_date('29-06-2574', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Trick', 329, to_date('22-06-2165', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Fairuza', 330, to_date('13-12-1916', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Kenneth', 331, to_date('06-02-2708', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Susan', 332, to_date('25-06-2810', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Debby', 333, to_date('07-11-2588', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Katie', 334, to_date('04-11-1947', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Patrick', 335, to_date('06-10-2543', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Merrill', 336, to_date('27-08-2067', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Dermot', 337, to_date('05-03-3031', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Mae', 338, to_date('23-10-2903', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Emerson', 339, to_date('07-06-2221', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Donald', 340, to_date('11-05-2283', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Allison', 341, to_date('30-05-2541', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Cesar', 342, to_date('25-12-3017', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Gloria', 343, to_date('01-05-2183', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Lucinda', 344, to_date('05-08-2893', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Night', 345, to_date('27-07-2567', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Spencer', 346, to_date('24-05-2541', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Hilary', 347, to_date('28-02-2760', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Dean', 348, to_date('05-10-2672', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Davy', 349, to_date('24-01-2549', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Don', 350, to_date('21-09-3047', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Stephanie', 351, to_date('03-05-2150', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Kimberly', 352, to_date('13-07-2828', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Ozzy', 353, to_date('20-11-3061', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Franz', 354, to_date('18-06-3041', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Miki', 355, to_date('17-02-2696', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Embeth', 356, to_date('13-11-2991', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Amanda', 357, to_date('12-04-2791', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Kristin', 358, to_date('10-01-2823', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Taylor', 359, to_date('14-02-3059', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Jamie', 360, to_date('13-09-2026', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Giovanni', 361, to_date('23-12-2946', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Raul', 362, to_date('23-03-2460', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Neneh', 363, to_date('06-01-2404', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Campbell', 364, to_date('23-08-2942', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Jet', 365, to_date('21-12-2455', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Debi', 366, to_date('14-11-2879', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Robby', 367, to_date('27-08-3012', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Joy', 368, to_date('27-07-2673', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Thelma', 369, to_date('10-05-2839', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Colm', 370, to_date('30-04-2748', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Alice', 371, to_date('28-09-2747', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Jim', 372, to_date('07-10-3046', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Amy', 373, to_date('13-08-1992', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Al', 374, to_date('06-08-2918', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Gaby', 375, to_date('23-04-2005', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Penelope', 376, to_date('02-01-1951', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Lennie', 377, to_date('07-06-2243', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Johnette', 378, to_date('05-06-2293', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Kristin', 379, to_date('08-07-3052', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Tanya', 380, to_date('06-03-2792', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'John', 381, to_date('14-01-1911', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Judd', 382, to_date('27-08-2173', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Jackson', 383, to_date('19-06-2283', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Rachael', 384, to_date('30-08-3008', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Gord', 385, to_date('15-10-2208', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Wayne', 386, to_date('12-04-2353', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Edie', 387, to_date('12-02-2090', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Vienna', 388, to_date('12-11-2674', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Aidan', 389, to_date('26-08-2829', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Chubby', 390, to_date('07-10-1914', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Jessica', 391, to_date('10-01-2312', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Fionnula', 392, to_date('09-07-2784', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Juliet', 393, to_date('31-05-2181', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Mia', 394, to_date('06-02-2685', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Julia', 395, to_date('16-06-2077', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Wendy', 396, to_date('09-06-1904', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Nancy', 397, to_date('13-06-2069', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Carl', 398, to_date('04-11-3023', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Michael', 399, to_date('05-09-1985', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Chloe', 400, to_date('27-04-2535', 'dd-mm-yyyy'));
commit;
prompt 400 records loaded
prompt Loading TRIPS...
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Pete', 1, 3466, 1, to_date('28-03-2084', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Derek', 2, 3052, 2, to_date('09-10-2463', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Carol', 3, 1910, 3, to_date('20-06-2213', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Davey', 4, 3494, 4, to_date('08-06-2464', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Adina', 5, 1981, 5, to_date('21-10-2287', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Minnie', 6, 2008, 6, to_date('15-03-2359', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bernard', 7, 3177, 7, to_date('04-03-2079', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Patricia', 8, 3910, 8, to_date('22-04-2022', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Edward', 9, 3447, 9, to_date('16-09-2888', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Olga', 10, 3608, 10, to_date('21-03-2310', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Wally', 11, 1140, 11, to_date('31-10-2093', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Juliette', 12, 2692, 12, to_date('15-02-2746', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Neve', 13, 2206, 13, to_date('13-02-2062', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Eileen', 14, 1293, 14, to_date('17-05-2867', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jake', 15, 3115, 15, to_date('11-11-2134', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Phoebe', 16, 1363, 16, to_date('08-09-1927', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rueben', 17, 1692, 17, to_date('07-08-2631', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vertical', 18, 3099, 18, to_date('20-11-2721', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lily', 19, 2474, 19, to_date('28-05-2047', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Molly', 20, 3443, 20, to_date('11-09-2982', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Matt', 21, 2759, 21, to_date('18-10-2202', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Liam', 22, 2752, 22, to_date('16-10-2994', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Judy', 23, 2087, 23, to_date('16-07-2382', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Elle', 24, 1905, 24, to_date('30-11-2992', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Billy', 25, 2991, 25, to_date('30-03-2471', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Stanley', 26, 3699, 26, to_date('04-06-2363', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jesse', 27, 2363, 27, to_date('30-09-2784', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Halle', 28, 2705, 28, to_date('31-03-2734', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Isabella', 29, 2172, 29, to_date('11-08-2371', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Taye', 30, 2540, 30, to_date('19-02-2005', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Amy', 31, 3438, 31, to_date('27-04-2236', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jean', 32, 1743, 32, to_date('15-09-3049', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Courtney', 33, 3828, 33, to_date('25-05-2353', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Gene', 34, 1112, 34, to_date('16-01-2003', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tanya', 35, 2802, 35, to_date('01-06-2132', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Juan', 36, 1367, 36, to_date('06-09-2284', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Anne', 37, 3519, 37, to_date('16-02-2677', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Marianne', 38, 3190, 38, to_date('31-01-2902', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Kathy', 39, 3427, 39, to_date('26-05-2871', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Howard', 40, 3279, 40, to_date('26-02-2740', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lynn', 41, 3307, 41, to_date('22-06-2437', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Carole', 42, 3554, 42, to_date('28-07-2879', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ashton', 43, 3174, 43, to_date('21-08-2577', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Fiona', 44, 2450, 44, to_date('19-01-2644', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Treat', 45, 2558, 45, to_date('16-11-2785', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cloris', 46, 1911, 46, to_date('30-08-2454', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Morris', 47, 3040, 47, to_date('23-05-2164', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Stevie', 48, 1407, 48, to_date('07-01-2175', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rhett', 49, 3020, 49, to_date('10-06-2832', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Terrence', 50, 2888, 50, to_date('20-03-1909', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Joaquin', 51, 3539, 51, to_date('02-09-2423', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Steven', 52, 1999, 52, to_date('23-06-2978', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Warren', 53, 3823, 53, to_date('14-11-2870', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Garland', 54, 3095, 54, to_date('13-08-2756', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Randall', 55, 1250, 55, to_date('30-03-2642', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vickie', 56, 1497, 56, to_date('16-03-2075', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cherry', 57, 1850, 57, to_date('20-03-2818', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tea', 58, 2983, 58, to_date('10-09-2546', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dustin', 59, 1360, 59, to_date('02-08-2305', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Regina', 60, 2654, 60, to_date('12-05-2523', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mena', 61, 1634, 61, to_date('15-10-2869', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ronnie', 62, 3996, 62, to_date('23-09-1986', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Chi', 63, 2710, 63, to_date('29-10-3041', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bruce', 64, 3060, 64, to_date('25-11-2340', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Terri', 65, 3707, 65, to_date('18-06-1904', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Geraldine', 66, 3232, 66, to_date('17-07-2495', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Walter', 67, 2668, 67, to_date('11-03-2372', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Alessandro', 68, 1919, 68, to_date('12-01-2276', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dean', 69, 1068, 69, to_date('31-07-2404', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Chi', 70, 1608, 70, to_date('12-06-1999', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Minnie', 71, 3878, 71, to_date('05-02-2878', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Nick', 72, 3108, 72, to_date('24-01-2752', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bret', 73, 2209, 73, to_date('28-09-2726', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rick', 74, 3274, 74, to_date('25-05-2952', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ritchie', 75, 2653, 75, to_date('25-03-3069', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jim', 76, 3110, 76, to_date('13-03-2940', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Azucar', 77, 3847, 77, to_date('16-06-2538', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Andrew', 78, 2725, 78, to_date('03-01-2172', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Irene', 79, 2594, 79, to_date('03-02-2382', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Noah', 80, 1202, 80, to_date('18-07-2272', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Leo', 81, 2299, 81, to_date('11-12-2844', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Glenn', 82, 1897, 82, to_date('14-10-2931', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jim', 83, 1707, 83, to_date('11-04-2468', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Irene', 84, 3994, 84, to_date('30-11-2649', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Terrence', 85, 1174, 85, to_date('27-09-2314', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Madeline', 86, 1183, 86, to_date('06-05-3026', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cheryl', 87, 1079, 87, to_date('21-05-2512', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rhea', 88, 3179, 88, to_date('04-05-2837', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bridget', 89, 3793, 89, to_date('15-02-2490', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Karen', 90, 2131, 90, to_date('11-11-2189', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Madeline', 91, 2901, 91, to_date('06-08-1900', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Meg', 92, 2114, 92, to_date('16-06-2704', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ernie', 93, 3510, 93, to_date('02-09-3012', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mac', 94, 3304, 94, to_date('20-01-1987', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Gil', 95, 2385, 95, to_date('06-04-2688', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lesley', 96, 2574, 96, to_date('27-02-2336', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Michael', 97, 3873, 97, to_date('29-06-2389', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tamala', 98, 1525, 98, to_date('07-10-2163', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tcheky', 99, 2890, 99, to_date('14-02-2257', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lisa', 100, 1807, 100, to_date('26-06-2499', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Taylor', 101, 2272, 101, to_date('05-06-2481', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Denis', 102, 2513, 102, to_date('06-12-2441', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Leo', 103, 3268, 103, to_date('08-02-2124', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Hector', 104, 2731, 104, to_date('13-05-2663', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Johnnie', 105, 3514, 105, to_date('16-11-2252', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vienna', 106, 3616, 106, to_date('07-10-2574', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('King', 107, 3268, 107, to_date('20-10-2713', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tori', 108, 1901, 108, to_date('18-02-2469', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Denny', 109, 1489, 109, to_date('02-09-3070', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Sylvester', 110, 2153, 110, to_date('23-06-2003', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Micky', 111, 1510, 111, to_date('02-03-2413', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Edward', 112, 1591, 112, to_date('05-08-2260', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jeffrey', 113, 2852, 113, to_date('30-06-2272', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cuba', 114, 2580, 114, to_date('02-09-1926', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Don', 115, 3354, 115, to_date('20-02-3058', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Louise', 116, 3106, 116, to_date('14-12-2103', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ali', 117, 2386, 117, to_date('12-10-2583', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Percy', 118, 2478, 118, to_date('13-05-2304', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Holly', 119, 2680, 119, to_date('30-06-1953', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Daryl', 120, 2181, 120, to_date('27-10-2549', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jeroen', 121, 3482, 121, to_date('29-04-2932', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jamie', 122, 1079, 122, to_date('30-04-3075', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Courtney', 123, 1414, 123, to_date('15-07-2561', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ray', 124, 2087, 124, to_date('04-01-2452', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vienna', 125, 3896, 125, to_date('30-05-2355', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('William', 126, 2843, 126, to_date('28-07-2697', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Melba', 127, 2316, 127, to_date('07-06-2206', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ricky', 128, 3781, 128, to_date('19-10-2386', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Powers', 129, 2702, 129, to_date('02-03-1951', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Philip', 130, 1285, 130, to_date('28-10-2702', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Andrew', 131, 1330, 131, to_date('30-10-2452', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Marina', 132, 2232, 132, to_date('19-12-2519', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Hilary', 133, 1128, 133, to_date('20-05-3055', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Betty', 134, 1074, 134, to_date('20-05-2555', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cledus', 135, 3569, 135, to_date('03-07-2269', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Carlene', 136, 3778, 136, to_date('08-04-2877', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lance', 137, 3688, 137, to_date('04-06-2470', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jeremy', 138, 2101, 138, to_date('06-08-2325', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rolando', 139, 3691, 139, to_date('13-10-2585', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vendetta', 140, 2101, 140, to_date('14-02-2509', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Alan', 141, 2765, 141, to_date('24-12-2329', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Miranda', 142, 2033, 142, to_date('14-12-2759', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Zooey', 143, 1258, 143, to_date('15-02-2930', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Allan', 144, 1218, 144, to_date('10-05-2565', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Greg', 145, 2611, 145, to_date('11-10-1912', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jonathan', 146, 2563, 146, to_date('26-04-2031', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Gabriel', 147, 2333, 147, to_date('13-09-2883', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Julie', 148, 3563, 148, to_date('10-05-2127', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rachael', 149, 1385, 149, to_date('26-12-2511', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('James', 150, 2360, 150, to_date('03-09-2857', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dianne', 151, 1388, 151, to_date('08-05-2561', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Merillee', 152, 2035, 152, to_date('14-09-2984', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Russell', 153, 3690, 153, to_date('29-09-2668', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Alfie', 154, 2432, 154, to_date('25-08-2814', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Willie', 155, 1317, 155, to_date('21-09-2505', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Diamond', 156, 3626, 156, to_date('12-04-2208', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Miriam', 157, 1749, 157, to_date('21-05-2529', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Laurence', 158, 2411, 158, to_date('21-10-2108', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mena', 159, 1087, 159, to_date('01-07-2498', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Emerson', 160, 1969, 160, to_date('31-12-2229', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dianne', 161, 2181, 161, to_date('13-04-2278', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ned', 162, 2973, 162, to_date('17-12-2224', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jill', 163, 1340, 163, to_date('18-05-2614', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Etta', 164, 2946, 164, to_date('18-03-2582', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rosario', 165, 1999, 165, to_date('01-09-2234', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ernest', 166, 3385, 166, to_date('31-05-2080', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Laurence', 167, 3986, 167, to_date('28-12-1905', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Leon', 168, 1176, 168, to_date('21-12-2418', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Famke', 169, 1305, 169, to_date('03-07-1912', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Marianne', 170, 1922, 170, to_date('19-09-2140', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Kimberly', 171, 3580, 171, to_date('05-02-2161', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tal', 172, 1033, 172, to_date('16-06-2078', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Gina', 173, 2808, 173, to_date('24-11-2691', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bill', 174, 1627, 174, to_date('19-05-2551', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Kimberly', 175, 2039, 175, to_date('08-01-2125', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tilda', 176, 2522, 176, to_date('09-12-2822', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Terence', 177, 3116, 177, to_date('29-10-2581', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Elias', 178, 3645, 178, to_date('24-04-2800', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Stevie', 179, 3988, 179, to_date('06-09-1976', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Sona', 180, 2138, 180, to_date('20-10-3010', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Karon', 181, 2463, 181, to_date('11-08-2421', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Maria', 182, 1133, 182, to_date('18-06-2488', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Juliana', 183, 1781, 183, to_date('02-05-2863', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jim', 184, 2566, 184, to_date('08-03-2184', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Billy', 185, 3297, 185, to_date('25-07-2005', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Debra', 186, 2468, 186, to_date('23-01-1904', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Denzel', 187, 2010, 187, to_date('20-08-3055', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Emm', 188, 1826, 188, to_date('25-05-2507', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Roger', 189, 1888, 189, to_date('20-07-2538', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mili', 190, 2232, 190, to_date('01-11-2565', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jeffrey', 191, 2018, 191, to_date('14-03-1986', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Terry', 192, 2229, 192, to_date('10-10-1988', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Praga', 193, 1906, 193, to_date('09-03-2726', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Marc', 194, 2221, 194, to_date('22-01-2315', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Alex', 195, 2752, 195, to_date('09-03-2562', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Johnnie', 196, 2244, 196, to_date('18-11-2434', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Elisabeth', 197, 1603, 197, to_date('13-08-1967', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ralph', 198, 2459, 198, to_date('01-06-2172', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Nikki', 199, 3962, 199, to_date('31-05-2436', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Emilio', 200, 1151, 200, to_date('19-05-2463', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Shannon', 201, 3055, 201, to_date('23-05-2070', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jet', 202, 2943, 202, to_date('22-10-2488', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Randall', 203, 3577, 203, to_date('25-11-2844', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Harris', 204, 2070, 204, to_date('24-02-2639', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lloyd', 205, 2618, 205, to_date('04-08-2728', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Molly', 206, 3617, 206, to_date('13-05-2666', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rutger', 207, 2790, 207, to_date('18-12-2764', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Gwyneth', 208, 2739, 208, to_date('24-04-3055', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Frankie', 209, 3519, 209, to_date('01-04-2762', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rade', 210, 2793, 210, to_date('14-03-2557', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vern', 211, 1142, 211, to_date('02-01-2886', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dabney', 212, 3152, 212, to_date('16-01-2197', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Juice', 213, 2268, 213, to_date('09-04-2947', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Michelle', 214, 1023, 214, to_date('15-07-2765', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tia', 215, 2665, 215, to_date('29-01-3022', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Trick', 216, 2897, 216, to_date('07-01-2692', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Carol', 217, 3294, 217, to_date('20-03-3031', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Larnelle', 218, 3138, 218, to_date('18-07-2548', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Janeane', 219, 3875, 219, to_date('25-04-2759', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Goldie', 220, 3834, 220, to_date('09-06-2799', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Claire', 221, 2989, 221, to_date('26-02-2287', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lennie', 222, 2948, 222, to_date('25-11-2536', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Melba', 223, 1164, 223, to_date('23-05-2490', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bobbi', 224, 1443, 224, to_date('27-12-2171', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Louise', 225, 2083, 225, to_date('01-08-2668', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Johnnie', 226, 1836, 226, to_date('12-01-2151', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Harold', 227, 1883, 227, to_date('17-01-2282', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Nicky', 228, 2971, 228, to_date('15-06-2506', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Morgan', 229, 1017, 229, to_date('26-01-2163', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Philip', 230, 2233, 230, to_date('21-09-3049', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Norm', 231, 3170, 231, to_date('27-03-2195', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rupert', 232, 3224, 232, to_date('20-05-2807', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Julie', 233, 2731, 233, to_date('16-11-2689', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Julia', 234, 1699, 234, to_date('20-07-2019', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Toni', 235, 2308, 235, to_date('01-01-2092', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Clay', 236, 2627, 236, to_date('22-04-2217', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jesus', 237, 3048, 237, to_date('14-07-1912', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Sam', 238, 2106, 238, to_date('26-06-2868', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Art', 239, 1183, 239, to_date('10-10-2784', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Colin', 240, 2903, 240, to_date('12-05-2494', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Illeana', 241, 3580, 241, to_date('01-12-2130', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dar', 242, 1150, 242, to_date('28-03-1922', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Emmylou', 243, 1107, 243, to_date('16-05-2446', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Maxine', 244, 3470, 244, to_date('02-05-2512', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Shelby', 245, 1808, 245, to_date('02-02-2684', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cornell', 246, 3177, 246, to_date('16-10-1968', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Greg', 247, 3082, 247, to_date('24-08-2483', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Hugh', 248, 1446, 248, to_date('06-03-2146', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Anita', 249, 3781, 249, to_date('13-11-2560', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Arnold', 250, 3064, 250, to_date('09-04-2782', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Gailard', 251, 2281, 251, to_date('18-01-2094', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Brothers', 252, 1839, 252, to_date('11-05-2626', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Thelma', 253, 3585, 253, to_date('08-10-2579', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Eileen', 254, 2624, 254, to_date('20-12-2492', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Heath', 255, 2312, 255, to_date('30-07-2175', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Maceo', 256, 3294, 256, to_date('09-06-2498', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Minnie', 257, 3527, 257, to_date('28-06-2673', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Faye', 258, 2795, 258, to_date('08-08-2031', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tamala', 259, 3537, 259, to_date('11-02-1925', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Elijah', 260, 3516, 260, to_date('26-04-2729', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Stanley', 261, 2682, 261, to_date('29-03-3042', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rod', 262, 2565, 262, to_date('07-09-2817', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mekhi', 263, 1521, 263, to_date('31-01-2328', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Nikki', 264, 3212, 264, to_date('01-10-3045', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lupe', 265, 2238, 265, to_date('26-02-2947', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Sean', 266, 3399, 266, to_date('12-04-2267', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mint', 267, 2385, 267, to_date('16-03-2814', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Franz', 268, 3172, 268, to_date('03-09-2458', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bebe', 269, 1815, 269, to_date('04-05-2968', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rich', 270, 3623, 270, to_date('23-03-2572', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ron', 271, 2623, 271, to_date('03-07-2342', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mos', 272, 1842, 272, to_date('02-10-1933', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Nicky', 273, 3669, 273, to_date('03-12-2734', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tim', 274, 1029, 274, to_date('21-06-2636', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ike', 275, 1677, 275, to_date('06-07-2361', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Anthony', 276, 1507, 276, to_date('30-01-2759', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mint', 277, 3452, 277, to_date('21-05-2891', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Daryl', 278, 1664, 278, to_date('29-09-2144', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Matthew', 279, 2309, 279, to_date('12-05-2329', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Andrea', 280, 1933, 280, to_date('11-03-2686', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Arturo', 281, 3967, 281, to_date('17-09-2719', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Janice', 282, 3538, 282, to_date('21-02-2348', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vienna', 283, 2583, 283, to_date('13-06-2290', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Hugo', 284, 3081, 284, to_date('20-11-2797', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Max', 285, 2073, 285, to_date('08-06-2769', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Morgan', 286, 2748, 286, to_date('02-12-2555', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Fairuza', 287, 1985, 287, to_date('19-05-2605', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Parker', 288, 3260, 288, to_date('08-10-3072', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Liam', 289, 1661, 289, to_date('14-05-2151', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Delroy', 290, 1247, 290, to_date('12-05-2200', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rawlins', 291, 2999, 291, to_date('25-10-2983', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cevin', 292, 3817, 292, to_date('10-10-2539', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Manu', 293, 1391, 293, to_date('05-11-2786', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rupert', 294, 2236, 294, to_date('08-05-2172', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lennie', 295, 2158, 295, to_date('01-02-2088', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Guy', 296, 2231, 296, to_date('23-02-2571', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Nik', 297, 2590, 297, to_date('04-10-2624', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dorry', 298, 3921, 298, to_date('09-05-2947', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Stevie', 299, 1401, 299, to_date('17-01-2797', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Woody', 300, 1213, 300, to_date('08-01-2749', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vern', 301, 2494, 301, to_date('11-06-2465', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Leon', 302, 3113, 302, to_date('20-11-2018', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Elijah', 303, 2251, 303, to_date('26-06-2643', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Machine', 304, 2184, 304, to_date('25-12-2552', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Gilberto', 305, 1763, 305, to_date('22-01-1936', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Gena', 306, 2916, 306, to_date('30-01-2858', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Madeline', 307, 3130, 307, to_date('04-09-2148', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Alannah', 308, 3225, 308, to_date('06-07-2419', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rosanne', 309, 1924, 309, to_date('29-12-2788', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Albertina', 310, 1476, 310, to_date('08-01-2051', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lila', 311, 2858, 311, to_date('18-12-2923', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Alicia', 312, 1369, 312, to_date('26-09-2721', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Kyle', 313, 2171, 313, to_date('29-06-2711', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Steve', 314, 2527, 314, to_date('27-10-2697', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Merrilee', 315, 2116, 315, to_date('09-08-2980', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Etta', 316, 2844, 316, to_date('19-09-3039', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Elias', 317, 2706, 317, to_date('04-08-1933', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Juice', 318, 2229, 318, to_date('04-07-2498', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lauren', 319, 1441, 319, to_date('26-12-2862', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Davey', 320, 3616, 320, to_date('21-08-2033', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Juice', 321, 1519, 321, to_date('17-11-2882', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jesus', 322, 3514, 322, to_date('12-10-2845', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ted', 323, 1040, 323, to_date('14-04-2412', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Wesley', 324, 2359, 324, to_date('13-12-2053', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Judd', 325, 2304, 325, to_date('16-10-2242', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Anna', 326, 1948, 326, to_date('17-08-2048', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lin', 327, 2461, 327, to_date('28-08-2363', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Crystal', 328, 3693, 328, to_date('16-12-2925', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Kid', 329, 3910, 329, to_date('19-07-2111', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Vertical', 330, 1818, 330, to_date('16-02-1956', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rascal', 331, 3938, 331, to_date('23-03-2931', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Maureen', 332, 3312, 332, to_date('28-12-2565', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Alex', 333, 2517, 333, to_date('02-04-2577', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Alan', 334, 1948, 334, to_date('29-07-2276', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bo', 335, 2940, 335, to_date('13-08-2412', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cherry', 336, 1353, 336, to_date('29-08-2389', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Brooke', 337, 2452, 337, to_date('27-01-2994', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Taryn', 338, 2468, 338, to_date('19-12-3041', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Trick', 339, 2230, 339, to_date('02-06-2666', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rita', 340, 1130, 340, to_date('12-08-2831', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Cathy', 341, 2312, 341, to_date('08-02-1909', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Desmond', 342, 3525, 342, to_date('08-12-3035', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Andrea', 343, 1473, 343, to_date('18-09-2739', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Kasey', 344, 2065, 344, to_date('13-03-2812', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Wally', 345, 1822, 345, to_date('21-04-2346', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Eddie', 346, 3670, 346, to_date('26-01-2288', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tommy', 347, 2202, 347, to_date('08-02-2198', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Anthony', 348, 2459, 348, to_date('24-06-1993', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Clay', 349, 3599, 349, to_date('28-10-2401', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Deborah', 350, 3398, 350, to_date('29-04-2920', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Roddy', 351, 3673, 351, to_date('17-12-1902', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Debi', 352, 1434, 352, to_date('21-03-2609', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ernest', 353, 2746, 353, to_date('30-05-1963', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Derek', 354, 2088, 354, to_date('20-04-2925', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Aidan', 355, 3917, 355, to_date('05-09-2033', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Coley', 356, 2172, 356, to_date('20-10-2067', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Aidan', 357, 2936, 357, to_date('03-05-2568', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Woody', 358, 1324, 358, to_date('13-05-2444', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rik', 359, 3041, 359, to_date('08-09-2150', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Leonardo', 360, 1306, 360, to_date('17-09-1922', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Sandra', 361, 2431, 361, to_date('18-09-2402', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rosco', 362, 1313, 362, to_date('16-06-2426', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rachid', 363, 3558, 363, to_date('29-11-2508', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Salma', 364, 1071, 364, to_date('05-01-2655', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Latin', 365, 2179, 365, to_date('24-09-2849', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Sal', 366, 1919, 366, to_date('24-05-2888', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jennifer', 367, 3300, 367, to_date('04-01-2598', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Xander', 368, 3570, 368, to_date('25-01-2219', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jack', 369, 1934, 369, to_date('10-08-2131', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dave', 370, 2512, 370, to_date('23-12-2411', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Dorry', 371, 1223, 371, to_date('18-10-2586', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Howard', 372, 1277, 372, to_date('08-06-2485', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Freddie', 373, 2062, 373, to_date('03-02-2448', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Sandra', 374, 1646, 374, to_date('26-12-1982', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tal', 375, 1135, 375, to_date('15-01-3060', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lauren', 376, 2630, 376, to_date('12-12-2138', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Amy', 377, 2456, 377, to_date('28-07-2040', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tyrone', 378, 1273, 378, to_date('21-04-2460', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Mickey', 379, 2148, 379, to_date('09-08-2257', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ceili', 380, 3308, 380, to_date('09-06-1920', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Bonnie', 381, 2724, 381, to_date('13-05-2700', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Domingo', 382, 3006, 382, to_date('10-12-2895', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ellen', 383, 1402, 383, to_date('30-12-2078', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Hilton', 384, 3584, 384, to_date('12-12-2533', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jody', 385, 2591, 385, to_date('15-04-2386', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Tramaine', 386, 2635, 386, to_date('25-02-2517', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Kevn', 387, 2366, 387, to_date('08-08-2660', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rodney', 388, 1835, 388, to_date('12-03-2881', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Loreena', 389, 2162, 389, to_date('08-04-2882', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Leo', 390, 1910, 390, to_date('06-05-2420', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Harriet', 391, 1745, 391, to_date('07-05-2080', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Rade', 392, 3078, 392, to_date('26-05-3051', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Miles', 393, 2496, 393, to_date('15-12-2747', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Ernie', 394, 3303, 394, to_date('16-06-2144', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Liv', 395, 3809, 395, to_date('16-07-2751', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Jesse', 396, 1144, 396, to_date('17-06-2677', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Deborah', 397, 1632, 397, to_date('01-04-2553', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Lindsay', 398, 2240, 398, to_date('06-05-3048', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Angela', 399, 3673, 399, to_date('01-04-2843', 'dd-mm-yyyy'));
insert into TRIPS (name, id_trip, price, id_transportation, trip_date)
values ('Denis', 400, 1850, 400, to_date('02-06-2026', 'dd-mm-yyyy'));
commit;
prompt 400 records loaded
prompt Loading DESTINATIONS...
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kirsten', 1, 'The jurney begins: odio expedita nostrud est quidem commodo.  qui aut et sunt. ', 1);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dean', 2, 'The jurney begins: maxime debitis accusamus mollitia tempor et. ', 2);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bebe', 3, 'The jurney begins: dolores non in et qui incididunt.  id. ', 3);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Danni', 4, 'The jurney begins: elit distinctio in nulla in eos.  in placeat est consequat est a.  facilis eiusmo', 4);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Allan', 5, 'The jurney begins: delectus sed. ', 5);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Terrence', 6, 'The jurney begins: ex ad aut debitis perferendis optio.  assumenda aut nam deserunt est alias. ', 6);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bruce', 7, 'The jurney begins: cumque occaecati veniam dolore deleniti mollitia.  est rerum ut reiciendis eiusmo', 7);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Freda', 8, 'The jurney begins: quo fuga excepturi eveniet et adipisicing.  rerum amet laborum aute. ', 8);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hector', 9, 'The jurney begins: cumque omnis itaque harum assumenda qui.  quo quibusdam tempor impedit voluptates', 9);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bonnie', 10, 'The jurney begins: sint. ', 10);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Halle', 11, 'The jurney begins: qui excepturi nobis velit aliqua. ', 11);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ronnie', 12, 'The jurney begins: ', 12);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bette', 13, 'The jurney begins: iusto nam rerum omnis voluptatibus adipisicing.  et in quidem omnis. ', 13);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Billy', 14, 'The jurney begins: in dolorum assumenda dolor excepteur anim. ', 14);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hookah', 15, 'The jurney begins: delectus aute et et est harum.  quod non voluptatibus quos doloribus. ', 15);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chazz', 16, 'The jurney begins: in irure. ', 16);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Tom', 17, 'The jurney begins: omnis. ', 17);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Renee', 18, 'The jurney begins: amet in tenetur sint voluptates soluta.  mollit. ', 18);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Candice', 19, 'The jurney begins: amet velit earum delectus et aut.  ad in. ', 19);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Patricia', 20, 'The jurney begins: dolore veniam rerum est. ', 20);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Katrin', 21, 'The jurney begins: ducimus voluptates reprehenderit distinctio esse excepturi.  perferendis. ', 21);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Christopher', 22, 'The jurney begins: nisi dolore. ', 22);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Danny', 23, 'The jurney begins: aut cupiditate eos dolor nostrud est.  consequat optio est at praesentium. ', 23);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mandy', 24, 'The jurney begins: libero et consectetur cillum eligendi. ', 24);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Amy', 25, 'The jurney begins: est impedit cumque officia non omnis.  aute sint. ', 25);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Charlton', 26, 'The jurney begins: est aliquip hic et dolore et.  in quos officia dolor rerum. ', 26);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Terry', 27, 'The jurney begins: vero et qui odio. ', 27);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cornell', 28, 'The jurney begins: eos ullamco velit sunt ut et.  et sint molestiae proident molestias. ', 28);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ashton', 29, 'The jurney begins: officiis voluptatibus soluta rerum et aliquip. ', 29);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lucy', 30, 'The jurney begins: amet ut eveniet. ', 30);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rolando', 31, 'The jurney begins: ipsum dignissimos quis et minus rerum.  et ducimus facilis ut earum. ', 31);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joe', 32, 'The jurney begins: ad est lorem et a magna.  qui qui eveniet dolor. ', 32);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ned', 33, 'The jurney begins: maxime ut velit sit voluptate at.  ut accusamus et quis quas molestias. ', 33);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Michael', 34, 'The jurney begins: laboris id et ducimus. ', 34);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Selma', 35, 'The jurney begins: asperiores ex. ', 35);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Blair', 36, 'The jurney begins: at est irure. ', 36);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gord', 37, 'The jurney begins: elit dolor culpa deleniti laborum laborum.  impedit. ', 37);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joan', 38, 'The jurney begins: animi magna aliqua cillum deserunt nihil.  et odio facilis non in est.  at. ', 38);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jena', 39, 'The jurney begins: possimus praesentium fuga exercitation culpa id.  hic earum quo. ', 39);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kathleen', 40, 'The jurney begins: impedit placeat ut dolor voluptatum laborum. ', 40);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Amy', 41, 'The jurney begins: ad enim in. ', 41);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ellen', 42, 'The jurney begins: ', 42);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lupe', 43, 'The jurney begins: earum. ', 43);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chuck', 44, 'The jurney begins: ea culpa nulla tempor temporibus. ', 44);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shirley', 45, 'The jurney begins: ', 45);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lee', 46, 'The jurney begins: sint cumque sunt est sit eligendi. ', 46);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Clay', 47, 'The jurney begins: id expedita aute eos quidem. ', 47);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jann', 48, 'The jurney begins: aliqua aut incididunt laboris aut. ', 48);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jackson', 49, 'The jurney begins: et lorem dolor maxime. ', 49);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hector', 50, 'The jurney begins: dolore est est adipisicing quidem cillum. ', 50);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ani', 51, 'The jurney begins: occaecat dolorum qui tempor ex doloribus.  et in aut. ', 51);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Andy', 52, 'The jurney begins: a dolorum temporibus quod delectus id.  rerum et facilis distinctio eveniet debit', 52);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Tommy', 53, 'The jurney begins: in ut dolore nulla dolore praesentium. ', 53);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Anjelica', 54, 'The jurney begins: facilis autem id sint rerum irure.  itaque qui velit velit. ', 54);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Melanie', 55, 'The jurney begins: sapiente in amet do necessitatibus recusandae.  dolore facilis enim aliquip asper', 55);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Remy', 56, 'The jurney begins: cupiditate maiores excepturi. ', 56);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Darius', 57, 'The jurney begins: non rerum id fugiat nisi. ', 57);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Olga', 58, 'The jurney begins: dolorum. ', 58);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vince', 59, 'The jurney begins: expedita aut consequatur molestiae at deserunt.  in. ', 59);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hector', 60, 'The jurney begins: reprehenderit esse dolor quo quos cum. ', 60);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Liam', 61, 'The jurney begins: aliquip in libero fugiat in debitis.  est est facere iusto et qui.  aute deserunt', 61);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Beverley', 62, 'The jurney begins: laboris et possimus recusandae aut atque. ', 62);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Judd', 63, 'The jurney begins: proident ut minim cupidatat consequatur omnis.  a distinctio. ', 63);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Udo', 64, 'The jurney begins: sit sunt id rerum sed molestias.  enim ut nobis dolorum reprehenderit in. ', 64);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harriet', 65, 'The jurney begins: ducimus atque sapiente iusto sint saepe.  ut rerum in atque. ', 65);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cesar', 66, 'The jurney begins: ut aliqua ut voluptas tempore ut. ', 66);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Irene', 67, 'The jurney begins: ', 67);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Janice', 68, 'The jurney begins: ', 68);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maury', 69, 'The jurney begins: dignissimos ut animi sint eos voluptates. ', 69);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Quentin', 70, 'The jurney begins: eu hic consequat maiores possimus ut.  amet minus nobis doloribus occaecati vero.', 70);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Holly', 71, 'The jurney begins: incididunt ut aliquip magna voluptate in. ', 71);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jimmy', 72, 'The jurney begins: earum dolore. ', 72);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sal', 73, 'The jurney begins: assumenda dolor reprehenderit nulla. ', 73);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Breckin', 74, 'The jurney begins: quidem commodo libero voluptate. ', 74);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rob', 75, 'The jurney begins: et asperiores praesentium possimus nostrud. ', 75);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lou', 76, 'The jurney begins: ducimus ut ut animi facilis officiis.  rerum et non dolores optio officia. ', 76);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Belinda', 77, 'The jurney begins: laborum minus nisi fuga voluptates. ', 77);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Laurence', 78, 'The jurney begins: et. ', 78);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vince', 79, 'The jurney begins: deserunt in dignissimos irure iusto do.  possimus aut. ', 79);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lari', 80, 'The jurney begins: eiusmod odio. ', 80);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marley', 81, 'The jurney begins: ', 81);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Herbie', 82, 'The jurney begins: temporibus accusamus nulla in dolorum incididunt.  pariatur deserunt libero. ', 82);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gailard', 83, 'The jurney begins: non elit minus dolores culpa tempor.  distinctio laborum ut. ', 83);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lily', 84, 'The jurney begins: ', 84);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Teri', 85, 'The jurney begins: nobis nisi in aut soluta dolor.  veniam. ', 85);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gene', 86, 'The jurney begins: fugiat laborum. ', 86);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lea', 87, 'The jurney begins: id maxime minus. ', 87);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ronny', 88, 'The jurney begins: dolor quis. ', 88);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Tilda', 89, 'The jurney begins: ut in eiusmod voluptate et qui.  rerum eos minus. ', 89);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maury', 90, 'The jurney begins: irure et quod aut ipsum quod.  est. ', 90);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jonathan', 91, 'The jurney begins: repellat aut nisi sunt tempor quis. ', 91);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jared', 92, 'The jurney begins: earum ut sapiente amet. ', 92);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gordon', 93, 'The jurney begins: expedita ut nobis aute assumenda sint.  sint adipisicing. ', 93);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sylvester', 94, 'The jurney begins: saepe quidem dolor sint culpa in.  et. ', 94);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Breckin', 95, 'The jurney begins: nulla nam id. ', 95);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chloe', 96, 'The jurney begins: asperiores voluptatum. ', 96);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lily', 97, 'The jurney begins: ullamco quidem alias. ', 97);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Alessandro', 98, 'The jurney begins: dolor adipisicing dolor expedita id sapiente.  et sed quos eveniet. ', 98);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Elvis', 99, 'The jurney begins: irure minus aut possimus eligendi ex.  tenetur laborum. ', 99);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chi', 100, 'The jurney begins: ', 100);
commit;
prompt 100 records committed...
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ozzy', 101, 'The jurney begins: accusamus atque quos officia nulla ad.  excepteur qui reprehenderit. ', 101);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stellan', 102, 'The jurney begins: vero delectus minim dolorum. ', 102);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ricky', 103, 'The jurney begins: earum non officia et rerum pariatur.  consequat molestiae in voluptas. ', 103);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Eileen', 104, 'The jurney begins: aut adipisicing maxime. ', 104);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Wayman', 105, 'The jurney begins: quibusdam sunt pariatur dolor. ', 105);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stephen', 106, 'The jurney begins: temporibus rerum in adipisicing. ', 106);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mary', 107, 'The jurney begins: odio atque officia autem rerum ut.  repellendus in asperiores assumenda. ', 107);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Melanie', 108, 'The jurney begins: placeat nisi et non et est. ', 108);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sylvester', 109, 'The jurney begins: praesentium saepe voluptas in quidem id. ', 109);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Carlos', 110, 'The jurney begins: officia elit eligendi. ', 110);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Claude', 111, 'The jurney begins: placeat commodo est fugiat proident corrupti.  aliquip at et. ', 111);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Christopher', 112, 'The jurney begins: impedit non. ', 112);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Patrick', 113, 'The jurney begins: nulla voluptates ducimus dolor cillum consectetur.  occaecati delectus delectus t', 113);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Etta', 114, 'The jurney begins: ad laborum cillum ut animi accusamus. ', 114);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mira', 115, 'The jurney begins: vero sint repellat. ', 115);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Trey', 116, 'The jurney begins: et odio ut veniam quos minim.  id proident. ', 116);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kris', 117, 'The jurney begins: labore id anim ullamco. ', 117);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rene', 118, 'The jurney begins: animi nulla praesentium saepe. ', 118);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gabriel', 119, 'The jurney begins: ', 119);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rueben', 120, 'The jurney begins: ullamco molestiae est dolor dolore est.  nisi in anim voluptate. ', 120);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Adam', 121, 'The jurney begins: qui sunt dolore cupiditate culpa autem.  lorem reiciendis et. ', 121);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Amy', 122, 'The jurney begins: irure quibusdam soluta minim expedita in. ', 122);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Thelma', 123, 'The jurney begins: aute atque fuga exercitation et. ', 123);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cole', 124, 'The jurney begins: praesentium et eveniet. ', 124);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jena', 125, 'The jurney begins: omnis et molestiae mollit alias officia.  enim. ', 125);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jack', 126, 'The jurney begins: amet nihil assumenda necessitatibus tempor excepturi.  nobis. ', 126);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Machine', 127, 'The jurney begins: at autem earum ut. ', 127);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Penelope', 128, 'The jurney begins: occaecat dolores optio et consequat maiores.  omnis tenetur mollitia. ', 128);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Betty', 129, 'The jurney begins: harum laborum debitis amet est impedit.  fugiat. ', 129);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Etta', 130, 'The jurney begins: officia. ', 130);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lionel', 131, 'The jurney begins: optio officia nobis magna tempore cillum.  itaque. ', 131);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Darius', 132, 'The jurney begins: maxime esse ut ut rerum sint.  duis sapiente omnis ex sunt delectus.  duis esse. ', 132);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Charlie', 133, 'The jurney begins: dignissimos proident expedita hic. ', 133);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Julianne', 134, 'The jurney begins: aut magna ducimus labore quo debitis.  aut itaque sit. ', 134);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ronny', 135, 'The jurney begins: commodo debitis aut delectus iusto in.  in ut ut anim. ', 135);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Judy', 136, 'The jurney begins: sed aut officiis odio consequat fuga. ', 136);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Selma', 137, 'The jurney begins: hic laboris mollitia maiores vero sed.  aut omnis at ut et distinctio.  in. ', 137);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mae', 138, 'The jurney begins: assumenda et rerum harum cupidatat voluptatum.  cillum ut dolores dolore tempor o', 138);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Brooke', 139, 'The jurney begins: dolor excepturi culpa dolorum ducimus commodo.  reprehenderit harum deserunt veni', 139);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Grace', 140, 'The jurney begins: consequatur et aliqua aliqua dolores qui.  voluptas velit dolor. ', 140);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jason', 141, 'The jurney begins: expedita nam quod officia cum. ', 141);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Linda', 142, 'The jurney begins: tenetur qui cupidatat doloribus pariatur fugiat. ', 142);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mark', 143, 'The jurney begins: proident at a non et nisi.  ducimus magna aut et nostrud. ', 143);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kenneth', 144, 'The jurney begins: labore et atque incididunt amet non.  est et culpa quos voluptas sint.  minim. ', 144);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Allison', 145, 'The jurney begins: est et mollit aut. ', 145);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hex', 146, 'The jurney begins: nam harum. ', 146);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nina', 147, 'The jurney begins: et aliquip voluptates nam. ', 147);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Oro', 148, 'The jurney begins: et voluptate. ', 148);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ty', 149, 'The jurney begins: ', 149);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ricky', 150, 'The jurney begins: ', 150);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Suzanne', 151, 'The jurney begins: et et occaecat anim dolore non.  veniam sit vero doloribus in quas. ', 151);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Remy', 152, 'The jurney begins: impedit voluptate expedita. ', 152);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Charlton', 153, 'The jurney begins: et maiores eligendi id in qui.  magna. ', 153);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Domingo', 154, 'The jurney begins: ex. ', 154);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harriet', 155, 'The jurney begins: et libero. ', 155);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marianne', 156, 'The jurney begins: sunt irure maxime dolor qui tempor.  id facilis sint. ', 156);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gilbert', 157, 'The jurney begins: iusto. ', 157);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gloria', 158, 'The jurney begins: enim quibusdam omnis delectus mollitia labore.  a laborum. ', 158);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Wayne', 159, 'The jurney begins: quis sapiente et nulla et non.  recusandae. ', 159);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Betty', 160, 'The jurney begins: eos aute maiores est et impedit.  et et est nihil anim labore. ', 160);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jonatha', 161, 'The jurney begins: officiis delectus mollitia mollit. ', 161);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shirley', 162, 'The jurney begins: a cillum est eligendi. ', 162);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gates', 163, 'The jurney begins: libero impedit. ', 163);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ernest', 164, 'The jurney begins: lorem et mollitia harum non occaecat.  culpa odio id est deserunt corrupti. ', 164);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Darren', 165, 'The jurney begins: est in impedit et eos ut. ', 165);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jeremy', 166, 'The jurney begins: anim in ut dignissimos laborum id.  tempore fuga aute. ', 166);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Glen', 167, 'The jurney begins: itaque. ', 167);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chazz', 168, 'The jurney begins: ut et. ', 168);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kurtwood', 169, 'The jurney begins: sapiente repudiandae nulla sunt et maxime.  id ut qui. ', 169);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Toshiro', 170, 'The jurney begins: dolores. ', 170);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Radney', 171, 'The jurney begins: nam nobis laborum reprehenderit minus eligendi.  deserunt nam cillum qui anim par', 171);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Faye', 172, 'The jurney begins: placeat dignissimos saepe laborum. ', 172);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nicky', 173, 'The jurney begins: ', 173);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joaquim', 174, 'The jurney begins: voluptatum cumque sapiente corrupti. ', 174);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marie', 175, 'The jurney begins: ', 175);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shannyn', 176, 'The jurney begins: delectus at amet necessitatibus incididunt iusto.  assumenda quis pariatur ad. ', 176);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nikki', 177, 'The jurney begins: at est do dignissimos. ', 177);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dave', 178, 'The jurney begins: ut quod eveniet adipisicing molestias ad.  et voluptas reprehenderit. ', 178);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bob', 179, 'The jurney begins: ducimus. ', 179);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Val', 180, 'The jurney begins: incididunt. ', 180);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Val', 181, 'The jurney begins: non aut non itaque iusto temporibus. ', 181);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Terri', 182, 'The jurney begins: ', 182);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Collective', 183, 'The jurney begins: debitis. ', 183);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vin', 184, 'The jurney begins: duis molestiae sapiente. ', 184);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Trini', 185, 'The jurney begins: sunt harum ut. ', 185);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Buddy', 186, 'The jurney begins: ', 186);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Forest', 187, 'The jurney begins: eu et. ', 187);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jeff', 188, 'The jurney begins: amet earum consectetur amet. ', 188);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Natascha', 189, 'The jurney begins: enim est aut ducimus voluptates ex.  minus ut similique delectus molestias. ', 189);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Denis', 190, 'The jurney begins: quidem in mollitia minim eiusmod sint.  asperiores minus cupiditate sed est offic', 190);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Scarlett', 191, 'The jurney begins: in eu velit ut veniam. ', 191);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hector', 192, 'The jurney begins: ut velit consequat et. ', 192);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hikaru', 193, 'The jurney begins: in deserunt ut consectetur placeat nulla.  aut dolor. ', 193);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mindy', 194, 'The jurney begins: tempor repellat qui laboris deserunt harum.  exercitation corrupti occaecat. ', 194);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('CeCe', 195, 'The jurney begins: est delectus aut voluptate in voluptatibus.  nam aut saepe animi do mollitia. ', 195);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Amanda', 196, 'The jurney begins: aut repudiandae non rerum pariatur in.  nisi et tempor sint ut voluptate. ', 196);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Judy', 197, 'The jurney begins: amet non occaecat quos necessitatibus ducimus.  et assumenda enim quas. ', 197);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Balthazar', 198, 'The jurney begins: est laborum nobis in nobis esse.  omnis voluptate. ', 198);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nancy', 199, 'The jurney begins: officia in esse et tempore lorem. ', 199);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ivan', 200, 'The jurney begins: est animi omnis voluptas voluptas sint.  id cum ut. ', 200);
commit;
prompt 200 records committed...
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ani', 201, 'The jurney begins: sunt hic nulla optio quidem alias.  deleniti ut doloribus eos. ', 201);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Candice', 202, 'The jurney begins: quo proident non a ad eveniet.  blanditiis eiusmod sunt. ', 202);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dennis', 203, 'The jurney begins: quas voluptas omnis elit omnis aut.  qui maxime ut accusamus animi. ', 203);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Alex', 204, 'The jurney begins: placeat. ', 204);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Garth', 205, 'The jurney begins: voluptatum magna alias deserunt non autem.  tenetur aut. ', 205);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Phil', 206, 'The jurney begins: et culpa et laborum praesentium aliqua. ', 206);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kate', 207, 'The jurney begins: occaecat incididunt occaecati mollitia ad eu. ', 207);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Courtney', 208, 'The jurney begins: praesentium exercitation cillum harum labore. ', 208);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sona', 209, 'The jurney begins: labore facilis corrupti ipsum nulla eveniet.  elit et voluptates est sunt nihil. ', 209);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rick', 210, 'The jurney begins: dolores harum laborum velit aliqua non.  optio rerum deserunt. ', 210);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gena', 211, 'The jurney begins: aut sunt eveniet sed voluptas anim.  eos ut facere saepe dolor. ', 211);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bill', 212, 'The jurney begins: vero omnis quibusdam in nobis mollitia.  assumenda nobis consequat voluptates. ', 212);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Benjamin', 213, 'The jurney begins: et deleniti aliqua cupidatat amet irure.  saepe eiusmod lorem sunt voluptate volu', 213);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nastassja', 214, 'The jurney begins: sint accusamus blanditiis occaecati temporibus. ', 214);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Taylor', 215, 'The jurney begins: officiis mollit labore impedit eveniet officiis.  quis aut rerum aut non et. ', 215);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jared', 216, 'The jurney begins: elit esse rerum. ', 216);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jerry', 217, 'The jurney begins: dolor nulla eu tenetur nostrud maxime.  enim molestias ex aut. ', 217);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Latin', 218, 'The jurney begins: mollit irure voluptatum ducimus sint et.  lorem aut. ', 218);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ozzy', 219, 'The jurney begins: impedit labore facilis non quis est.  repellendus. ', 219);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Steve', 220, 'The jurney begins: id enim saepe harum maxime rerum.  nostrud dolorum aut. ', 220);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Beverley', 221, 'The jurney begins: omnis esse voluptatibus recusandae occaecat. ', 221);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Edward', 222, 'The jurney begins: est aliqua tempor culpa quidem est.  voluptate voluptate ad lorem ipsum. ', 222);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jose', 223, 'The jurney begins: elit consequat sapiente magna quo provident.  a sunt cum cupiditate ipsum sapient', 223);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Talvin', 224, 'The jurney begins: est id id officia earum ut.  quidem laborum rerum. ', 224);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maceo', 225, 'The jurney begins: in adipisicing pariatur hic ut. ', 225);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Charlton', 226, 'The jurney begins: blanditiis culpa ea ut aute et.  qui quo est dolor voluptates minim.  veniam. ', 226);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gordon', 227, 'The jurney begins: officiis nostrud itaque et. ', 227);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Geena', 228, 'The jurney begins: et eligendi accusamus quo velit dolore.  optio cum excepteur et nihil voluptatum.', 228);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hope', 229, 'The jurney begins: maiores nobis facilis et voluptates ea.  amet elit est nostrud id qui. ', 229);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Elijah', 230, 'The jurney begins: molestias iusto ut non voluptatum pariatur.  molestias. ', 230);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Pete', 231, 'The jurney begins: quas vero voluptas accusamus nihil. ', 231);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Edie', 232, 'The jurney begins: temporibus hic quidem omnis. ', 232);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nathan', 233, 'The jurney begins: aliquip dignissimos autem iusto eligendi. ', 233);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Toshiro', 234, 'The jurney begins: deserunt provident est non alias provident.  aliqua animi est mollit. ', 234);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Neneh', 235, 'The jurney begins: at quas provident eligendi adipisicing. ', 235);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Julianna', 236, 'The jurney begins: est cum officia sint. ', 236);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Alana', 237, 'The jurney begins: praesentium autem. ', 237);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shannyn', 238, 'The jurney begins: et officia sint mollitia sit iusto.  consequat recusandae id impedit asperiores e', 238);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Giancarlo', 239, 'The jurney begins: aut corrupti et do quidem temporibus.  et. ', 239);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Taye', 240, 'The jurney begins: distinctio repudiandae cumque non incididunt dolores.  soluta officia a est. ', 240);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kitty', 241, 'The jurney begins: iusto quidem. ', 241);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sarah', 242, 'The jurney begins: deserunt repudiandae molestias laborum non. ', 242);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Luke', 243, 'The jurney begins: magna officia dolore. ', 243);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Alec', 244, 'The jurney begins: aut repellendus assumenda et occaecat laborum.  cum. ', 244);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vertical', 245, 'The jurney begins: occaecat accusamus non est quos. ', 245);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Neneh', 246, 'The jurney begins: maxime eveniet doloribus voluptatum sapiente qui.  ullamco. ', 246);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maceo', 247, 'The jurney begins: rerum debitis quos labore dolor repellendus.  consequat. ', 247);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ernie', 248, 'The jurney begins: proident omnis non aut autem dolor. ', 248);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Colm', 249, 'The jurney begins: fuga et fugiat exercitation distinctio fuga.  fugiat adipisicing. ', 249);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Allison', 250, 'The jurney begins: ', 250);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dylan', 251, 'The jurney begins: duis repellat ipsum blanditiis nisi et.  id vero qui delectus. ', 251);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ricky', 252, 'The jurney begins: recusandae nihil ad. ', 252);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chalee', 253, 'The jurney begins: rerum in non distinctio soluta fuga. ', 253);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mia', 254, 'The jurney begins: dignissimos esse nisi molestiae itaque. ', 254);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nils', 255, 'The jurney begins: libero optio dolor molestias aut rerum.  odio. ', 255);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lynn', 256, 'The jurney begins: aut qui ex tempor. ', 256);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Norm', 257, 'The jurney begins: repellendus et. ', 257);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Graham', 258, 'The jurney begins: atque sapiente facere do iusto at.  rerum incididunt aliqua et corrupti duis. ', 258);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Crispin', 259, 'The jurney begins: et. ', 259);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lindsay', 260, 'The jurney begins: sed occaecat repellat provident pariatur corrupti.  minim quos dolor provident ut', 260);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Robert', 261, 'The jurney begins: occaecati dolor eu aut minus quod. ', 261);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maury', 262, 'The jurney begins: reprehenderit. ', 262);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cesar', 263, 'The jurney begins: eligendi eos elit sint cillum laborum.  ad maiores necessitatibus. ', 263);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Carole', 264, 'The jurney begins: ', 264);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Eugene', 265, 'The jurney begins: et eiusmod sunt asperiores occaecati aute.  rerum adipisicing id officia. ', 265);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harrison', 266, 'The jurney begins: do necessitatibus minus lorem lorem nobis.  elit adipisicing at soluta omnis ea. ', 266);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Humberto', 267, 'The jurney begins: laborum soluta quibusdam in quidem non.  sunt. ', 267);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Minnie', 268, 'The jurney begins: expedita est impedit voluptate praesentium voluptatibus. ', 268);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kate', 269, 'The jurney begins: quidem dolores voluptatum et blanditiis dignissimos.  ea consequatur dignissimos ', 269);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kiefer', 270, 'The jurney begins: repellendus in. ', 270);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Paula', 271, 'The jurney begins: ', 271);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marisa', 272, 'The jurney begins: aliquip nobis. ', 272);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nile', 273, 'The jurney begins: hic. ', 273);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lloyd', 274, 'The jurney begins: et et omnis sint et. ', 274);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Derrick', 275, 'The jurney begins: excepturi hic. ', 275);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Terry', 276, 'The jurney begins: mollit quidem. ', 276);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Louise', 277, 'The jurney begins: omnis id sunt autem culpa sunt.  eveniet. ', 277);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mandy', 278, 'The jurney begins: dolorum reiciendis sed quos omnis dolore.  sint cillum. ', 278);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rob', 279, 'The jurney begins: vero sed eligendi id et et.  dolore ducimus culpa. ', 279);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Juliana', 280, 'The jurney begins: accusamus elit cillum id libero distinctio.  ducimus in temporibus laboris elit m', 280);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Temuera', 281, 'The jurney begins: eos repellendus deserunt voluptatum nihil sunt.  dolorum. ', 281);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bobbi', 282, 'The jurney begins: magna nisi et laborum a soluta.  voluptatum dolorum culpa dolor. ', 282);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Seth', 283, 'The jurney begins: nam id maxime in et in.  exercitation. ', 283);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Patti', 284, 'The jurney begins: voluptatibus et debitis debitis. ', 284);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rachid', 285, 'The jurney begins: nobis facilis occaecati. ', 285);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lois', 286, 'The jurney begins: nostrud et corrupti atque at. ', 286);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bobby', 287, 'The jurney begins: aut expedita rerum perferendis magna reiciendis.  dolor eligendi commodo ut. ', 287);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joy', 288, 'The jurney begins: deleniti in molestiae dolor fugiat eos.  quos non laboris excepturi. ', 288);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mandy', 289, 'The jurney begins: quod. ', 289);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Freddy', 290, 'The jurney begins: dolor omnis sapiente occaecati quos commodo.  quibusdam. ', 290);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Edward', 291, 'The jurney begins: eos id incididunt minus molestiae aut.  et dolor occaecati sint deserunt esse. ', 291);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maureen', 292, 'The jurney begins: possimus rerum id dolore delectus laborum.  dolorum esse elit ut minim aliquip. ', 292);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ani', 293, 'The jurney begins: aut animi est est occaecat expedita.  rerum excepturi dolore est exercitation. ', 293);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joshua', 294, 'The jurney begins: ', 294);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Susan', 295, 'The jurney begins: dolor necessitatibus quod et elit optio.  enim ut animi. ', 295);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chad', 296, 'The jurney begins: expedita dolore officiis accusamus qui in.  adipisicing tempore et. ', 296);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vonda', 297, 'The jurney begins: et distinctio qui dolorum ut eveniet.  ducimus sint impedit deleniti. ', 297);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Regina', 298, 'The jurney begins: soluta molestias non fuga tenetur perferendis.  praesentium saepe. ', 298);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Praga', 299, 'The jurney begins: voluptas occaecat non facere id. ', 299);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Salma', 300, 'The jurney begins: optio ducimus corrupti cillum autem dolores.  duis deserunt voluptatibus elit. ', 300);
commit;
prompt 300 records committed...
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jena', 301, 'The jurney begins: itaque amet exercitation quibusdam officiis. ', 301);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mykelti', 302, 'The jurney begins: voluptas sint nulla excepteur ullamco maiores.  corrupti ut aliqua est mollit do.', 302);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Goldie', 303, 'The jurney begins: rerum et omnis ut est nihil.  occaecati eligendi ullamco ex ut vero.  in. ', 303);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Loreena', 304, 'The jurney begins: ex dignissimos. ', 304);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Carolyn', 305, 'The jurney begins: et labore adipisicing. ', 305);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rueben', 306, 'The jurney begins: a. ', 306);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Freda', 307, 'The jurney begins: repellendus in. ', 307);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Burt', 308, 'The jurney begins: in tenetur et laboris et excepturi.  maiores. ', 308);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Franco', 309, 'The jurney begins: repellat accusamus. ', 309);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Pamela', 310, 'The jurney begins: provident voluptates facere repellat sed nisi.  blanditiis et. ', 310);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vertical', 311, 'The jurney begins: ', 311);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Woody', 312, 'The jurney begins: ut rerum animi aliquip eligendi. ', 312);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Roscoe', 313, 'The jurney begins: consectetur incididunt sint molestiae. ', 313);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kurt', 314, 'The jurney begins: proident est exercitation animi dolore tenetur. ', 314);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harriet', 315, 'The jurney begins: sapiente non dolor soluta vero voluptates.  deleniti magna sapiente alias eu. ', 315);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ice', 316, 'The jurney begins: sit qui irure assumenda qui ut.  fugiat blanditiis et qui repudiandae at.  repell', 316);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Avenged', 317, 'The jurney begins: cillum eu fuga harum voluptatibus voluptatibus.  blanditiis tempore repudiandae. ', 317);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Johnny', 318, 'The jurney begins: qui eu. ', 318);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kris', 319, 'The jurney begins: dolores est deleniti quos. ', 319);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Liquid', 320, 'The jurney begins: libero nihil libero corrupti nostrud eu.  in delectus irure. ', 320);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shelby', 321, 'The jurney begins: tenetur non eos id necessitatibus. ', 321);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Isaiah', 322, 'The jurney begins: iusto optio cumque. ', 322);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Roddy', 323, 'The jurney begins: et. ', 323);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Frankie', 324, 'The jurney begins: harum et in officiis incididunt perferendis.  eveniet. ', 324);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Candice', 325, 'The jurney begins: quis placeat qui non in hic.  deserunt et facere est odio. ', 325);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Campbell', 326, 'The jurney begins: at. ', 326);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Millie', 327, 'The jurney begins: ', 327);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Isaiah', 328, 'The jurney begins: non ut laboris ex eiusmod et.  dolore et perferendis magna elit reprehenderit. ', 328);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Buddy', 329, 'The jurney begins: atque repudiandae est eveniet et deserunt.  quibusdam reiciendis ut. ', 329);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Debi', 330, 'The jurney begins: officia minus accusamus est est ducimus. ', 330);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cornell', 331, 'The jurney begins: omnis sunt et blanditiis ad ut.  facere sit irure lorem. ', 331);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mira', 332, 'The jurney begins: quos possimus dolore quo distinctio ullamco.  deserunt voluptatibus reiciendis et', 332);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Scott', 333, 'The jurney begins: dolor aute dolor sint repudiandae anim. ', 333);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Annie', 334, 'The jurney begins: odio excepturi adipisicing eos sapiente laborum.  minus atque ut harum est dolore', 334);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Natalie', 335, 'The jurney begins: est tenetur optio velit dolores in.  expedita provident laboris irure maxime dolo', 335);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jennifer', 336, 'The jurney begins: quod est irure cumque iusto sint.  culpa soluta nostrud. ', 336);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kay', 337, 'The jurney begins: voluptates nam ad dignissimos incididunt lorem.  nam. ', 337);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ellen', 338, 'The jurney begins: dolor culpa eu minus iusto eveniet. ', 338);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rade', 339, 'The jurney begins: deserunt dolorum blanditiis omnis saepe animi.  sint alias et. ', 339);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rory', 340, 'The jurney begins: distinctio dolor aliquip. ', 340);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Victor', 341, 'The jurney begins: corrupti laborum amet necessitatibus magna labore.  fuga. ', 341);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Emm', 342, 'The jurney begins: maiores. ', 342);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Woody', 343, 'The jurney begins: minim mollit. ', 343);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chubby', 344, 'The jurney begins: provident at necessitatibus doloribus. ', 344);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nik', 345, 'The jurney begins: voluptate lorem. ', 345);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rhys', 346, 'The jurney begins: dignissimos sunt. ', 346);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chubby', 347, 'The jurney begins: rerum ut amet debitis deserunt magna.  et cillum ex et deserunt aute. ', 347);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Julia', 348, 'The jurney begins: non ullamco eos alias occaecat quod.  minim eu. ', 348);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kelly', 349, 'The jurney begins: quod laborum culpa reprehenderit qui velit.  consequat aliquip excepteur. ', 349);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Janice', 350, 'The jurney begins: id eos tempore est sint molestiae.  lorem. ', 350);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jonathan', 351, 'The jurney begins: id. ', 351);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rita', 352, 'The jurney begins: nihil et corrupti in animi recusandae.  omnis sint. ', 352);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Earl', 353, 'The jurney begins: distinctio et. ', 353);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Wade', 354, 'The jurney begins: ex placeat fuga sed est nostrud. ', 354);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maureen', 355, 'The jurney begins: ', 355);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cliff', 356, 'The jurney begins: ', 356);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Micky', 357, 'The jurney begins: excepteur deserunt aliquip occaecati amet at.  distinctio officia deserunt repudi', 357);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Garth', 358, 'The jurney begins: assumenda ut maiores est occaecat officiis.  voluptas. ', 358);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Breckin', 359, 'The jurney begins: incididunt in in et perferendis est.  sint labore duis. ', 359);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ellen', 360, 'The jurney begins: amet autem facilis officiis et eos.  et omnis. ', 360);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Daniel', 361, 'The jurney begins: cupidatat excepteur proident mollitia lorem irure.  deleniti hic facere. ', 361);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stewart', 362, 'The jurney begins: culpa est corrupti magna deserunt officia.  est voluptatibus voluptas et ut. ', 362);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Freda', 363, 'The jurney begins: distinctio assumenda itaque. ', 363);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kenny', 364, 'The jurney begins: ', 364);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Christian', 365, 'The jurney begins: necessitatibus asperiores eu officia possimus commodo.  nostrud quos. ', 365);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mac', 366, 'The jurney begins: molestiae et non excepturi ducimus placeat. ', 366);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sara', 367, 'The jurney begins: proident duis eos minim. ', 367);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Danni', 368, 'The jurney begins: do necessitatibus est ut qui ut. ', 368);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cloris', 369, 'The jurney begins: et aut. ', 369);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Debbie', 370, 'The jurney begins: quidem nostrud sint hic elit. ', 370);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Fisher', 371, 'The jurney begins: eos duis reiciendis velit et quibusdam.  ullamco omnis dolore cum deserunt. ', 371);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joan', 372, 'The jurney begins: aut sint incididunt dolor enim eu.  soluta omnis repellat. ', 372);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lou', 373, 'The jurney begins: odio minim sint nulla tenetur dolorum.  nulla ut molestias harum ut. ', 373);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kylie', 374, 'The jurney begins: sint dignissimos ipsum. ', 374);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Fionnula', 375, 'The jurney begins: libero id excepturi non possimus qui.  eveniet non minim repudiandae. ', 375);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Trini', 376, 'The jurney begins: ', 376);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Halle', 377, 'The jurney begins: laboris. ', 377);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Robbie', 378, 'The jurney begins: dolore reprehenderit et et distinctio quo.  eu in nihil aute facere atque.  animi', 378);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dan', 379, 'The jurney begins: mollitia tempore saepe atque animi maiores.  omnis aut enim officia laborum sapie', 379);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nick', 380, 'The jurney begins: praesentium. ', 380);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Crispin', 381, 'The jurney begins: sunt velit. ', 381);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Brad', 382, 'The jurney begins: quod saepe. ', 382);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Davy', 383, 'The jurney begins: qui. ', 383);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Madeleine', 384, 'The jurney begins: similique laborum mollit excepteur sunt. ', 384);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cathy', 385, 'The jurney begins: adipisicing ea commodo earum elit dolor. ', 385);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marina', 386, 'The jurney begins: eu sapiente est consequat qui nisi. ', 386);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gary', 387, 'The jurney begins: officia doloribus blanditiis magna ea aut.  repellat laborum optio in id. ', 387);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rachel', 388, 'The jurney begins: exercitation et voluptates eveniet cupidatat possimus. ', 388);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Clea', 389, 'The jurney begins: in eos commodo occaecati. ', 389);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rhys', 390, 'The jurney begins: animi facilis et dolore et sunt.  ipsum consectetur. ', 390);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Spencer', 391, 'The jurney begins: qui blanditiis eos pariatur sint dolor.  hic a nostrud officia dolorum. ', 391);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lara', 392, 'The jurney begins: non ut rerum et in et.  tempore in nulla placeat tenetur ut.  aut commodo. ', 392);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Radney', 393, 'The jurney begins: necessitatibus et occaecati. ', 393);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harvey', 394, 'The jurney begins: sunt labore est mollitia ducimus impedit. ', 394);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Millie', 395, 'The jurney begins: ', 395);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Tobey', 396, 'The jurney begins: ', 396);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stephanie', 397, 'The jurney begins: necessitatibus molestiae rerum sint elit nihil. ', 397);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Leelee', 398, 'The jurney begins: itaque earum. ', 398);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stanley', 399, 'The jurney begins: repellat eiusmod. ', 399);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lloyd', 400, 'The jurney begins: nisi reiciendis aute in. ', 400);
commit;
prompt 400 records loaded
prompt Loading GUARD...
insert into GUARD (name, id_guard, number_phone)
values ('Tobey', 1, '0521796');
insert into GUARD (name, id_guard, number_phone)
values ('Fionnula', 2, '0578518');
insert into GUARD (name, id_guard, number_phone)
values ('Maceo', 3, '0546112');
insert into GUARD (name, id_guard, number_phone)
values ('Moe', 4, '0561076');
insert into GUARD (name, id_guard, number_phone)
values ('Roger', 5, '0548555');
insert into GUARD (name, id_guard, number_phone)
values ('Daniel', 6, '0575938');
insert into GUARD (name, id_guard, number_phone)
values ('Christmas', 7, '0539338');
insert into GUARD (name, id_guard, number_phone)
values ('Tia', 8, '0559175');
insert into GUARD (name, id_guard, number_phone)
values ('Cliff', 9, '0541106');
insert into GUARD (name, id_guard, number_phone)
values ('Laura', 10, '0599346');
insert into GUARD (name, id_guard, number_phone)
values ('Ernest', 11, '0595241');
insert into GUARD (name, id_guard, number_phone)
values ('Kathleen', 12, '0597517');
insert into GUARD (name, id_guard, number_phone)
values ('Jann', 13, '0576005');
insert into GUARD (name, id_guard, number_phone)
values ('Bobbi', 14, '0522210');
insert into GUARD (name, id_guard, number_phone)
values ('Cornell', 15, '0542616');
insert into GUARD (name, id_guard, number_phone)
values ('Hope', 16, '0540744');
insert into GUARD (name, id_guard, number_phone)
values ('Juice', 17, '0574905');
insert into GUARD (name, id_guard, number_phone)
values ('Gailard', 18, '0539101');
insert into GUARD (name, id_guard, number_phone)
values ('Edie', 19, '0547931');
insert into GUARD (name, id_guard, number_phone)
values ('Ronny', 20, '0542537');
insert into GUARD (name, id_guard, number_phone)
values ('Nick', 21, '0548591');
insert into GUARD (name, id_guard, number_phone)
values ('Rhea', 22, '0552401');
insert into GUARD (name, id_guard, number_phone)
values ('Elle', 23, '0544263');
insert into GUARD (name, id_guard, number_phone)
values ('Rickie', 24, '0539435');
insert into GUARD (name, id_guard, number_phone)
values ('Rebecca', 25, '0573394');
insert into GUARD (name, id_guard, number_phone)
values ('Spike', 26, '0552845');
insert into GUARD (name, id_guard, number_phone)
values ('Christian', 27, '0521007');
insert into GUARD (name, id_guard, number_phone)
values ('Kevin', 28, '0543993');
insert into GUARD (name, id_guard, number_phone)
values ('Shirley', 29, '0555244');
insert into GUARD (name, id_guard, number_phone)
values ('Carla', 30, '0533020');
insert into GUARD (name, id_guard, number_phone)
values ('Aaron', 31, '0538095');
insert into GUARD (name, id_guard, number_phone)
values ('Lonnie', 32, '0556969');
insert into GUARD (name, id_guard, number_phone)
values ('Vanessa', 33, '0543320');
insert into GUARD (name, id_guard, number_phone)
values ('Woody', 34, '0526195');
insert into GUARD (name, id_guard, number_phone)
values ('Wayman', 35, '0548162');
insert into GUARD (name, id_guard, number_phone)
values ('Isabella', 36, '0544396');
insert into GUARD (name, id_guard, number_phone)
values ('Andie', 37, '0574355');
insert into GUARD (name, id_guard, number_phone)
values ('Shannyn', 38, '0512738');
insert into GUARD (name, id_guard, number_phone)
values ('Lesley', 39, '0545475');
insert into GUARD (name, id_guard, number_phone)
values ('Gates', 40, '0589852');
insert into GUARD (name, id_guard, number_phone)
values ('Russell', 41, '0530724');
insert into GUARD (name, id_guard, number_phone)
values ('Lance', 42, '0590591');
insert into GUARD (name, id_guard, number_phone)
values ('Bobbi', 43, '0537561');
insert into GUARD (name, id_guard, number_phone)
values ('Danny', 44, '0552648');
insert into GUARD (name, id_guard, number_phone)
values ('Busta', 45, '0568216');
insert into GUARD (name, id_guard, number_phone)
values ('Kathy', 46, '0528851');
insert into GUARD (name, id_guard, number_phone)
values ('Latin', 47, '0529942');
insert into GUARD (name, id_guard, number_phone)
values ('Marie', 48, '0530419');
insert into GUARD (name, id_guard, number_phone)
values ('Mary-Louise', 49, '0517859');
insert into GUARD (name, id_guard, number_phone)
values ('Teri', 50, '0529463');
insert into GUARD (name, id_guard, number_phone)
values ('Elvis', 51, '0523218');
insert into GUARD (name, id_guard, number_phone)
values ('Rueben', 52, '0594759');
insert into GUARD (name, id_guard, number_phone)
values ('Ice', 53, '0590192');
insert into GUARD (name, id_guard, number_phone)
values ('Rosanne', 54, '0571393');
insert into GUARD (name, id_guard, number_phone)
values ('Raul', 55, '0522665');
insert into GUARD (name, id_guard, number_phone)
values ('Dylan', 56, '0585191');
insert into GUARD (name, id_guard, number_phone)
values ('Wang', 57, '0531364');
insert into GUARD (name, id_guard, number_phone)
values ('Ellen', 58, '0557119');
insert into GUARD (name, id_guard, number_phone)
values ('Talvin', 59, '0595070');
insert into GUARD (name, id_guard, number_phone)
values ('Allan', 60, '0593800');
insert into GUARD (name, id_guard, number_phone)
values ('Lucy', 61, '0598958');
insert into GUARD (name, id_guard, number_phone)
values ('Drew', 62, '0567433');
insert into GUARD (name, id_guard, number_phone)
values ('Curt', 63, '0516145');
insert into GUARD (name, id_guard, number_phone)
values ('Ronny', 64, '0574426');
insert into GUARD (name, id_guard, number_phone)
values ('Liv', 65, '0525542');
insert into GUARD (name, id_guard, number_phone)
values ('Lenny', 66, '0543404');
insert into GUARD (name, id_guard, number_phone)
values ('Annette', 67, '0541914');
insert into GUARD (name, id_guard, number_phone)
values ('Ellen', 68, '0550360');
insert into GUARD (name, id_guard, number_phone)
values ('Jena', 69, '0524948');
insert into GUARD (name, id_guard, number_phone)
values ('Bridgette', 70, '0578091');
insert into GUARD (name, id_guard, number_phone)
values ('Stellan', 71, '0530596');
insert into GUARD (name, id_guard, number_phone)
values ('Jean-Luc', 72, '0595630');
insert into GUARD (name, id_guard, number_phone)
values ('Gene', 73, '0529693');
insert into GUARD (name, id_guard, number_phone)
values ('Garland', 74, '0575492');
insert into GUARD (name, id_guard, number_phone)
values ('Regina', 75, '0585185');
insert into GUARD (name, id_guard, number_phone)
values ('Bebe', 76, '0516807');
insert into GUARD (name, id_guard, number_phone)
values ('Victor', 77, '0571253');
insert into GUARD (name, id_guard, number_phone)
values ('King', 78, '0564206');
insert into GUARD (name, id_guard, number_phone)
values ('Alex', 79, '0559854');
insert into GUARD (name, id_guard, number_phone)
values ('Vincent', 80, '0581254');
insert into GUARD (name, id_guard, number_phone)
values ('Brad', 81, '0572309');
insert into GUARD (name, id_guard, number_phone)
values ('Jerry', 82, '0534225');
insert into GUARD (name, id_guard, number_phone)
values ('Joseph', 83, '0538753');
insert into GUARD (name, id_guard, number_phone)
values ('Janeane', 84, '0545437');
insert into GUARD (name, id_guard, number_phone)
values ('Curt', 85, '0594413');
insert into GUARD (name, id_guard, number_phone)
values ('Halle', 86, '0550760');
insert into GUARD (name, id_guard, number_phone)
values ('Alfred', 87, '0542161');
insert into GUARD (name, id_guard, number_phone)
values ('Joseph', 88, '0564684');
insert into GUARD (name, id_guard, number_phone)
values ('Udo', 89, '0573315');
insert into GUARD (name, id_guard, number_phone)
values ('Lena', 90, '0543233');
insert into GUARD (name, id_guard, number_phone)
values ('Christmas', 91, '0538197');
insert into GUARD (name, id_guard, number_phone)
values ('Ralph', 92, '0573313');
insert into GUARD (name, id_guard, number_phone)
values ('Larry', 93, '0570171');
insert into GUARD (name, id_guard, number_phone)
values ('Ricardo', 94, '0551620');
insert into GUARD (name, id_guard, number_phone)
values ('Nancy', 95, '0564278');
insert into GUARD (name, id_guard, number_phone)
values ('Viggo', 96, '0546267');
insert into GUARD (name, id_guard, number_phone)
values ('Brian', 97, '0533996');
insert into GUARD (name, id_guard, number_phone)
values ('Glenn', 98, '0569475');
insert into GUARD (name, id_guard, number_phone)
values ('Willie', 99, '0593008');
insert into GUARD (name, id_guard, number_phone)
values ('Carlene', 100, '0583164');
commit;
prompt 100 records committed...
insert into GUARD (name, id_guard, number_phone)
values ('Mary Beth', 101, '0596942');
insert into GUARD (name, id_guard, number_phone)
values ('Nicole', 102, '0550539');
insert into GUARD (name, id_guard, number_phone)
values ('Irene', 103, '0526049');
insert into GUARD (name, id_guard, number_phone)
values ('Judy', 104, '0537552');
insert into GUARD (name, id_guard, number_phone)
values ('Doug', 105, '0594956');
insert into GUARD (name, id_guard, number_phone)
values ('Natalie', 106, '0598403');
insert into GUARD (name, id_guard, number_phone)
values ('Nelly', 107, '0511567');
insert into GUARD (name, id_guard, number_phone)
values ('Lindsey', 108, '0561446');
insert into GUARD (name, id_guard, number_phone)
values ('Ramsey', 109, '0535600');
insert into GUARD (name, id_guard, number_phone)
values ('Anjelica', 110, '0572520');
insert into GUARD (name, id_guard, number_phone)
values ('Jim', 111, '0566445');
insert into GUARD (name, id_guard, number_phone)
values ('Kirsten', 112, '0593673');
insert into GUARD (name, id_guard, number_phone)
values ('Mary', 113, '0581345');
insert into GUARD (name, id_guard, number_phone)
values ('Julianne', 114, '0533823');
insert into GUARD (name, id_guard, number_phone)
values ('Collin', 115, '0539238');
insert into GUARD (name, id_guard, number_phone)
values ('Bradley', 116, '0593372');
insert into GUARD (name, id_guard, number_phone)
values ('William', 117, '0518194');
insert into GUARD (name, id_guard, number_phone)
values ('Robby', 118, '0548306');
insert into GUARD (name, id_guard, number_phone)
values ('Faye', 119, '0539110');
insert into GUARD (name, id_guard, number_phone)
values ('Orlando', 120, '0588858');
insert into GUARD (name, id_guard, number_phone)
values ('Jonny', 121, '0576637');
insert into GUARD (name, id_guard, number_phone)
values ('Josh', 122, '0570111');
insert into GUARD (name, id_guard, number_phone)
values ('Chloe', 123, '0523674');
insert into GUARD (name, id_guard, number_phone)
values ('Merillee', 124, '0585119');
insert into GUARD (name, id_guard, number_phone)
values ('Lynette', 125, '0529711');
insert into GUARD (name, id_guard, number_phone)
values ('Ving', 126, '0584875');
insert into GUARD (name, id_guard, number_phone)
values ('Ashley', 127, '0541897');
insert into GUARD (name, id_guard, number_phone)
values ('Stellan', 128, '0553689');
insert into GUARD (name, id_guard, number_phone)
values ('Darren', 129, '0544969');
insert into GUARD (name, id_guard, number_phone)
values ('Neil', 130, '0578194');
insert into GUARD (name, id_guard, number_phone)
values ('Ray', 131, '0589971');
insert into GUARD (name, id_guard, number_phone)
values ('Manu', 132, '0568195');
insert into GUARD (name, id_guard, number_phone)
values ('Freda', 133, '0514746');
insert into GUARD (name, id_guard, number_phone)
values ('Cherry', 134, '0575904');
insert into GUARD (name, id_guard, number_phone)
values ('Thelma', 135, '0518806');
insert into GUARD (name, id_guard, number_phone)
values ('Forest', 136, '0567265');
insert into GUARD (name, id_guard, number_phone)
values ('Bernard', 137, '0532628');
insert into GUARD (name, id_guard, number_phone)
values ('Spike', 138, '0540320');
insert into GUARD (name, id_guard, number_phone)
values ('James', 139, '0596884');
insert into GUARD (name, id_guard, number_phone)
values ('Kyra', 140, '0530013');
insert into GUARD (name, id_guard, number_phone)
values ('Wang', 141, '0523280');
insert into GUARD (name, id_guard, number_phone)
values ('Charlton', 142, '0598607');
insert into GUARD (name, id_guard, number_phone)
values ('Neneh', 143, '0558358');
insert into GUARD (name, id_guard, number_phone)
values ('Jessica', 144, '0554661');
insert into GUARD (name, id_guard, number_phone)
values ('Graham', 145, '0567057');
insert into GUARD (name, id_guard, number_phone)
values ('Mae', 146, '0567435');
insert into GUARD (name, id_guard, number_phone)
values ('Kathy', 147, '0566686');
insert into GUARD (name, id_guard, number_phone)
values ('Cole', 148, '0578365');
insert into GUARD (name, id_guard, number_phone)
values ('Ronnie', 149, '0589926');
insert into GUARD (name, id_guard, number_phone)
values ('Dean', 150, '0593389');
insert into GUARD (name, id_guard, number_phone)
values ('Illeana', 151, '0535126');
insert into GUARD (name, id_guard, number_phone)
values ('Sheryl', 152, '0510633');
insert into GUARD (name, id_guard, number_phone)
values ('Daryle', 153, '0539587');
insert into GUARD (name, id_guard, number_phone)
values ('Edward', 154, '0516683');
insert into GUARD (name, id_guard, number_phone)
values ('Goldie', 155, '0568283');
insert into GUARD (name, id_guard, number_phone)
values ('Stephen', 156, '0526654');
insert into GUARD (name, id_guard, number_phone)
values ('Edwin', 157, '0535415');
insert into GUARD (name, id_guard, number_phone)
values ('Desmond', 158, '0557947');
insert into GUARD (name, id_guard, number_phone)
values ('Timothy', 159, '0581241');
insert into GUARD (name, id_guard, number_phone)
values ('Kelly', 160, '0539925');
insert into GUARD (name, id_guard, number_phone)
values ('Wes', 161, '0576598');
insert into GUARD (name, id_guard, number_phone)
values ('Seth', 162, '0591539');
insert into GUARD (name, id_guard, number_phone)
values ('Carla', 163, '0529642');
insert into GUARD (name, id_guard, number_phone)
values ('Dick', 164, '0540346');
insert into GUARD (name, id_guard, number_phone)
values ('Graham', 165, '0548424');
insert into GUARD (name, id_guard, number_phone)
values ('Maxine', 166, '0575251');
insert into GUARD (name, id_guard, number_phone)
values ('Ozzy', 167, '0560938');
insert into GUARD (name, id_guard, number_phone)
values ('Eric', 168, '0513974');
insert into GUARD (name, id_guard, number_phone)
values ('Cheryl', 169, '0564144');
insert into GUARD (name, id_guard, number_phone)
values ('Lucy', 170, '0536122');
insert into GUARD (name, id_guard, number_phone)
values ('Rip', 171, '0523385');
insert into GUARD (name, id_guard, number_phone)
values ('Bret', 172, '0531474');
insert into GUARD (name, id_guard, number_phone)
values ('Molly', 173, '0546913');
insert into GUARD (name, id_guard, number_phone)
values ('Charlize', 174, '0587468');
insert into GUARD (name, id_guard, number_phone)
values ('Maura', 175, '0543519');
insert into GUARD (name, id_guard, number_phone)
values ('Uma', 176, '0543694');
insert into GUARD (name, id_guard, number_phone)
values ('Rosanne', 177, '0537547');
insert into GUARD (name, id_guard, number_phone)
values ('Emily', 178, '0580360');
insert into GUARD (name, id_guard, number_phone)
values ('Emm', 179, '0563485');
insert into GUARD (name, id_guard, number_phone)
values ('Samuel', 180, '0519638');
insert into GUARD (name, id_guard, number_phone)
values ('Sheena', 181, '0578265');
insert into GUARD (name, id_guard, number_phone)
values ('Horace', 182, '0567024');
insert into GUARD (name, id_guard, number_phone)
values ('Mickey', 183, '0554323');
insert into GUARD (name, id_guard, number_phone)
values ('Gil', 184, '0574556');
insert into GUARD (name, id_guard, number_phone)
values ('Ozzy', 185, '0584877');
insert into GUARD (name, id_guard, number_phone)
values ('Luis', 186, '0558255');
insert into GUARD (name, id_guard, number_phone)
values ('Judge', 187, '0584849');
insert into GUARD (name, id_guard, number_phone)
values ('Anne', 188, '0540162');
insert into GUARD (name, id_guard, number_phone)
values ('Nik', 189, '0533851');
insert into GUARD (name, id_guard, number_phone)
values ('Don', 190, '0590047');
insert into GUARD (name, id_guard, number_phone)
values ('Tim', 191, '0597190');
insert into GUARD (name, id_guard, number_phone)
values ('Sophie', 192, '0599226');
insert into GUARD (name, id_guard, number_phone)
values ('Susan', 193, '0531859');
insert into GUARD (name, id_guard, number_phone)
values ('Barbara', 194, '0526526');
insert into GUARD (name, id_guard, number_phone)
values ('Kid', 195, '0560360');
insert into GUARD (name, id_guard, number_phone)
values ('Gina', 196, '0561705');
insert into GUARD (name, id_guard, number_phone)
values ('Randy', 197, '0573859');
insert into GUARD (name, id_guard, number_phone)
values ('Angela', 198, '0519297');
insert into GUARD (name, id_guard, number_phone)
values ('Micky', 199, '0558635');
insert into GUARD (name, id_guard, number_phone)
values ('Isaiah', 200, '0531201');
commit;
prompt 200 records committed...
insert into GUARD (name, id_guard, number_phone)
values ('Phoebe', 201, '0593558');
insert into GUARD (name, id_guard, number_phone)
values ('Vonda', 202, '0580071');
insert into GUARD (name, id_guard, number_phone)
values ('Victor', 203, '0599840');
insert into GUARD (name, id_guard, number_phone)
values ('Pamela', 204, '0536840');
insert into GUARD (name, id_guard, number_phone)
values ('Lucy', 205, '0580858');
insert into GUARD (name, id_guard, number_phone)
values ('Lari', 206, '0568646');
insert into GUARD (name, id_guard, number_phone)
values ('Ceili', 207, '0544328');
insert into GUARD (name, id_guard, number_phone)
values ('Goldie', 208, '0567135');
insert into GUARD (name, id_guard, number_phone)
values ('Thora', 209, '0587043');
insert into GUARD (name, id_guard, number_phone)
values ('Ving', 210, '0531769');
insert into GUARD (name, id_guard, number_phone)
values ('Charlie', 211, '0536292');
insert into GUARD (name, id_guard, number_phone)
values ('Beverley', 212, '0513680');
insert into GUARD (name, id_guard, number_phone)
values ('Joaquim', 213, '0524971');
insert into GUARD (name, id_guard, number_phone)
values ('Roscoe', 214, '0535564');
insert into GUARD (name, id_guard, number_phone)
values ('Sigourney', 215, '0514482');
insert into GUARD (name, id_guard, number_phone)
values ('Chi', 216, '0561475');
insert into GUARD (name, id_guard, number_phone)
values ('Joseph', 217, '0549795');
insert into GUARD (name, id_guard, number_phone)
values ('Lonnie', 218, '0514492');
insert into GUARD (name, id_guard, number_phone)
values ('Lena', 219, '0570509');
insert into GUARD (name, id_guard, number_phone)
values ('Al', 220, '0572276');
insert into GUARD (name, id_guard, number_phone)
values ('Norm', 221, '0565299');
insert into GUARD (name, id_guard, number_phone)
values ('Scott', 222, '0558129');
insert into GUARD (name, id_guard, number_phone)
values ('Neve', 223, '0513201');
insert into GUARD (name, id_guard, number_phone)
values ('Ben', 224, '0586003');
insert into GUARD (name, id_guard, number_phone)
values ('Rickie', 225, '0552649');
insert into GUARD (name, id_guard, number_phone)
values ('Julianne', 226, '0573746');
insert into GUARD (name, id_guard, number_phone)
values ('Delroy', 227, '0583180');
insert into GUARD (name, id_guard, number_phone)
values ('Belinda', 228, '0520772');
insert into GUARD (name, id_guard, number_phone)
values ('Natacha', 229, '0596765');
insert into GUARD (name, id_guard, number_phone)
values ('Tzi', 230, '0592155');
insert into GUARD (name, id_guard, number_phone)
values ('Andre', 231, '0564896');
insert into GUARD (name, id_guard, number_phone)
values ('Delbert', 232, '0531106');
insert into GUARD (name, id_guard, number_phone)
values ('Albert', 233, '0560432');
insert into GUARD (name, id_guard, number_phone)
values ('Martin', 234, '0563325');
insert into GUARD (name, id_guard, number_phone)
values ('Eric', 235, '0546479');
insert into GUARD (name, id_guard, number_phone)
values ('Derek', 236, '0559123');
insert into GUARD (name, id_guard, number_phone)
values ('Bob', 237, '0535670');
insert into GUARD (name, id_guard, number_phone)
values ('Andrea', 238, '0588651');
insert into GUARD (name, id_guard, number_phone)
values ('Carl', 239, '0541692');
insert into GUARD (name, id_guard, number_phone)
values ('Angie', 240, '0571921');
insert into GUARD (name, id_guard, number_phone)
values ('Wade', 241, '0580025');
insert into GUARD (name, id_guard, number_phone)
values ('Ben', 242, '0521142');
insert into GUARD (name, id_guard, number_phone)
values ('Judy', 243, '0543843');
insert into GUARD (name, id_guard, number_phone)
values ('Nelly', 244, '0548823');
insert into GUARD (name, id_guard, number_phone)
values ('Armin', 245, '0525612');
insert into GUARD (name, id_guard, number_phone)
values ('Nickel', 246, '0511673');
insert into GUARD (name, id_guard, number_phone)
values ('Hugo', 247, '0560702');
insert into GUARD (name, id_guard, number_phone)
values ('Teena', 248, '0571654');
insert into GUARD (name, id_guard, number_phone)
values ('Rhys', 249, '0531018');
insert into GUARD (name, id_guard, number_phone)
values ('Rolando', 250, '0530869');
insert into GUARD (name, id_guard, number_phone)
values ('Rowan', 251, '0533981');
insert into GUARD (name, id_guard, number_phone)
values ('Whoopi', 252, '0539159');
insert into GUARD (name, id_guard, number_phone)
values ('Pablo', 253, '0567427');
insert into GUARD (name, id_guard, number_phone)
values ('Busta', 254, '0561836');
insert into GUARD (name, id_guard, number_phone)
values ('Talvin', 255, '0517205');
insert into GUARD (name, id_guard, number_phone)
values ('Eileen', 256, '0546208');
insert into GUARD (name, id_guard, number_phone)
values ('Trini', 257, '0553818');
insert into GUARD (name, id_guard, number_phone)
values ('Edgar', 258, '0583020');
insert into GUARD (name, id_guard, number_phone)
values ('Edgar', 259, '0547613');
insert into GUARD (name, id_guard, number_phone)
values ('Howie', 260, '0577624');
insert into GUARD (name, id_guard, number_phone)
values ('Howie', 261, '0560801');
insert into GUARD (name, id_guard, number_phone)
values ('Mira', 262, '0599225');
insert into GUARD (name, id_guard, number_phone)
values ('Nik', 263, '0588241');
insert into GUARD (name, id_guard, number_phone)
values ('Sheryl', 264, '0547476');
insert into GUARD (name, id_guard, number_phone)
values ('Vivica', 265, '0585094');
insert into GUARD (name, id_guard, number_phone)
values ('Mac', 266, '0572771');
insert into GUARD (name, id_guard, number_phone)
values ('Jason', 267, '0562804');
insert into GUARD (name, id_guard, number_phone)
values ('Pablo', 268, '0550642');
insert into GUARD (name, id_guard, number_phone)
values ('Christopher', 269, '0524216');
insert into GUARD (name, id_guard, number_phone)
values ('Kristin', 270, '0546174');
insert into GUARD (name, id_guard, number_phone)
values ('Julie', 271, '0533397');
insert into GUARD (name, id_guard, number_phone)
values ('Jon', 272, '0529820');
insert into GUARD (name, id_guard, number_phone)
values ('Millie', 273, '0525634');
insert into GUARD (name, id_guard, number_phone)
values ('Tramaine', 274, '0514352');
insert into GUARD (name, id_guard, number_phone)
values ('Jimmie', 275, '0521099');
insert into GUARD (name, id_guard, number_phone)
values ('Gin', 276, '0580912');
insert into GUARD (name, id_guard, number_phone)
values ('Earl', 277, '0559803');
insert into GUARD (name, id_guard, number_phone)
values ('Thora', 278, '0563904');
insert into GUARD (name, id_guard, number_phone)
values ('Brian', 279, '0557658');
insert into GUARD (name, id_guard, number_phone)
values ('Raymond', 280, '0573667');
insert into GUARD (name, id_guard, number_phone)
values ('Tanya', 281, '0594616');
insert into GUARD (name, id_guard, number_phone)
values ('Gaby', 282, '0517162');
insert into GUARD (name, id_guard, number_phone)
values ('Sam', 283, '0549932');
insert into GUARD (name, id_guard, number_phone)
values ('Kiefer', 284, '0564193');
insert into GUARD (name, id_guard, number_phone)
values ('Rosco', 285, '0553991');
insert into GUARD (name, id_guard, number_phone)
values ('Eric', 286, '0572102');
insert into GUARD (name, id_guard, number_phone)
values ('Daryle', 287, '0567314');
insert into GUARD (name, id_guard, number_phone)
values ('Olympia', 288, '0514251');
insert into GUARD (name, id_guard, number_phone)
values ('Wendy', 289, '0546346');
insert into GUARD (name, id_guard, number_phone)
values ('Johnny', 290, '0584092');
insert into GUARD (name, id_guard, number_phone)
values ('Jamie', 291, '0536748');
insert into GUARD (name, id_guard, number_phone)
values ('Cesar', 292, '0586472');
insert into GUARD (name, id_guard, number_phone)
values ('Gailard', 293, '0587876');
insert into GUARD (name, id_guard, number_phone)
values ('Curtis', 294, '0529934');
insert into GUARD (name, id_guard, number_phone)
values ('Arturo', 295, '0519397');
insert into GUARD (name, id_guard, number_phone)
values ('Annette', 296, '0565119');
insert into GUARD (name, id_guard, number_phone)
values ('Leelee', 297, '0583914');
insert into GUARD (name, id_guard, number_phone)
values ('Ivan', 298, '0596647');
insert into GUARD (name, id_guard, number_phone)
values ('Fats', 299, '0589465');
insert into GUARD (name, id_guard, number_phone)
values ('Moe', 300, '0539829');
commit;
prompt 300 records committed...
insert into GUARD (name, id_guard, number_phone)
values ('Judge', 301, '0547847');
insert into GUARD (name, id_guard, number_phone)
values ('Charlize', 302, '0584100');
insert into GUARD (name, id_guard, number_phone)
values ('Courtney', 303, '0591474');
insert into GUARD (name, id_guard, number_phone)
values ('Colleen', 304, '0546653');
insert into GUARD (name, id_guard, number_phone)
values ('Bobby', 305, '0535221');
insert into GUARD (name, id_guard, number_phone)
values ('Stockard', 306, '0545081');
insert into GUARD (name, id_guard, number_phone)
values ('Vienna', 307, '0520071');
insert into GUARD (name, id_guard, number_phone)
values ('Junior', 308, '0527230');
insert into GUARD (name, id_guard, number_phone)
values ('Rosco', 309, '0525741');
insert into GUARD (name, id_guard, number_phone)
values ('Boyd', 310, '0564864');
insert into GUARD (name, id_guard, number_phone)
values ('Giovanni', 311, '0519875');
insert into GUARD (name, id_guard, number_phone)
values ('Karen', 312, '0548434');
insert into GUARD (name, id_guard, number_phone)
values ('Trace', 313, '0590182');
insert into GUARD (name, id_guard, number_phone)
values ('Loreena', 314, '0587545');
insert into GUARD (name, id_guard, number_phone)
values ('Howard', 315, '0541817');
insert into GUARD (name, id_guard, number_phone)
values ('Joshua', 316, '0514793');
insert into GUARD (name, id_guard, number_phone)
values ('Noah', 317, '0571327');
insert into GUARD (name, id_guard, number_phone)
values ('Russell', 318, '0555556');
insert into GUARD (name, id_guard, number_phone)
values ('Gailard', 319, '0551727');
insert into GUARD (name, id_guard, number_phone)
values ('Ramsey', 320, '0531441');
insert into GUARD (name, id_guard, number_phone)
values ('Tracy', 321, '0556864');
insert into GUARD (name, id_guard, number_phone)
values ('CeCe', 322, '0589552');
insert into GUARD (name, id_guard, number_phone)
values ('Dianne', 323, '0537114');
insert into GUARD (name, id_guard, number_phone)
values ('Tommy', 324, '0512093');
insert into GUARD (name, id_guard, number_phone)
values ('Amanda', 325, '0566108');
insert into GUARD (name, id_guard, number_phone)
values ('Derek', 326, '0542795');
insert into GUARD (name, id_guard, number_phone)
values ('Vertical', 327, '0584940');
insert into GUARD (name, id_guard, number_phone)
values ('Antonio', 328, '0599549');
insert into GUARD (name, id_guard, number_phone)
values ('Liquid', 329, '0510999');
insert into GUARD (name, id_guard, number_phone)
values ('Alex', 330, '0510565');
insert into GUARD (name, id_guard, number_phone)
values ('Betty', 331, '0520741');
insert into GUARD (name, id_guard, number_phone)
values ('Saul', 332, '0597650');
insert into GUARD (name, id_guard, number_phone)
values ('Garland', 333, '0548004');
insert into GUARD (name, id_guard, number_phone)
values ('Curtis', 334, '0549133');
insert into GUARD (name, id_guard, number_phone)
values ('Chuck', 335, '0520320');
insert into GUARD (name, id_guard, number_phone)
values ('Rolando', 336, '0529838');
insert into GUARD (name, id_guard, number_phone)
values ('Noah', 337, '0552243');
insert into GUARD (name, id_guard, number_phone)
values ('Cole', 338, '0560003');
insert into GUARD (name, id_guard, number_phone)
values ('Nikka', 339, '0581423');
insert into GUARD (name, id_guard, number_phone)
values ('Joaquim', 340, '0569732');
insert into GUARD (name, id_guard, number_phone)
values ('Matthew', 341, '0536966');
insert into GUARD (name, id_guard, number_phone)
values ('Kathleen', 342, '0577190');
insert into GUARD (name, id_guard, number_phone)
values ('Andre', 343, '0552686');
insert into GUARD (name, id_guard, number_phone)
values ('Irene', 344, '0536529');
insert into GUARD (name, id_guard, number_phone)
values ('Taylor', 345, '0571638');
insert into GUARD (name, id_guard, number_phone)
values ('Larry', 346, '0568566');
insert into GUARD (name, id_guard, number_phone)
values ('Lea', 347, '0591265');
insert into GUARD (name, id_guard, number_phone)
values ('Ashley', 348, '0559204');
insert into GUARD (name, id_guard, number_phone)
values ('Rade', 349, '0575491');
insert into GUARD (name, id_guard, number_phone)
values ('Jared', 350, '0561125');
insert into GUARD (name, id_guard, number_phone)
values ('Tony', 351, '0586561');
insert into GUARD (name, id_guard, number_phone)
values ('Rod', 352, '0540779');
insert into GUARD (name, id_guard, number_phone)
values ('Devon', 353, '0586200');
insert into GUARD (name, id_guard, number_phone)
values ('Dylan', 354, '0526580');
insert into GUARD (name, id_guard, number_phone)
values ('Art', 355, '0541922');
insert into GUARD (name, id_guard, number_phone)
values ('Dom', 356, '0513956');
insert into GUARD (name, id_guard, number_phone)
values ('Dean', 357, '0526895');
insert into GUARD (name, id_guard, number_phone)
values ('Coley', 358, '0576415');
insert into GUARD (name, id_guard, number_phone)
values ('Roberta', 359, '0546202');
insert into GUARD (name, id_guard, number_phone)
values ('Pelvic', 360, '0536221');
insert into GUARD (name, id_guard, number_phone)
values ('Peter', 361, '0545646');
insert into GUARD (name, id_guard, number_phone)
values ('Russell', 362, '0530813');
insert into GUARD (name, id_guard, number_phone)
values ('Debbie', 363, '0524880');
insert into GUARD (name, id_guard, number_phone)
values ('Harriet', 364, '0563745');
insert into GUARD (name, id_guard, number_phone)
values ('Marc', 365, '0513998');
insert into GUARD (name, id_guard, number_phone)
values ('Dan', 366, '0530196');
insert into GUARD (name, id_guard, number_phone)
values ('Herbie', 367, '0568273');
insert into GUARD (name, id_guard, number_phone)
values ('Armand', 368, '0542426');
insert into GUARD (name, id_guard, number_phone)
values ('Jane', 369, '0547549');
insert into GUARD (name, id_guard, number_phone)
values ('Andrae', 370, '0523241');
insert into GUARD (name, id_guard, number_phone)
values ('Cevin', 371, '0574526');
insert into GUARD (name, id_guard, number_phone)
values ('Glenn', 372, '0598294');
insert into GUARD (name, id_guard, number_phone)
values ('Nickel', 373, '0532747');
insert into GUARD (name, id_guard, number_phone)
values ('Claire', 374, '0594413');
insert into GUARD (name, id_guard, number_phone)
values ('Leon', 375, '0557971');
insert into GUARD (name, id_guard, number_phone)
values ('Irene', 376, '0528503');
insert into GUARD (name, id_guard, number_phone)
values ('Noah', 377, '0558119');
insert into GUARD (name, id_guard, number_phone)
values ('Lucinda', 378, '0528380');
insert into GUARD (name, id_guard, number_phone)
values ('Meg', 379, '0561297');
insert into GUARD (name, id_guard, number_phone)
values ('Remy', 380, '0541599');
insert into GUARD (name, id_guard, number_phone)
values ('Ving', 381, '0593920');
insert into GUARD (name, id_guard, number_phone)
values ('Tilda', 382, '0571501');
insert into GUARD (name, id_guard, number_phone)
values ('Red', 383, '0540328');
insert into GUARD (name, id_guard, number_phone)
values ('Gil', 384, '0587200');
insert into GUARD (name, id_guard, number_phone)
values ('Ned', 385, '0527145');
insert into GUARD (name, id_guard, number_phone)
values ('Rebeka', 386, '0552664');
insert into GUARD (name, id_guard, number_phone)
values ('Toshiro', 387, '0511607');
insert into GUARD (name, id_guard, number_phone)
values ('Harold', 388, '0564900');
insert into GUARD (name, id_guard, number_phone)
values ('Pelvic', 389, '0525549');
insert into GUARD (name, id_guard, number_phone)
values ('Cheech', 390, '0556523');
insert into GUARD (name, id_guard, number_phone)
values ('Kimberly', 391, '0556060');
insert into GUARD (name, id_guard, number_phone)
values ('Lisa', 392, '0587889');
insert into GUARD (name, id_guard, number_phone)
values ('Mint', 393, '0580817');
insert into GUARD (name, id_guard, number_phone)
values ('Ossie', 394, '0596304');
insert into GUARD (name, id_guard, number_phone)
values ('Jean-Claude', 395, '0533478');
insert into GUARD (name, id_guard, number_phone)
values ('Miranda', 396, '0540965');
insert into GUARD (name, id_guard, number_phone)
values ('Thin', 397, '0597387');
insert into GUARD (name, id_guard, number_phone)
values ('Sophie', 398, '0520959');
insert into GUARD (name, id_guard, number_phone)
values ('Rosanne', 399, '0568956');
insert into GUARD (name, id_guard, number_phone)
values ('Miranda', 400, '0519188');
commit;
prompt 400 records loaded
prompt Loading GUIDED_BY...
insert into GUIDED_BY (price, id_trip, id_guard)
values (5542, 1, 1);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5710, 2, 2);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7528, 3, 3);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6038, 4, 4);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5338, 5, 5);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6792, 6, 6);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7866, 7, 7);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8470, 8, 8);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7664, 9, 9);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5517, 10, 10);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6211, 11, 11);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5939, 12, 12);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6486, 13, 13);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6809, 14, 14);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5617, 15, 15);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8931, 16, 16);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5330, 17, 17);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6838, 18, 18);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6655, 19, 19);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5852, 20, 20);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8989, 21, 21);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6307, 22, 22);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7561, 23, 23);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8515, 24, 24);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6649, 25, 25);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8858, 26, 26);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6027, 27, 27);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5826, 28, 28);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8143, 29, 29);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5039, 30, 30);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8819, 31, 31);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8659, 32, 32);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7985, 33, 33);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7296, 34, 34);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8422, 35, 35);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5795, 36, 36);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8917, 37, 37);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6380, 38, 38);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6886, 39, 39);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7931, 40, 40);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5607, 41, 41);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8653, 42, 42);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8072, 43, 43);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5630, 44, 44);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6231, 45, 45);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6698, 46, 46);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8472, 47, 47);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8209, 48, 48);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6591, 49, 49);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8695, 50, 50);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5808, 51, 51);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7450, 52, 52);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8477, 53, 53);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8971, 54, 54);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5582, 55, 55);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7114, 56, 56);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6961, 57, 57);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7201, 58, 58);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6772, 59, 59);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8170, 60, 60);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8290, 61, 61);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8654, 62, 62);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8859, 63, 63);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8685, 64, 64);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5094, 65, 65);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6956, 66, 66);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7375, 67, 67);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6310, 68, 68);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8575, 69, 69);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7794, 70, 70);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6161, 71, 71);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8310, 72, 72);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6369, 73, 73);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8991, 74, 74);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7511, 75, 75);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7050, 76, 76);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7780, 77, 77);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5403, 78, 78);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6407, 79, 79);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7910, 80, 80);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7058, 81, 81);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8073, 82, 82);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8017, 83, 83);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5530, 84, 84);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8417, 85, 85);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8069, 86, 86);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8654, 87, 87);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5360, 88, 88);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5481, 89, 89);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8453, 90, 90);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5380, 91, 91);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8412, 92, 92);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8839, 93, 93);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8825, 94, 94);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8439, 95, 95);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6181, 96, 96);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8404, 97, 97);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7853, 98, 98);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7707, 99, 99);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5674, 100, 100);
commit;
prompt 100 records committed...
insert into GUIDED_BY (price, id_trip, id_guard)
values (6260, 101, 101);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6267, 102, 102);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5360, 103, 103);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5456, 104, 104);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8684, 105, 105);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5710, 106, 106);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7927, 107, 107);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8679, 108, 108);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7031, 109, 109);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7923, 110, 110);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7920, 111, 111);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8020, 112, 112);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6170, 113, 113);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7670, 114, 114);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6254, 115, 115);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6465, 116, 116);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8162, 117, 117);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5865, 118, 118);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7602, 119, 119);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6883, 120, 120);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7853, 121, 121);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6325, 122, 122);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5904, 123, 123);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8313, 124, 124);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6095, 125, 125);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8583, 126, 126);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6212, 127, 127);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7917, 128, 128);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7258, 129, 129);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6213, 130, 130);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6047, 131, 131);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8539, 132, 132);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8731, 133, 133);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5094, 134, 134);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8467, 135, 135);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8778, 136, 136);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7101, 137, 137);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5053, 138, 138);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8025, 139, 139);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5558, 140, 140);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6697, 141, 141);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5319, 142, 142);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7822, 143, 143);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8090, 144, 144);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5180, 145, 145);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7241, 146, 146);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6808, 147, 147);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7187, 148, 148);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7877, 149, 149);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8690, 150, 150);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5564, 151, 151);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8873, 152, 152);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7530, 153, 153);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5590, 154, 154);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7708, 155, 155);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6196, 156, 156);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7178, 157, 157);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5023, 158, 158);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7147, 159, 159);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8225, 160, 160);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8816, 161, 161);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7326, 162, 162);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8340, 163, 163);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6116, 164, 164);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7559, 165, 165);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7638, 166, 166);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7773, 167, 167);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5247, 168, 168);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7981, 169, 169);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8324, 170, 170);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5829, 171, 171);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5293, 172, 172);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8304, 173, 173);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6717, 174, 174);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7233, 175, 175);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7232, 176, 176);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7152, 177, 177);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7607, 178, 178);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5277, 179, 179);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7192, 180, 180);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8540, 181, 181);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6931, 182, 182);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5991, 183, 183);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6082, 184, 184);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5781, 185, 185);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6083, 186, 186);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5469, 187, 187);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8950, 188, 188);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6017, 189, 189);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5300, 190, 190);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6520, 191, 191);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8997, 192, 192);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6045, 193, 193);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5541, 194, 194);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5838, 195, 195);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8187, 196, 196);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7130, 197, 197);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5315, 198, 198);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7887, 199, 199);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7400, 200, 200);
commit;
prompt 200 records committed...
insert into GUIDED_BY (price, id_trip, id_guard)
values (5497, 201, 201);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7889, 202, 202);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6671, 203, 203);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8053, 204, 204);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8188, 205, 205);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7303, 206, 206);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5591, 207, 207);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8123, 208, 208);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8962, 209, 209);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6650, 210, 210);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6573, 211, 211);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8537, 212, 212);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7942, 213, 213);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7042, 214, 214);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8648, 215, 215);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6827, 216, 216);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7684, 217, 217);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6703, 218, 218);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5178, 219, 219);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8022, 220, 220);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7358, 221, 221);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6633, 222, 222);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5924, 223, 223);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7690, 224, 224);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5730, 225, 225);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8274, 226, 226);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7112, 227, 227);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7087, 228, 228);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8639, 229, 229);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5613, 230, 230);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5728, 231, 231);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5332, 232, 232);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5635, 233, 233);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7178, 234, 234);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7197, 235, 235);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6565, 236, 236);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5498, 237, 237);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8327, 238, 238);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8642, 239, 239);
insert into GUIDED_BY (price, id_trip, id_guard)
values (9000, 240, 240);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5297, 241, 241);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7316, 242, 242);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8920, 243, 243);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7843, 244, 244);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8686, 245, 245);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7538, 246, 246);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5607, 247, 247);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8987, 248, 248);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6132, 249, 249);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5409, 250, 250);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8137, 251, 251);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7423, 252, 252);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6756, 253, 253);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8302, 254, 254);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5262, 255, 255);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5324, 256, 256);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8468, 257, 257);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7999, 258, 258);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6040, 259, 259);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5720, 260, 260);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6096, 261, 261);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8078, 262, 262);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6529, 263, 263);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6705, 264, 264);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6194, 265, 265);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8682, 266, 266);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7366, 267, 267);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6123, 268, 268);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6200, 269, 269);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5101, 270, 270);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8447, 271, 271);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7662, 272, 272);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8662, 273, 273);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5609, 274, 274);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7854, 275, 275);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8294, 276, 276);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6187, 277, 277);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6997, 278, 278);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5258, 279, 279);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8002, 280, 280);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5829, 281, 281);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7225, 282, 282);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6959, 283, 283);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7727, 284, 284);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6579, 285, 285);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7650, 286, 286);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6751, 287, 287);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6481, 288, 288);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8663, 289, 289);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6254, 290, 290);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5817, 291, 291);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5550, 292, 292);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6323, 293, 293);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8317, 294, 294);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7832, 295, 295);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8739, 296, 296);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8784, 297, 297);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5955, 298, 298);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6449, 299, 299);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8582, 300, 300);
commit;
prompt 300 records committed...
insert into GUIDED_BY (price, id_trip, id_guard)
values (7066, 301, 301);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6999, 302, 302);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7376, 303, 303);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5473, 304, 304);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5367, 305, 305);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6603, 306, 306);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8224, 307, 307);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7635, 308, 308);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8674, 309, 309);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8059, 310, 310);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8304, 311, 311);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8876, 312, 312);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7292, 313, 313);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8235, 314, 314);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5573, 315, 315);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6070, 316, 316);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8009, 317, 317);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8083, 318, 318);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6919, 319, 319);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7304, 320, 320);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6536, 321, 321);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5643, 322, 322);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6947, 323, 323);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6604, 324, 324);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8955, 325, 325);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6001, 326, 326);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7496, 327, 327);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6219, 328, 328);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6828, 329, 329);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7615, 330, 330);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7029, 331, 331);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8360, 332, 332);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7684, 333, 333);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5459, 334, 334);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6117, 335, 335);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7359, 336, 336);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7543, 337, 337);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8428, 338, 338);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8193, 339, 339);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6174, 340, 340);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5186, 341, 341);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5426, 342, 342);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7754, 343, 343);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6173, 344, 344);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6852, 345, 345);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7589, 346, 346);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7219, 347, 347);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8152, 348, 348);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7040, 349, 349);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7069, 350, 350);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8608, 351, 351);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7500, 352, 352);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8122, 353, 353);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5827, 354, 354);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7249, 355, 355);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7471, 356, 356);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6437, 357, 357);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8867, 358, 358);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7690, 359, 359);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7493, 360, 360);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5562, 361, 361);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5340, 362, 362);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7002, 363, 363);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8436, 364, 364);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6454, 365, 365);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5980, 366, 366);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7667, 367, 367);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5807, 368, 368);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5124, 369, 369);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6279, 370, 370);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7234, 371, 371);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6782, 372, 372);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5577, 373, 373);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5863, 374, 374);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8937, 375, 375);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8025, 376, 376);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8650, 377, 377);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7496, 378, 378);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6447, 379, 379);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8233, 380, 380);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6477, 381, 381);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8140, 382, 382);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8971, 383, 383);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6337, 384, 384);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5264, 385, 385);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7534, 386, 386);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5851, 387, 387);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5303, 388, 388);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8029, 389, 389);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8709, 390, 390);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6896, 391, 391);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6469, 392, 392);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6036, 393, 393);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5872, 394, 394);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7577, 395, 395);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8353, 396, 396);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8589, 397, 397);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8124, 398, 398);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5335, 399, 399);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8867, 400, 400);
commit;
prompt 400 records loaded
prompt Loading TRAVELERS...
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Maceo', 2010, 1);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chaka', 2004, 2);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rip', 2019, 3);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Wayman', 2003, 4);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lili', 2005, 5);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Katrin', 2022, 6);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jackie', 2013, 7);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Thin', 2011, 8);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Louise', 2017, 9);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jean-Claude', 2013, 10);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Uma', 2012, 11);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lila', 2019, 12);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Alfred', 2016, 13);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kiefer', 2010, 14);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chazz', 2010, 15);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kurt', 2011, 16);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Alfie', 2015, 17);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Marina', 2010, 18);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Robbie', 2007, 19);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cornell', 2020, 20);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rawlins', 2005, 21);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Isaiah', 2001, 22);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chris', 2002, 23);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Curtis', 2006, 24);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lara', 2001, 25);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hazel', 2020, 26);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Brent', 2018, 27);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Frederic', 2013, 28);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Judge', 2005, 29);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Albert', 2001, 30);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Charlie', 2008, 31);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Liam', 2012, 32);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gordie', 2012, 33);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hex', 2020, 34);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('First', 2022, 35);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Murray', 2012, 36);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Veruca', 2017, 37);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Adrien', 2002, 38);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Merle', 2003, 39);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Suzy', 2022, 40);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Javon', 2007, 41);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Will', 2020, 42);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Robby', 2016, 43);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Aidan', 2006, 44);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gino', 2014, 45);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Linda', 2006, 46);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Curtis', 2011, 47);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Reese', 2000, 48);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Meredith', 2011, 49);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Suzi', 2002, 50);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Bruce', 2006, 51);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mindy', 2012, 52);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gary', 2004, 53);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Carlene', 2017, 54);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Leelee', 2010, 55);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rod', 2000, 56);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Albert', 2015, 57);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sheryl', 2000, 58);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Yolanda', 2008, 59);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Holly', 2022, 60);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ernest', 2012, 61);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ty', 2003, 62);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Saffron', 2021, 63);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Elias', 2018, 64);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Selma', 2021, 65);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jack', 2019, 66);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Pelvic', 2003, 67);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Treat', 2006, 68);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kristin', 2004, 69);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Todd', 2003, 70);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ralph', 2018, 71);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rosanna', 2002, 72);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Aaron', 2022, 73);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Joaquim', 2019, 74);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ewan', 2003, 75);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Roberta', 2018, 76);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jeroen', 2002, 77);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Debby', 2012, 78);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Robbie', 2016, 79);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Curt', 2001, 80);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tori', 2018, 81);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Anita', 2021, 82);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jena', 2003, 83);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Stephen', 2021, 84);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Naomi', 2015, 85);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tia', 2002, 86);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Harrison', 2001, 87);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Stephen', 2010, 88);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Annie', 2021, 89);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Alannah', 2000, 90);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Alicia', 2002, 91);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chuck', 2014, 92);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hope', 2013, 93);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rik', 2018, 94);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Andy', 2021, 95);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Roddy', 2009, 96);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Radney', 2022, 97);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nicolas', 2010, 98);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Candice', 2005, 99);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jessica', 2016, 100);
commit;
prompt 100 records committed...
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Glenn', 2019, 101);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tim', 2004, 102);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Minnie', 2001, 103);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Angelina', 2013, 104);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Raul', 2022, 105);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Matt', 2009, 106);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Davey', 2018, 107);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Vincent', 2008, 108);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Colin', 2013, 109);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('James', 2000, 110);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Miranda', 2015, 111);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jeff', 2019, 112);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Colin', 2022, 113);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chris', 2011, 114);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jack', 2000, 115);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cheryl', 2014, 116);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Latin', 2003, 117);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Bob', 2011, 118);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chaka', 2013, 119);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hilary', 2010, 120);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Patty', 2007, 121);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Debra', 2022, 122);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Machine', 2004, 123);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Eliza', 2016, 124);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Forest', 2020, 125);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chad', 2019, 126);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Azucar', 2001, 127);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jonatha', 2016, 128);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Will', 2004, 129);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('William', 2007, 130);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mika', 2011, 131);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Carlos', 2012, 132);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Parker', 2006, 133);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sophie', 2017, 134);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Juliette', 2013, 135);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Casey', 2008, 136);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jonathan', 2021, 137);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Laurence', 2018, 138);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Marlon', 2020, 139);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Pablo', 2005, 140);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nicholas', 2015, 141);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gran', 2015, 142);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Queen', 2003, 143);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hope', 2019, 144);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Terry', 2016, 145);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Maggie', 2010, 146);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Stewart', 2005, 147);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Andy', 2008, 148);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sam', 2006, 149);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Burt', 2008, 150);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mary Beth', 2020, 151);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kyle', 2000, 152);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jeffery', 2013, 153);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Clay', 2003, 154);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Isabella', 2022, 155);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lin', 2011, 156);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rascal', 2005, 157);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ricky', 2009, 158);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kazem', 2003, 159);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ramsey', 2009, 160);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mykelti', 2009, 161);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Don', 2010, 162);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sara', 2006, 163);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chi', 2016, 164);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Dionne', 2008, 165);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Terry', 2010, 166);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Melanie', 2009, 167);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Trey', 2013, 168);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Balthazar', 2017, 169);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Katrin', 2009, 170);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Robin', 2022, 171);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Luis', 2020, 172);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hank', 2005, 173);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Karen', 2016, 174);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Elias', 2004, 175);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Delroy', 2020, 176);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tim', 2021, 177);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Wesley', 2022, 178);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Wendy', 2007, 179);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gene', 2004, 180);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rascal', 2001, 181);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rade', 2014, 182);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sam', 2000, 183);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rhea', 2012, 184);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Parker', 2017, 185);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rebecca', 2004, 186);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hal', 2001, 187);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cole', 2014, 188);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rik', 2013, 189);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sally', 2020, 190);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Curtis', 2009, 191);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Judi', 2006, 192);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Earl', 2014, 193);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nikka', 2020, 194);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jeff', 2008, 195);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Wayne', 2007, 196);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nick', 2003, 197);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jeffery', 2005, 198);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Percy', 2016, 199);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('LeVar', 2017, 200);
commit;
prompt 200 records committed...
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rebecca', 2012, 201);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Anne', 2001, 202);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gena', 2017, 203);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Faye', 2022, 204);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ronny', 2010, 205);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kitty', 2016, 206);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Miko', 2001, 207);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gene', 2021, 208);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Diamond', 2017, 209);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Charlton', 2005, 210);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Art', 2001, 211);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Brooke', 2010, 212);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Randy', 2015, 213);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Arnold', 2005, 214);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Azucar', 2008, 215);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Seann', 2012, 216);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Joy', 2022, 217);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Curtis', 2020, 218);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Michelle', 2007, 219);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Joy', 2022, 220);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mel', 2006, 221);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Luke', 2019, 222);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Davy', 2006, 223);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Merillee', 2013, 224);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Heather', 2004, 225);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Scott', 2001, 226);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hugh', 2014, 227);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Emerson', 2018, 228);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Christine', 2022, 229);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Balthazar', 2006, 230);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nikka', 2022, 231);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Geena', 2013, 232);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Betty', 2014, 233);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Vendetta', 2014, 234);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Will', 2006, 235);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sally', 2012, 236);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tia', 2016, 237);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Hugo', 2008, 238);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mel', 2006, 239);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gwyneth', 2006, 240);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chalee', 2015, 241);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Danni', 2017, 242);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Oded', 2014, 243);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Miko', 2014, 244);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kitty', 2013, 245);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Diane', 2013, 246);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Robbie', 2010, 247);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nils', 2020, 248);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ramsey', 2018, 249);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Selma', 2008, 250);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Natascha', 2020, 251);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Bill', 2013, 252);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rick', 2017, 253);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Maureen', 2004, 254);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Suzy', 2007, 255);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('King', 2013, 256);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Udo', 2014, 257);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ivan', 2015, 258);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Wang', 2005, 259);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Wayne', 2019, 260);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Vanessa', 2009, 261);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Natalie', 2000, 262);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Miranda', 2020, 263);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rowan', 2021, 264);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Natasha', 2014, 265);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Emilio', 2008, 266);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Roscoe', 2017, 267);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jon', 2019, 268);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rory', 2014, 269);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Frank', 2016, 270);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Chris', 2014, 271);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Delbert', 2008, 272);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Claude', 2007, 273);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Katrin', 2008, 274);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ruth', 2005, 275);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lenny', 2011, 276);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Willem', 2011, 277);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Saffron', 2003, 278);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rutger', 2004, 279);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lili', 2013, 280);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tyrone', 2022, 281);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jann', 2022, 282);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cheryl', 2003, 283);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sean', 2020, 284);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ali', 2019, 285);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Raymond', 2000, 286);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Roddy', 2011, 287);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Michael', 2022, 288);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cate', 2016, 289);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gordon', 2012, 290);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Miko', 2016, 291);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Elisabeth', 2008, 292);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Maury', 2006, 293);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jet', 2002, 294);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Amanda', 2010, 295);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tamala', 2001, 296);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lou', 2010, 297);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Freda', 2016, 298);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Charlie', 2016, 299);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mitchell', 2005, 300);
commit;
prompt 300 records committed...
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Sophie', 2002, 301);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nicole', 2020, 302);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jean', 2003, 303);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Azucar', 2000, 304);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Buddy', 2014, 305);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mika', 2000, 306);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kid', 2010, 307);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lynn', 2003, 308);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Giancarlo', 2008, 309);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Madeline', 2017, 310);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Clea', 2015, 311);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Stellan', 2000, 312);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Marina', 2009, 313);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Robin', 2005, 314);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Vonda', 2016, 315);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Timothy', 2008, 316);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gabrielle', 2011, 317);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Bret', 2016, 318);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rik', 2021, 319);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Rita', 2014, 320);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Geoff', 2012, 321);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tia', 2019, 322);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Coley', 2015, 323);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lonnie', 2011, 324);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Alex', 2014, 325);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Omar', 2012, 326);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jake', 2020, 327);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mel', 2009, 328);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Willem', 2002, 329);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Luke', 2008, 330);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kasey', 2020, 331);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Daniel', 2013, 332);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ossie', 2006, 333);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Eric', 2011, 334);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tara', 2003, 335);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Emily', 2005, 336);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Willem', 2017, 337);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kelli', 2001, 338);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Carrie-Anne', 2002, 339);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Samuel', 2019, 340);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Alicia', 2007, 341);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lee', 2011, 342);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Boyd', 2003, 343);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Harrison', 2016, 344);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Marisa', 2009, 345);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cole', 2001, 346);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Freda', 2010, 347);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Millie', 2000, 348);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tramaine', 2000, 349);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tilda', 2020, 350);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Toshiro', 2001, 351);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Adam', 2015, 352);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Dave', 2007, 353);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Luke', 2022, 354);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kyle', 2001, 355);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lydia', 2014, 356);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Clarence', 2020, 357);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cheryl', 2010, 358);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Patricia', 2014, 359);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Harry', 2015, 360);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Guy', 2000, 361);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Terence', 2007, 362);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Natacha', 2005, 363);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Armin', 2017, 364);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Domingo', 2012, 365);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Adrien', 2004, 366);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Ethan', 2002, 367);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Kristin', 2005, 368);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Brenda', 2003, 369);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cledus', 2022, 370);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Emerson', 2006, 371);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mandy', 2003, 372);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Owen', 2021, 373);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Toshiro', 2015, 374);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Bridget', 2007, 375);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Aida', 2010, 376);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Antonio', 2009, 377);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Victor', 2010, 378);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Maggie', 2011, 379);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nastassja', 2018, 380);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Holly', 2021, 381);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Roy', 2008, 382);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Leonardo', 2012, 383);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('King', 2011, 384);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mos', 2016, 385);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Brad', 2013, 386);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Tzi', 2002, 387);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Dionne', 2011, 388);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jackie', 2012, 389);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Mary-Louise', 2005, 390);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Cary', 2009, 391);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nickel', 2017, 392);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Jennifer', 2018, 393);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Gabrielle', 2018, 394);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Powers', 2001, 395);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Johnnie', 2000, 396);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Lila', 2012, 397);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Antonio', 2000, 398);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Larry', 2018, 399);
insert into TRAVELERS (name, year_of_birth, id_travels)
values ('Nils', 2011, 400);
commit;
prompt 400 records loaded
prompt Loading TRAVELERS_LIST...
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (1, 2800, 1, 1);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (2, 1340, 2, 2);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (3, 3404, 3, 3);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (4, 3741, 4, 4);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (5, 2259, 5, 5);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (6, 3527, 6, 6);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (7, 2502, 7, 7);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (8, 1520, 8, 8);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (9, 3906, 9, 9);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (10, 1056, 10, 10);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (11, 2365, 11, 11);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (12, 3613, 12, 12);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (13, 3749, 13, 13);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (14, 1584, 14, 14);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (15, 1596, 15, 15);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (16, 1902, 16, 16);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (17, 2774, 17, 17);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (18, 1100, 18, 18);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (19, 3709, 19, 19);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (20, 2045, 20, 20);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (21, 1972, 21, 21);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (22, 2385, 22, 22);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (23, 1987, 23, 23);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (24, 1605, 24, 24);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (25, 3092, 25, 25);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (26, 2083, 26, 26);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (27, 2398, 27, 27);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (28, 2401, 28, 28);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (29, 3441, 29, 29);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (30, 2017, 30, 30);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (31, 2740, 31, 31);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (32, 2083, 32, 32);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (33, 3814, 33, 33);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (34, 2148, 34, 34);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (35, 2993, 35, 35);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (36, 3695, 36, 36);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (37, 1378, 37, 37);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (38, 2311, 38, 38);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (39, 2572, 39, 39);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (40, 1746, 40, 40);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (41, 3095, 41, 41);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (42, 1626, 42, 42);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (43, 3934, 43, 43);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (44, 3054, 44, 44);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (45, 2996, 45, 45);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (46, 3217, 46, 46);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (47, 3738, 47, 47);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (48, 3378, 48, 48);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (49, 2409, 49, 49);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (50, 2634, 50, 50);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (51, 1524, 51, 51);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (52, 3606, 52, 52);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (53, 2951, 53, 53);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (54, 2120, 54, 54);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (55, 2602, 55, 55);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (56, 3003, 56, 56);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (57, 1858, 57, 57);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (58, 3609, 58, 58);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (59, 1601, 59, 59);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (60, 3811, 60, 60);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (61, 2004, 61, 61);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (62, 3093, 62, 62);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (63, 2902, 63, 63);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (64, 2180, 64, 64);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (65, 1662, 65, 65);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (66, 3772, 66, 66);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (67, 2880, 67, 67);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (68, 1231, 68, 68);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (69, 1851, 69, 69);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (70, 3083, 70, 70);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (71, 3687, 71, 71);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (72, 1741, 72, 72);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (73, 3844, 73, 73);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (74, 2546, 74, 74);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (75, 3000, 75, 75);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (76, 1732, 76, 76);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (77, 3154, 77, 77);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (78, 3039, 78, 78);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (79, 3962, 79, 79);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (80, 3967, 80, 80);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (81, 2098, 81, 81);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (82, 2895, 82, 82);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (83, 3254, 83, 83);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (84, 1127, 84, 84);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (85, 3748, 85, 85);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (86, 1979, 86, 86);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (87, 3005, 87, 87);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (88, 2191, 88, 88);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (89, 1847, 89, 89);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (90, 3611, 90, 90);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (91, 3001, 91, 91);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (92, 2259, 92, 92);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (93, 3043, 93, 93);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (94, 3992, 94, 94);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (95, 2378, 95, 95);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (96, 2861, 96, 96);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (97, 1482, 97, 97);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (98, 1528, 98, 98);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (99, 1773, 99, 99);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (100, 1512, 100, 100);
commit;
prompt 100 records committed...
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (101, 3619, 101, 101);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (102, 2171, 102, 102);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (103, 3624, 103, 103);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (104, 2012, 104, 104);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (105, 3804, 105, 105);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (106, 3691, 106, 106);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (107, 3066, 107, 107);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (108, 1776, 108, 108);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (109, 3991, 109, 109);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (110, 2500, 110, 110);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (111, 1650, 111, 111);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (112, 3200, 112, 112);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (113, 3629, 113, 113);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (114, 1441, 114, 114);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (115, 1812, 115, 115);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (116, 3830, 116, 116);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (117, 3576, 117, 117);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (118, 3659, 118, 118);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (119, 3807, 119, 119);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (120, 1854, 120, 120);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (121, 2607, 121, 121);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (122, 2456, 122, 122);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (123, 3557, 123, 123);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (124, 3177, 124, 124);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (125, 1848, 125, 125);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (126, 1781, 126, 126);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (127, 2636, 127, 127);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (128, 2088, 128, 128);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (129, 3212, 129, 129);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (130, 3718, 130, 130);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (131, 3302, 131, 131);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (132, 1311, 132, 132);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (133, 3669, 133, 133);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (134, 2143, 134, 134);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (135, 1329, 135, 135);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (136, 2923, 136, 136);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (137, 2920, 137, 137);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (138, 1420, 138, 138);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (139, 2052, 139, 139);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (140, 1422, 140, 140);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (141, 3816, 141, 141);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (142, 1787, 142, 142);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (143, 1856, 143, 143);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (144, 1969, 144, 144);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (145, 3583, 145, 145);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (146, 1815, 146, 146);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (147, 1043, 147, 147);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (148, 3539, 148, 148);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (149, 1698, 149, 149);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (150, 3091, 150, 150);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (151, 3791, 151, 151);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (152, 1536, 152, 152);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (153, 2984, 153, 153);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (154, 2999, 154, 154);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (155, 3655, 155, 155);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (156, 2107, 156, 156);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (157, 1253, 157, 157);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (158, 1264, 158, 158);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (159, 1815, 159, 159);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (160, 2182, 160, 160);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (161, 1580, 161, 161);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (162, 1627, 162, 162);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (163, 1018, 163, 163);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (164, 1009, 164, 164);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (165, 2034, 165, 165);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (166, 2795, 166, 166);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (167, 2924, 167, 167);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (168, 1696, 168, 168);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (169, 3437, 169, 169);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (170, 3578, 170, 170);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (171, 1305, 171, 171);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (172, 1018, 172, 172);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (173, 2490, 173, 173);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (174, 2820, 174, 174);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (175, 3306, 175, 175);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (176, 2526, 176, 176);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (177, 2342, 177, 177);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (178, 2545, 178, 178);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (179, 3707, 179, 179);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (180, 1692, 180, 180);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (181, 3423, 181, 181);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (182, 2441, 182, 182);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (183, 2913, 183, 183);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (184, 3641, 184, 184);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (185, 1120, 185, 185);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (186, 1572, 186, 186);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (187, 1098, 187, 187);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (188, 2702, 188, 188);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (189, 2641, 189, 189);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (190, 2979, 190, 190);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (191, 3727, 191, 191);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (192, 3824, 192, 192);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (193, 1118, 193, 193);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (194, 2524, 194, 194);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (195, 2395, 195, 195);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (196, 1598, 196, 196);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (197, 1799, 197, 197);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (198, 1162, 198, 198);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (199, 3701, 199, 199);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (200, 1415, 200, 200);
commit;
prompt 200 records committed...
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (201, 3896, 201, 201);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (202, 2492, 202, 202);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (203, 2591, 203, 203);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (204, 3021, 204, 204);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (205, 1418, 205, 205);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (206, 3253, 206, 206);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (207, 1394, 207, 207);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (208, 2482, 208, 208);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (209, 1084, 209, 209);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (210, 3143, 210, 210);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (211, 2489, 211, 211);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (212, 3336, 212, 212);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (213, 2104, 213, 213);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (214, 1110, 214, 214);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (215, 2302, 215, 215);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (216, 1430, 216, 216);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (217, 3454, 217, 217);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (218, 2999, 218, 218);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (219, 3116, 219, 219);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (220, 1721, 220, 220);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (221, 2942, 221, 221);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (222, 3196, 222, 222);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (223, 2855, 223, 223);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (224, 3055, 224, 224);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (225, 1151, 225, 225);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (226, 2664, 226, 226);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (227, 1827, 227, 227);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (228, 1679, 228, 228);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (229, 3091, 229, 229);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (230, 3512, 230, 230);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (231, 3121, 231, 231);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (232, 2024, 232, 232);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (233, 2132, 233, 233);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (234, 1975, 234, 234);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (235, 2096, 235, 235);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (236, 2994, 236, 236);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (237, 3555, 237, 237);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (238, 2474, 238, 238);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (239, 3193, 239, 239);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (240, 3806, 240, 240);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (241, 1782, 241, 241);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (242, 1103, 242, 242);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (243, 3995, 243, 243);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (244, 2125, 244, 244);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (245, 3144, 245, 245);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (246, 1733, 246, 246);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (247, 1256, 247, 247);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (248, 3027, 248, 248);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (249, 3722, 249, 249);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (250, 2583, 250, 250);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (251, 2356, 251, 251);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (252, 1035, 252, 252);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (253, 3632, 253, 253);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (254, 2922, 254, 254);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (255, 2352, 255, 255);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (256, 3273, 256, 256);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (257, 1801, 257, 257);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (258, 2285, 258, 258);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (259, 1632, 259, 259);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (260, 3461, 260, 260);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (261, 3086, 261, 261);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (262, 1344, 262, 262);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (263, 1821, 263, 263);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (264, 3323, 264, 264);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (265, 1283, 265, 265);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (266, 2325, 266, 266);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (267, 2432, 267, 267);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (268, 1613, 268, 268);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (269, 1397, 269, 269);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (270, 1607, 270, 270);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (271, 3441, 271, 271);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (272, 3827, 272, 272);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (273, 1208, 273, 273);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (274, 3909, 274, 274);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (275, 1751, 275, 275);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (276, 1324, 276, 276);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (277, 2992, 277, 277);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (278, 1179, 278, 278);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (279, 3248, 279, 279);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (280, 1412, 280, 280);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (281, 3957, 281, 281);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (282, 1112, 282, 282);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (283, 3889, 283, 283);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (284, 1625, 284, 284);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (285, 1732, 285, 285);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (286, 1896, 286, 286);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (287, 2047, 287, 287);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (288, 3237, 288, 288);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (289, 3989, 289, 289);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (290, 2610, 290, 290);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (291, 3048, 291, 291);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (292, 3765, 292, 292);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (293, 2005, 293, 293);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (294, 1399, 294, 294);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (295, 1608, 295, 295);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (296, 1974, 296, 296);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (297, 3778, 297, 297);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (298, 3323, 298, 298);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (299, 3630, 299, 299);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (300, 1663, 300, 300);
commit;
prompt 300 records committed...
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (301, 3993, 301, 301);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (302, 3511, 302, 302);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (303, 2551, 303, 303);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (304, 1233, 304, 304);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (305, 2930, 305, 305);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (306, 2023, 306, 306);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (307, 3211, 307, 307);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (308, 1807, 308, 308);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (309, 1143, 309, 309);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (310, 2553, 310, 310);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (311, 3920, 311, 311);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (312, 1427, 312, 312);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (313, 2488, 313, 313);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (314, 1863, 314, 314);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (315, 1208, 315, 315);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (316, 3578, 316, 316);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (317, 1815, 317, 317);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (318, 1595, 318, 318);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (319, 1438, 319, 319);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (320, 3067, 320, 320);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (321, 3430, 321, 321);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (322, 2845, 322, 322);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (323, 3237, 323, 323);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (324, 3018, 324, 324);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (325, 3118, 325, 325);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (326, 1644, 326, 326);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (327, 2461, 327, 327);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (328, 3498, 328, 328);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (329, 2346, 329, 329);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (330, 1233, 330, 330);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (331, 3143, 331, 331);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (332, 2038, 332, 332);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (333, 3936, 333, 333);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (334, 3776, 334, 334);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (335, 3609, 335, 335);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (336, 2074, 336, 336);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (337, 2312, 337, 337);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (338, 1896, 338, 338);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (339, 2743, 339, 339);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (340, 2059, 340, 340);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (341, 3141, 341, 341);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (342, 3191, 342, 342);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (343, 3086, 343, 343);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (344, 1773, 344, 344);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (345, 2942, 345, 345);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (346, 1590, 346, 346);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (347, 3229, 347, 347);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (348, 3093, 348, 348);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (349, 3997, 349, 349);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (350, 2226, 350, 350);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (351, 2695, 351, 351);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (352, 1239, 352, 352);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (353, 2637, 353, 353);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (354, 3183, 354, 354);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (355, 1279, 355, 355);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (356, 2259, 356, 356);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (357, 3742, 357, 357);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (358, 3287, 358, 358);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (359, 2532, 359, 359);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (360, 1273, 360, 360);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (361, 1011, 361, 361);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (362, 3808, 362, 362);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (363, 1848, 363, 363);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (364, 3740, 364, 364);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (365, 1365, 365, 365);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (366, 2728, 366, 366);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (367, 3370, 367, 367);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (368, 1756, 368, 368);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (369, 1516, 369, 369);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (370, 1962, 370, 370);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (371, 2642, 371, 371);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (372, 1171, 372, 372);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (373, 2574, 373, 373);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (374, 3667, 374, 374);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (375, 1734, 375, 375);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (376, 1008, 376, 376);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (377, 2243, 377, 377);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (378, 2539, 378, 378);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (379, 1286, 379, 379);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (380, 1478, 380, 380);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (381, 3941, 381, 381);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (382, 2734, 382, 382);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (383, 1661, 383, 383);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (384, 3591, 384, 384);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (385, 1921, 385, 385);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (386, 1799, 386, 386);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (387, 1182, 387, 387);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (388, 3136, 388, 388);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (389, 1237, 389, 389);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (390, 1765, 390, 390);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (391, 1142, 391, 391);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (392, 3542, 392, 392);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (393, 3097, 393, 393);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (394, 3280, 394, 394);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (395, 1042, 395, 395);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (396, 3881, 396, 396);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (397, 3969, 397, 397);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (398, 2429, 398, 398);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (399, 1263, 399, 399);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (400, 3046, 400, 400);
commit;
prompt 400 records loaded
prompt Enabling foreign key constraints for TRIPS...
alter table TRIPS enable constraint SYS_C008917;
prompt Enabling foreign key constraints for DESTINATIONS...
alter table DESTINATIONS enable constraint SYS_C008923;
prompt Enabling foreign key constraints for GUIDED_BY...
alter table GUIDED_BY enable constraint SYS_C008928;
alter table GUIDED_BY enable constraint SYS_C008929;
prompt Enabling foreign key constraints for TRAVELERS_LIST...
alter table TRAVELERS_LIST enable constraint SYS_C008936;
alter table TRAVELERS_LIST enable constraint SYS_C008937;
prompt Enabling triggers for TRANSPORTATION...
alter table TRANSPORTATION enable all triggers;
prompt Enabling triggers for TRIPS...
alter table TRIPS enable all triggers;
prompt Enabling triggers for DESTINATIONS...
alter table DESTINATIONS enable all triggers;
prompt Enabling triggers for GUARD...
alter table GUARD enable all triggers;
prompt Enabling triggers for GUIDED_BY...
alter table GUIDED_BY enable all triggers;
prompt Enabling triggers for TRAVELERS...
alter table TRAVELERS enable all triggers;
prompt Enabling triggers for TRAVELERS_LIST...
alter table TRAVELERS_LIST enable all triggers;

set feedback on
set define on
prompt Done
