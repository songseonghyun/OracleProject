-- create table

--------------------------------------------------
-- 사후 관리 테이블
create table tblPostManagement (
    pm_seq number,
    enrollment_seq number not null,
    pm_employee varchar2(1) not null,
    pm_jobseeker varchar2(1) not null
);

create sequence pm_seq;

alter table tblPostManagement
    add constraint tblpm_pm_seq_pk primary key(pm_seq);
alter table tblPostManagement
    add constraint tblpm_enrollment_seq_fk foreign key(enrollment_seq) references tblEnrollment(enrollment_seq);
alter table tblPostManagement
    add constraint tblpm_enrollment_seq_uq unique(enrollment_seq);
alter table tblPostManagement
    add constraint tblpm_pm_employee_ck check(pm_employee in ('Y', 'N'));
alter table tblPostManagement
    add constraint tblpm_pm_jobseeker_ck check(pm_jobseeker in ('Y', 'N'));
    
-- 취업자 테이블
create table tblEmployee
(
    pm_seq number,
    rc_seq number not null,
    employee_hiredate date default sysdate not null,
    employee_insurance varchar2(1) not null,
    employee_salary number not null
);

alter table tblEmployee
    add constraint tblep_employee_seq_pk primary key(pm_seq);
alter table tblEmployee
    add constraint tblep_pm_seq_fk foreign key(pm_seq) references tblPostManagement(pm_seq);
    
    
alter table tblEmployee
    add constraint tblep_rc_seq_fk foreign key(rc_seq) references tblRecruitCategory(rc_seq);

alter table tblEmployee
    add constraint tblep_employee_insurance_ck check (employee_insurance in ('Y','N'));
    
-- 취업 희망자 테이블
create table tblJobSeeker (
    pm_seq number,
    js_salary number not null,
    area_seq number not null,
    rc_seq number not null
);

alter table tblJobSeeker
    add constraint tbljs_pm_seq_pk primary key(pm_seq);
alter table tblJobSeeker
    add constraint tbljs_pm_seq_fk foreign key(pm_seq) references tblPostManagement(pm_seq);
alter table tblJobSeeker
    add constraint tbljs_area_seq_fk foreign key(area_seq) references tblArea(area_seq);
alter table tblJobSeeker
    add constraint tbljs_rc_seq_fk foreign key(rc_seq) references tblRecruitCategory(rc_seq);
    
-- 취업 분야 테이블
create table tblRecruitCategory
(
    rc_seq number,
    rc_name varchar2(100) not null
);

create sequence rc_seq;

alter table tblRecruitCategory
    add constraint tblrc_rc_seq_pk primary key(rc_seq);

alter table tblRecruitCategory
    add constraint tblrc_rc_name_uq unique (rc_name);
    
-- 취업 정보 테이블
create table tblRecruitInfo (
    ri_seq number,
    company_seq number not null,
    rc_seq number not null,
    ri_salary number not null,
    ri_startdate date default sysdate not null,
    ri_enddate date not null
);


create sequence ri_seq;

alter table tblRecruitInfo
    add constraint tblri_ri_seq_pk primary key(ri_seq);
    
alter table tblRecruitInfo
    add constraint tblri_company_seq_fk foreign key(company_seq) references tblCompany(company_seq);

alter table tblRecruitInfo
    add constraint tblri_rc_seq_fk foreign key(rc_seq) references tblRecruitCategory(rc_seq);

-- 지역 테이블
create table tblArea
(
    area_seq number,
    area_name varchar2(300) not null
);

create sequence area_seq;

alter table tblArea
    add constraint tblarea_area_seq_pk primary key(area_seq);

alter table tblArea
    add constraint tblarea_area_name_uq unique (area_name);

-- 상담 일지 테이블
create table tblCounselLog
(
    cl_seq number,
    enrollment_seq number not null,
    cl_date date default sysdate not null,
    cl_content varchar2(300) not null,
    cc_seq number not null
);

create sequence cl_seq;

