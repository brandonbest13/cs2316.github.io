create table if not exists Course (
  CRN integer primary key,
  course_name text not null unique,
  hours int not null,
  days text,
  start_time text,
  end_time text,
  major_req text,
  class_req text
);

create table if not exists Student (
  username text primary key,
  name text not null,
  major text,
  year text
);

create table if not exists Registered (
  course int,
  stud text,
  FOREIGN KEY(course) REFERENCES Course(CRN),
  FOREIGN KEY(stud) REFERENCES Student(username)
);

create table if not exists Admin (
  AdminID text primary key,
  password text not null
);