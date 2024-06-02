CREATE TABLE guard
(
  name INT NOT NULL,
  id_guard INT NOT NULL,
  number_phone INT NOT NULL,
  PRIMARY KEY (id_guard)
);

CREATE TABLE travelers
(
  name INT NOT NULL,
  year_of_birth INT NOT NULL,
  id_travels INT NOT NULL,
  PRIMARY KEY (id_travels)
);

CREATE TABLE transportation
(
  number_of_passengers INT NOT NULL,
  driver INT NOT NULL,
  id_transportation INT NOT NULL,
  PRIMARY KEY (id_transportation)
);

CREATE TABLE trip
(
  name INT NOT NULL,
  id_trip INT NOT NULL,
  price INT NOT NULL,
  id_transportation INT,
  PRIMARY KEY (id_trip),
  FOREIGN KEY (id_transportation) REFERENCES transportation(id_transportation) ON DELETE CASCADE
);

CREATE TABLE destinations
(
  name INT NOT NULL,
  id_destinations INT NOT NULL,
  description INT NOT NULL,
  NewAttribute INT NOT NULL,
  id_trip INT NOT NULL,
  PRIMARY KEY (id_destinations),
  FOREIGN KEY (id_trip) REFERENCES trip(id_trip) ON DELETE CASCADE
);

CREATE TABLE guided_by
(
  price INT NOT NULL,
  id_trip INT NOT NULL,
  id_guard INT NOT NULL,
  PRIMARY KEY (id_trip, id_guard),
  FOREIGN KEY (id_trip) REFERENCES trip(id_trip) ON DELETE CASCADE,
  FOREIGN KEY (id_guard) REFERENCES guard(id_guard) ON DELETE CASCADE
);

CREATE TABLE travelers_list
(
  id_travelers_list INT NOT NULL,
  price INT NOT NULL,
  id_trip INT NOT NULL,
  id_travels INT NOT NULL,
  PRIMARY KEY (id_travelers_list),
  FOREIGN KEY (id_trip) REFERENCES trip(id_trip) ON DELETE CASCADE,
  FOREIGN KEY (id_travels) REFERENCES travelers(id_travels) ON DELETE CASCADE,
  UNIQUE (id_trip, id_travels)
);
