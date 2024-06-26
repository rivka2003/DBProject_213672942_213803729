CREATE TABLE guard
(
  name VARCHAR2(15) NOT NULL,
  id_guard NUMBER NOT NULL,
  number_phone VARCHAR2(15) NOT NULL,
  PRIMARY KEY (id_guard)
);

CREATE TABLE travelers
(
  name VARCHAR2(15) NOT NULL,
  year_of_birth NUMBER NOT NULL,
  id_travels NUMBER NOT NULL,
  PRIMARY KEY (id_travels)
);

CREATE TABLE transportation
(
  number_of_passengers NUMBER NOT NULL,
  driver VARCHAR2(15) NOT NULL,
  id_transportation NUMBER NOT NULL,
  duration_time DATE NOT NULL,
  PRIMARY KEY (id_transportation)
);

CREATE TABLE trip
(
  name VARCHAR2(15) NOT NULL,
  id_trip NUMBER NOT NULL,
  price NUMBER NOT NULL,
  id_transportation NUMBER,
  trip_date DATE NOT NULL,
  PRIMARY KEY (id_trip),
  FOREIGN KEY (id_transportation) REFERENCES transportation(id_transportation) ON DELETE CASCADE
);

CREATE TABLE destinations
(
  name VARCHAR2(15) NOT NULL,
  id_destinations NUMBER NOT NULL,
  description VARCHAR2(100) NOT NULL,
  id_trip NUMBER NOT NULL,
  PRIMARY KEY (id_destinations),
  FOREIGN KEY (id_trip) REFERENCES trip(id_trip) ON DELETE CASCADE
);

CREATE TABLE guided_by
(
  price NUMBER NOT NULL,
  id_trip NUMBER NOT NULL,
  id_guard NUMBER NOT NULL,
  PRIMARY KEY (id_trip, id_guard),
  FOREIGN KEY (id_trip) REFERENCES trip(id_trip) ON DELETE CASCADE,
  FOREIGN KEY (id_guard) REFERENCES guard(id_guard) ON DELETE CASCADE
);

CREATE TABLE travelers_list
(
  id_travelers_list NUMBER NOT NULL,
  price NUMBER NOT NULL,
  id_trip NUMBER NOT NULL,
  id_travels NUMBER NOT NULL,
  PRIMARY KEY (id_travelers_list),
  FOREIGN KEY (id_trip) REFERENCES trip(id_trip) ON DELETE CASCADE,
  FOREIGN KEY (id_travels) REFERENCES travelers(id_travels) ON DELETE CASCADE,
  UNIQUE (id_trip, id_travels)
);
