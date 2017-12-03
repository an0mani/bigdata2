
create sequence messagebox_num
start with 1
increment by 1;

drop table baby_messagebox;

create table baby_messagebox (
	m_num number,	
	m_id varchar2(40),
	m_name varchar(40),
	title varchar(20),
	text varchar(1000),
	wdate date
)

select * from baby_messagebox;

insert into baby_messagebox values(messagebox_num.nextval,'blackdevil73@naver.com','123','123',sysdate)