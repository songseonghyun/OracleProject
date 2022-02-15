 create table tblSubject
(
	subject_seq number,
	subject_name varchar2(60) not null,
	subject_period number not null
);

create sequence subject_seq;

alter table tblSubject
    add constraint tbls_subject_seq_pk primary key(subject_seq);
    