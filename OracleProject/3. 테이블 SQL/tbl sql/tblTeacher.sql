create table tblTeacher (
    teacher_seq number not null,
    teacher_name varchar2(30) not null,
    teacher_ssn varchar2(14) not null,
    teacher_tel varchar2(30) not null
);
create sequence teacher_seq;

alter table tblTeacher
    add constraint tblt_teacher_seq_pk primary key(teacher_seq);
alter table tblTeacher
    add constraint tblt_teacher_ssn_uq unique(teacher_ssn);
