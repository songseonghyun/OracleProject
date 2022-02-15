--교사평가 
create table tblTeacherEvaluation
(
enrollment_seq number not null,
preparing number not null,
implement number not null,
professionalism number not null, 
attitude number not null,
studentsupport number not null,
otheropinion varchar2(300)
);

alter table tblTeacherEvaluation
    add constraint tblte_enrollment_seq_fk foreign key (enrollment_seq) references tblEnrollment(enrollment_seq); 
    
alter table tblTeacherEvaluation
   add constraint tblte_enrollment_seq_pk primary key(enrollment_seq);

alter table tblTeacherEvaluation
    add constraint tblte_preparing_ck check(preparing between 0 and 10);
alter table tblTeacherEvaluation
    add constraint implement_ck check(implement between 0 and 10);
alter table tblTeacherEvaluation
    add constraint tblte_professionalism_ck check(professionalism between 0 and 10);
alter table tblTeacherEvaluation
    add constraint tblte_attitude_ck check(attitude between 0 and 10);
alter table tblTeacherEvaluation
    add constraint tblte_studentsupport_ck check(studentsupport between 0 and 10);
    