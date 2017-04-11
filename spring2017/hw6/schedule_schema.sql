create table if not exists course (
  CRN int primary key,
  course_name text not null unique,
  hours int not null,
  days text,
  start_time text,
  end_time text,
  major_req text,
  class_req text
);

create table if not exists student (
  username text primary key,
  password text,
  name text not null,
  major text,
  year text
);

create table if not exists registered (
  course int,
  stud text,
  FOREIGN KEY(course) REFERENCES course(CRN),
  FOREIGN KEY(stud) REFERENCES student(username)
);

create table if not exists admin (
  adminID text primary key,
  name text,
  course_name text,
  password text not null
);
