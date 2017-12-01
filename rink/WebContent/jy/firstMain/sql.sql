create table baby_member(
	m_id varchar(30) primary key,
	m_pw varchar(30),
	m_name varchar(30),
	m_sex varchar(30),
	m_phone varchar(30),
	m_blood varchar(30),
	m_weight number,
	m_height number,
	m_birth varchar(30)
);

drop table baby_member;

insert into BABY_MEMBER values('1','1','1','1','1','1',1,1,'1');

select * from BABY_MEMBER