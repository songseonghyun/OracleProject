
--과정 정보
create table tblCourse
(
course_seq number not null,
course_name varchar2(80) not null,
course_period number not null 
);
create sequence course_seq;
alter table tblCourse
    add constraint tblc_course_seq_pk primary key(course_seq);
alter table tblCourse
    add constraint tblc_course_period_ck check(course_period in (5.5, 6, 7));
