create table tblInterview (
    interviewer_seq number not null,
    interview_date date default sysdate,
    interview_result varchar2(1)
);

alter table tblInterview
    add constraint tbli_interviewer_seq_pk primary key(interviewer_seq);

alter table tblInterview
    add constraint tbli_interviewer_seq_fk foreign key(interviewer_seq) references tblInterviewer(interviewer_seq); 
    
alter table tblInterview
    add constraint tbli_interview_result_ck check(interview_result in ('y','n','Y','N'));

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(1, '2019-01-04', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(2, '2019-01-04', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(3, '2019-01-04', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(4, '2019-01-04', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(5, '2019-01-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(6, '2019-01-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(7, '2019-01-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(8, '2019-01-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(9, '2019-01-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(10, '2019-01-06', 'N');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(11, '2020-04-20', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(12, '2021-02-16', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(13, '2020-06-15', 'N');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(21, '2020-03-14', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(73, '2021-04-20', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(150, '2021-08-26', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(247, '2019-11-14', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(271, '2019-10-08', 'N');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(14, '2019-09-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(15, '2020-09-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(16, '2019-08-04', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(17, '2021-06-12', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(18, '2020-04-16', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(19, '2019-04-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(20, '2021-09-03', 'N');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(22, '2020-07-18', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(23, '2020-04-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(24, '2019-01-03', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(25, '2021-08-17', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(26, '2019-10-21', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(27, '2019-03-12', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(28, '2019-05-16', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(29, '2019-12-15', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(30, '2019-02-09', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(31, '2019-07-21', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(32, '2021-05-15', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(33, '2021-03-28', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(34, '2019-08-23', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(35, '2021-11-12', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(36, '2021-06-28', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(37, '2019-08-08', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(38, '2021-11-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(39, '2019-06-11', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(40, '2020-12-08', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(41, '2021-08-20', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(42, '2019-06-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(43, '2020-02-14', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(44, '2020-07-19', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(45, '2019-10-08', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(46, '2020-02-09', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(47, '2021-10-13', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(48, '2020-10-10', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(49, '2020-06-21', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(50, '2020-03-04', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(51, '2020-04-06', 'N');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(53, '2020-12-07', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(54, '2020-03-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(55, '2021-02-20', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(56, '2020-02-17', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(57, '2020-05-23', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(58, '2020-05-04', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(59, '2020-04-12', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(60, '2019-02-17', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(61, '2019-06-10', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(62, '2019-10-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(63, '2021-07-03', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(64, '2019-02-20', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(65, '2021-10-15', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(66, '2020-06-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(67, '2021-10-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(68, '2019-02-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(69, '2020-07-23', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(70, '2020-03-15', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(71, '2020-12-14', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(72, '2020-04-16', 'Y');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(74, '2020-07-20', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(75, '2020-07-16', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(76, '2019-07-07', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(77, '2019-08-09', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(78, '2019-02-08', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(79, '2021-09-06', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(80, '2019-02-21', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(81, '2021-04-18', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(82, '2020-01-24', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(83, '2020-06-13', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(84, '2019-10-15', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(85, '2020-11-25', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(86, '2021-02-13', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(87, '2019-07-10', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(88, '2020-06-07', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(89, '2019-05-22', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(90, '2020-06-03', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(91, '2020-03-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(92, '2021-01-23', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(93, '2020-11-17', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(94, '2021-01-18', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(95, '2019-09-26', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(96, '2021-09-17', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(97, '2021-07-03', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(98, '2021-11-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(99, '2020-11-06', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(100, '2019-09-13', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(101, '2020-05-08', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(102, '2021-02-27', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(103, '2019-08-26', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(104, '2021-03-12', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(105, '2021-07-09', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(106, '2019-08-13', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(107, '2020-01-19', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(108, '2019-10-06', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(109, '2020-03-06', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(110, '2021-08-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(111, '2021-03-03', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(112, '2020-12-28', 'N');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(114, '2020-01-09', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(115, '2019-10-09', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(116, '2020-08-02', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(117, '2020-01-20', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(118, '2021-04-07', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(119, '2020-06-16', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(120, '2020-12-17', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(121, '2019-07-09', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(122, '2019-09-15', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(123, '2020-09-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(124, '2019-11-21', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(125, '2020-06-04', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(126, '2020-02-07', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(127, '2019-10-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(128, '2019-11-23', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(129, '2021-07-23', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(130, '2020-06-14', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(131, '2019-11-24', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(132, '2019-11-03', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(133, '2021-02-12', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(134, '2019-06-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(135, '2019-02-15', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(136, '2019-05-13', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(137, '2020-08-18', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(138, '2020-06-15', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(139, '2020-07-26', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(140, '2021-03-03', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(141, '2021-01-28', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(142, '2019-12-03', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(143, '2019-03-25', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(144, '2019-09-08', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(145, '2021-03-19', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(146, '2021-11-14', 'Y');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(148, '2019-05-10', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(149, '2019-05-23', 'Y');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(151, '2019-08-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(152, '2019-01-12', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(153, '2019-12-04', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(154, '2020-07-19', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(155, '2020-10-03', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(156, '2021-11-08', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(157, '2020-11-04', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(158, '2020-10-01', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(159, '2020-09-21', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(160, '2019-11-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(161, '2019-09-23', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(162, '2020-04-26', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(163, '2021-01-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(164, '2019-07-08', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(165, '2020-01-06', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(166, '2020-10-08', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(167, '2021-03-16', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(168, '2021-08-18', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(169, '2021-04-24', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(170, '2020-12-06', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(171, '2019-07-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(172, '2020-07-16', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(173, '2019-10-14', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(174, '2021-11-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(175, '2020-10-03', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(176, '2021-09-17', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(177, '2021-05-05', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(178, '2019-08-16', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(179, '2020-07-22', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(180, '2019-08-26', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(181, '2019-07-06', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(182, '2019-03-17', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(183, '2020-12-14', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(184, '2020-12-12', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(185, '2021-03-28', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(186, '2021-04-12', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(187, '2021-09-13', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(188, '2020-02-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(189, '2019-03-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(190, '2019-08-16', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(191, '2020-03-26', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(192, '2021-10-20', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(193, '2020-06-25', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(194, '2020-04-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(195, '2020-10-26', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(196, '2021-05-27', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(197, '2019-03-07', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(198, '2019-08-18', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(199, '2019-03-06', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(200, '2019-03-08', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(201, '2021-03-06', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(202, '2019-03-25', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(203, '2021-05-21', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(204, '2019-05-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(205, '2019-05-01', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(206, '2020-01-08', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(207, '2019-11-02', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(208, '2021-07-14', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(209, '2019-01-09', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(210, '2021-11-02', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(211, '2019-10-07', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(212, '2020-10-22', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(213, '2019-12-06', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(214, '2019-12-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(215, '2020-03-22', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(216, '2020-05-12', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(217, '2020-12-21', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(218, '2019-11-17', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(219, '2021-06-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(220, '2020-04-14', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(221, '2020-09-10', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(222, '2019-01-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(223, '2021-08-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(224, '2021-07-07', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(225, '2021-05-14', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(226, '2019-10-18', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(227, '2021-01-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(228, '2020-06-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(229, '2021-03-18', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(230, '2020-08-08', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(231, '2020-01-16', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(232, '2019-04-22', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(233, '2021-08-01', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(234, '2019-06-01', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(235, '2019-02-02', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(236, '2019-10-27', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(237, '2021-11-16', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(238, '2020-09-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(239, '2021-10-13', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(240, '2021-07-07', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(241, '2020-07-05', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(242, '2020-01-01', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(243, '2019-01-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(244, '2019-06-27', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(245, '2020-03-19', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(246, '2020-12-09', 'Y');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(248, '2021-09-24', 'N');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(250, '2020-08-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(251, '2019-11-14', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(252, '2019-07-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(253, '2020-02-08', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(254, '2021-09-22', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(255, '2020-11-16', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(256, '2019-07-02', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(257, '2021-07-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(258, '2021-03-23', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(259, '2019-07-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(260, '2021-10-21', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(261, '2019-01-28', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(262, '2020-11-22', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(263, '2021-09-14', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(264, '2019-03-13', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(265, '2020-11-28', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(266, '2021-02-01', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(267, '2019-01-07', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(268, '2019-05-13', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(269, '2021-07-16', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(270, '2019-08-14', 'N');

insert into tblinterview(interviewer_seq, interview_date, interview_result) values(272, '2020-10-13', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(273, '2019-08-17', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(274, '2021-09-20', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(275, '2019-10-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(276, '2020-09-25', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(277, '2021-01-08', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(278, '2020-02-02', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(279, '2020-04-11', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(280, '2020-12-05', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(281, '2021-07-24', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(282, '2019-04-09', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(283, '2021-09-21', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(284, '2021-06-19', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(285, '2019-10-22', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(286, '2019-02-26', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(287, '2021-04-18', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(288, '2020-09-11', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(289, '2020-07-27', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(290, '2021-07-12', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(291, '2020-03-14', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(292, '2020-08-24', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(293, '2021-06-04', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(294, '2019-09-13', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(295, '2020-04-21', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(296, '2021-05-09', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(297, '2021-05-20', 'N');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(298, '2020-06-01', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(299, '2020-03-05', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(300, '2021-07-20', 'Y');
insert into tblinterview(interviewer_seq, interview_date, interview_result) values(302, '2019-09-20', 'Y');

commit;