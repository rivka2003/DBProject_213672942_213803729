CREATE TABLE TEACHER_GUARD
(
  Teacher_guard_ID INT NOT NULL,
  Last_Name INT NOT NULL,
  First_Name INT NOT NULL,
  BONUS INT NOT NULL,
  HOURLY_SALARY INT NOT NULL,
  number_phone INT NOT NULL,
  PRIMARY KEY (Teacher_guard_ID)
);

CREATE TABLE Room
(
  Room_ID INT NOT NULL,
  Max_Capacity INT NOT NULL,
  is_lab INT NOT NULL,
  LAST_MAINTENANCE_CHECK INT NOT NULL,
  PRIMARY KEY (Room_ID)
);

CREATE TABLE Subject
(
  Subject_ID INT NOT NULL,
  Subject_Name INT NOT NULL,
  mandatory INT NOT NULL,
  PRIMARY KEY (Subject_ID)
);

CREATE TABLE transportation
(
  number_of_passngers INT NOT NULL,
  driver INT NOT NULL,
  id_transportation INT NOT NULL,
  PRIMARY KEY (id_transportation)
);

CREATE TABLE destinations
(
  name INT NOT NULL,
  id_destinations INT NOT NULL,
  description INT NOT NULL,
  PRIMARY KEY (id_destinations)
);

CREATE TABLE Class_
(
  Class_ID INT NOT NULL,
  Grade INT NOT NULL,
  Teacher_guard_ID INT NOT NULL,
  Room_ID INT NOT NULL,
  PRIMARY KEY (Class_ID),
  FOREIGN KEY (Teacher_guard_ID) REFERENCES TEACHER_GUARD(Teacher_guard_ID),
  FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);


CREATE TABLE trip
(
  name INT NOT NULL,
  price INT NOT NULL,
  id_trip INT NOT NULL,
  NewAttribute INT NOT NULL,
  Teacher_guard_ID INT NOT NULL,
  id_transportation INT NOT NULL,
  id_destinations INT NOT NULL,
  PRIMARY KEY (id_trip),
  FOREIGN KEY (Teacher_guard_ID) REFERENCES TEACHER_GUARD(Teacher_guard_ID),
  FOREIGN KEY (id_transportation) REFERENCES transportation(id_transportation),
  FOREIGN KEY (id_destinations) REFERENCES destinations(id_destinations)
);

CREATE TABLE Student_travelers
(
  Last_Name INT NOT NULL,
  birth_date INT NOT NULL,
  Phone INT NOT NULL,
  fatherName INT NOT NULL,
  motherName INT NOT NULL,
  First_Name INT NOT NULL,
  Student_travelers_ID INT NOT NULL,
  Class_ID INT NOT NULL,
  PRIMARY KEY (Student_travelers_ID, Class_ID),
  FOREIGN KEY (Class_ID) REFERENCES Class_(Class_ID)
);

CREATE TABLE travelers_list
(
  id_trip INT NOT NULL,
  Student_travelers_ID INT NOT NULL,
  PRIMARY KEY (id_trip, Student_travelers_ID),
  FOREIGN KEY (id_trip) REFERENCES trip(id_trip),
  FOREIGN KEY (Student_travelers_ID) REFERENCES Student_travelers(Student_travelers_ID)
);
