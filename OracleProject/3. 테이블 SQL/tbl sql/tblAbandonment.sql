--중도탈락자관리
create table tblAbandonment
(
abandonment_seq number not null,
enrollment_seq number not null,
abandonment_date date default sysdate
);
create sequence abandonment_seq;
alter table tblAbandonment 
    add constraint tbla_abandonment_seq_pk primary key(abandonment_seq);
alter table tblAbandonment
    add constraint tbla_enrollment_seq_fk foreign key (enrollment_seq) references tblEnrollment(enrollment_seq);
