--면접 관리
create table tblInterview
(interviewer_seq number not null,
interview_date date default sysdate,
interview_result varchar2(1)
);

alter table tblInterview
    add constraint tbli_interviewer_seq_fk foreign key(interviewer_seq) references tblInterviewer(interviewer_seq); 
alter table tblInterview
    add constraint tbli_interviewer_seq_pk primary key(interviewer_seq);
alter table tblInterview
    add constraint tbli_interview_result_ck check(interview_result in ('y','n','Y','N'));