alter table tblCounselLog
    add constraint tblcl_cl_seq_pk primary key(cl_seq);

alter table tblCounselLog
    add constraint tblcl_enrollment_seq_fk foreign key(enrollment_seq) references tblEnrollment(enrollment_seq);

alter table tblCounselLog
    add constraint tblcl_cc_seq_fk foreign key(cc_seq) references tblCounselCategory(cc_seq);
--------------------------------------------------










--------------------------------------------------
-- 강의실 테이블
drop tblroom;
select * from tblroom;

create table tblRoom
(
	room_seq number,
	room_name varchar2(20) not null,
	room_capacity number not null
);

create sequence room_seq;

alter table tblRoom
    add constraint tblr_room_seq_pk primary key(room_seq);
    
alter table tblRoom
    add constraint tblr_room_capacity_ck check(room_capacity in (26,30));


-- 개설 과목 테이블
create table tblRoom
(
	room_seq number,
	room_name varchar2(20) not null,
	room_capacity number not null
);

create sequence room_seq;

alter table tblRoom
    add constraint tblr_room_seq_pk primary key(room_seq);
alter table tblRoom
    add constraint tblr_room_capacity_ck check(room_capacity in (26,30));
    
-- 과목 테이블
create table tblSubject
(
	subject_seq number,
	subject_name varchar2(60) not null,
	subject_period number not null
);

create sequence subject_seq;

alter table tblSubject
    add constraint tbls_subject_seq_pk primary key(subject_seq);



-- 교재 테이블
create table tblBook
(
	book_seq number,
	book_name varchar2(100) not null,
	book_publisher varchar2(50) not null,
	book_price number null,
	subject_seq number not null
);

create sequence book_seq;

alter table tblBook
    add constraint tblb_book_seq_pk primary key(book_seq);

alter table tblBook
    add constraint tblb_subject_seq_fk foreign key(subject_seq) references tblSubject(subject_seq);

-- 시험 테이블
create table tblTest
(
	test_seq number,
	test_file varchar2(300) null,
	os_seq number not null,
	test_type varchar2(6) not null,
	test_date date default sysdate not null
);

create sequence test_seq;

alter table tblTest
    add constraint tqlt_test_seq_pk primary key(test_seq);

alter table tblTest
    add constraint tqlt_os_seq_fk foreign key(os_seq) references tblOpenSubject(os_seq);
    
alter table tblTest
    add constraint tqlt_test_file_uq unique(test_file);
    
alter table tblTest
    add constraint tqlt_test_type_ck check (test_type in ('필기','실기'));

-- 배점 테이블
create table tblScorePercent
(
    sp_seq number,
	os_seq number not null,
	exam_per number default 40 not null,
	skill_per number default 40 not null,
	attendance_per number default 20 not null
);

alter table tblScorePercent
    add constraint tqlsp_sp_seq_pk primary key(sp_seq);

alter table tblScorePercent
    add constraint tqlsp_os_seq_fk foreign key(os_seq) references tblOpenSubject(os_seq);
    
alter table tblScorePercent
    add constraint tqlsp_os_seq_uq unique(os_seq);
    
alter table tblScorePercent
    add constraint tqlsp_att_per_ck check(attendance_per >= 20);

--------------------------------------------------










--------------------------------------------------
drop table tblinterview;
drop table tblquestion;
drop table tblcourse;
drop table tblAbandonment;
drop table tblTeacherEvaluation;
drop table tblenrollment;
drop table tblstudent;



-- 교육생
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

--질문
create table tblQuestion
(
	question_seq number not null,
	student_seq number not null,
	question_date date default sysdate not null,
	question_content varchar2(300) not null
);

create sequence question_seq;

alter table tblQuestion
    add constraint tblq_question_seq_pk primary key(question_seq);
   
alter table tblQuestion
    add constraint tblq_student_seq_fk foreign key(student_seq) references tblStudent(student_seq);
    
    
