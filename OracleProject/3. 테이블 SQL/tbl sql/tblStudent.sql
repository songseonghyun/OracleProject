create table tblStudent
(
student_seq number not null,
student_name varchar2(20) not null,
student_ssn varchar2(14) not null,
student_tel varchar2(30) not null,
student_coursenum number not null
);
create sequence student_seq;

 alter table tblStudent
    add constraint tbls_student_seq_pk primary key(student_seq);

alter table tblStudent
    add constraint student_ssn_uq unique(student_ssn);
