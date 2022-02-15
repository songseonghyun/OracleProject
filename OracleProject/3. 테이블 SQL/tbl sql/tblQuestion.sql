create table tblQuestion
(
	question_seq number not null,
	student_seq number not null,
	question_date date not null,
	question_content varchar2(300) not null
);
create sequence question_seq;
create sequence question_seq;
alter table tblQuestion
    add constraint tblq_question_seq_pk primary key(question_seq);
   
alter table tblQuestion
    add constraint tblq_student_seq_fk foreign key(student_seq) references tblStudent(student_seq);
    commit;