--면접 관리
create table tblInterview
(interviewer_seq number not null,
interview_date date default sysdate,
interview_result varchar2(6)
);

alter table tblInterview
    add constraint tbli_interviewer_seq_pk primary key(interviewer_seq);
alter table tblInterview
    add constraint tbli_interviewer_seq_fk foreign key(interviewer_seq) references tblInterviewer(interviewer_seq); 
alter table tblInterview
    add constraint tbli_interview_result_ck check(interview_result in ('y','n','Y','N'));


--과정 정보
create table tblCourse
(
course_seq number not null,
course_name varchar2(80) not null,
course_period number not null 
);

create sequence course_seq;

alter table tblCourse
    add constraint tblc_course_seq_pk primary key(course_seq);
alter table tblCourse
    add constraint tblc_course_period_ck check(course_period in (5.5, 6, 7));

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


--중도탈락자관리
create table tblAbandonment
(
abandonment_seq number not null,
enrollment_seq number not null,
abandonment_date date default sysdate
);

alter table tblAbandonment 
    add constraint tbla_abandonment_seq_pk primary key(abandonment_seq);
alter table tblAbandonment
    add constraint tbla_enrollment_seq_fk foreign key (enrollment_seq) references tblEnrollment(enrollment_seq);



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
   add constraint tblte_enrollment_seq_pk primary key(enrollment_seq);

alter table tblTeacherEvaluation
    add constraint tblte_enrollment_seq_fk foreign key (enrollment_seq) references tblEnrollment(enrollment_seq); 

alter table tblTeacherEvaluation
    add constraint tblte_preparing_ck check(preparing between 0 and 10);
alter table tblTeacherEvaluation
    add constraint tblte_implement_ck check(implement between 0 and 10);
alter table tblTeacherEvaluation
    add constraint tblte_professionalism_ck check(professionalism between 0 and 10);
alter table tblTeacherEvaluation
    add constraint tblte_attitude_ck check(attitude between 0 and 10);
alter table tblTeacherEvaluation
    add constraint tblte_studentsupport_ck check(studentsupport between 0 and 10);
    
--------------------------------------------------    










--------------------------------------------------
-- text.sql

-- 교사 관리
create table tblTeacherManagement (
    tm_seq number not null,
    oc_seq number not null,
    teacher_seq number not null,
    tm_state varchar2(6) not null

);

create sequence tm_seq;

alter table tblTeacherManagement
    add constraint tbltm_tm_seq_pk primary key(tm_seq);
    
alter table tblTeacherManagement
    add constraint tbltm_oc_seq_fk foreign key(oc_seq) references tblOpenCourse(oc_seq);
alter table tblTeacherManagement
    add constraint tbltm_teacher_seq_fk foreign key(teacher_seq) references tblTeacher(teacher_seq);
alter table tblTeacherManagement
    add constraint tbltm_tm_state_ck check(tm_state in('배치', '교체'));


-- 교사
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
    
    
    
-- 교사별 과목
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


-- 답변
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
    add constraint tbla_teacher_seq foreign key(teacher_seq) references tblTeacher(teacher_seq);
    
    
    -- 면접자
create table tblInterviewer(
    interviewer_seq number not null,
    interviewer_name varchar2(30) not null,
    interviewer_tel varchar2(30) not null,
    oc_seq number not null,
    interviewer_date date default sysdate not null
);

create sequence interviewer_seq;

alter table tblInterviewer
    add constraint tblir_interviewer_seq_pk primary key(interviewer_seq);
alter table tblInterviewer
    add constraint tblir_oc_seq_fk foreign key(oc_seq) references tblOpenCourse(oc_seq);
    
    
    
    -- 개설 과정
create table tblOpenCourse
(
    oc_seq number not null,
    course_seq number not null,
    oc_startdate date default sysdate not null,
    oc_enddate date not null,
    room_seq number
); 

create sequence oc_seq;

alter table tblOpenCourse
    add constraint tbloc_oc_seq_pk primary key(oc_seq);
