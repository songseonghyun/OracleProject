create table tblSubjectTeacher (
    st_seq number not null,
    subject_seq number not null,
    teacher_seq number not null
);

create sequence st_seq;

alter table tblSubjectTeacher
    add constraint tblst_st_seq_pk primary key(st_seq);
alter table tblSubjectTeacher
    add constraint tblst_subject_seq_fk foreign key (subject_seq) references tblSubject(subject_seq);
alter table tblSubjectTeacher
    add constraint tblst_teacher_seq_fk foreign key (teacher_seq) references tblTeacher(teacher_seq);
    