
create sequence messagebox_num
start with 1
increment by 1;

drop table baby_messagebox;

create table baby_messagebox (
	num number,	
	m_name varchar(10),
	title varchar(20),
	text varchar(1000),
	wdate date
)

select * from baby_messagebox;