alter table tblOpenCourse
    add constraint tbloc_course_seq_fk foreign key(course_seq) references tblCourse(course_seq);
alter table tblOpenCourse
    add constraint tbloc_room_seq_fk foreign key(room_seq) references tblRoom(room_seq);
    
    
--------------------------------------------------










--------------------------------------------------
--관리자
create table tblAdmin (
	admin_seq NUMBER,
	admin_name varchar2(20) NOT NULL,
	admin_ssn varchar2(14) NOT NULL,
	admin_tel varchar2(20) NOT NULL
);

create sequence admin_seq;

alter table tblAdmin
    add constraint tbladmin_admin_seq_pk primary key(admin_seq);

alter table tblAdmin
    add constraint tbladmin_admin_ssn_uq UNIQUE (admin_ssn);
  
   
   
 
--기업
create table tblCompany (
	company_seq NUMBER,
	company_name varchar2(50) NOT NULL,
	company_tel varchar2(20) NOT NULL,
	area_seq NUMBER NOT NULL
);

create sequence company_seq;

ALTER TABLE tblCompany
	ADD CONSTRAINT tblc_company_seq_pk PRIMARY KEY (company_seq);

alter table tblCompany
    add constraint tblc_area_seq_fk foreign key(area_seq) references tblArea(area_seq);
  
   
   
--상담 분류
create table tblCounselCategory (
	cc_seq NUMBER,
	cc_content varchar2(300) NOT NULL
);

create sequence cc_seq;

ALTER TABLE tblCounselCategory
	ADD CONSTRAINT tblcc_cc_seq_pk PRIMARY KEY (cc_seq);




-- 출결

select * from tblattendance;

drop table tblattendance;

create table tblAttendance (
	attendance_seq NUMBER,
	enrollment_seq NUMBER NOT NULL,
	attendance_date date default sysdate not null,
	attendance_entertime DATE,
	attendance_leavetime DATE
);

create sequence attendance_seq;

alter table tblAttendance
    add constraint tblad_attendance_seq_pk primary key(attendance_seq);
    
alter table tblAttendance
    add constraint tblad_enrollment_seq_fk foreign key(enrollment_seq) REFERENCES tblEnrollment(enrollment_seq);
   
--출결 상태
create table tblAttendanceState (
	attendance_seq number,
	as_state varchar2(6) NOT NULL
);

alter table tblAttendanceState
    add constraint tblas_attendance_seq_pk primary key(attendance_seq);
    
alter table tblAttendanceState
    add constraint tblas_attendance_seq_fk foreign key(attendance_seq) references tblAttendance(attendance_seq);

alter table tblAttendanceState
    add constraint tblas_as_state_ck check (as_state in ('정상', '지각', '조퇴', '결석'));

   
--성적
create table tblScore (
	score_seq NUMBER,
	enrollment_seq NUMBER NOT NULL,
	os_seq NUMBER NOT NULL,
	sp_seq NUMBER NOT NULL,
	score_exam NUMBER NOT NULL ,
	score_skill NUMBER NOT NULL ,
	score_attendance NUMBER NOT NULL 
);

create sequence score_seq;

alter table tblScore
    add constraint tbls_score_seq_pk primary key(score_seq);
    
alter table tblScore
    add constraint tbls_enrollment_seq_fk foreign key(enrollment_seq) references tblEnrollment(enrollment_seq);
    
alter table tblScore
    add constraint tbls_os_seq_fk foreign key(os_seq) references tblOpenSubject(os_seq);
    
alter table tblScore
    add constraint tbls_sp_seq_fk foreign key(sp_seq) references tblScorePercent(sp_seq);

alter table tblScore
    add constraint tbls_score_exam_ck check (score_exam BETWEEN 0 AND 50);

alter table tblScore
    add constraint tbls_score_skill_ck check (score_skill BETWEEN 0 AND 50);

alter table tblScore
    add constraint tbls_score_attendance_ck check (score_attendance BETWEEN 0 AND 50);





















