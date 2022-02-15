create table tblAnswer(
    question_seq number not null,
    teacher_seq number not null,
    answer_regdate date default sysdate not null,
    answer_content varchar2(300) not null
);



alter table tblAnswer
    add constraint tbla_question_seq_pk primary key(question_seq);
alter table tblAnswer
    add constraint tbla_question_seq_fk foreign key(question_seq) references tblQuestion(question_seq);
alter table tblAnswer
    add constraint tbla_teacher_seq_fk foreign key(teacher_seq) references tblTeacher(teacher_seq);
  