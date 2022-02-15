--수강신청관리
create table tblEnrollment
(
enrollment_seq number not null, 
oc_seq number not null,
student_seq number not null
);
create sequence enrollment_seq;
alter table tblEnrollment
    add constraint tble_enrollment_seq_pk primary key(enrollment_seq);
alter table tblEnrollment
    add constraint tble_oc_seq_fk foreign key (oc_seq) references tblOpenCourse(oc_seq);
alter table tblEnrollment
    add constraint tble_student_seq_fk foreign key (student_seq) references tblStudent(student_seq);   
