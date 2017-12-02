select * from BABY_MESSAGEBOARD

 create table baby_messageboard(
 id varchar2(10),
 num number,
 title varchar2(30),
 text varchar2(1000),
 wdate varchar2(10),
 filename varchar2(30)
 );
 
 
 
  create table baby_sellboard(
 id varchar2(10),
 num number,
 title varchar2(30),
 text varchar2(1000),
 wdate varchar2(10),
 filename varchar2(30)
 );
 
 create table baby_diary(
    id varchar2(10),
    num number,
    title varchar2(30),
    text varchar2(1000),
    wdate varchar(10),
    filename varchar2(30)
);

create table baby_notice(
    num number,
    title varchar2(30),
    text varchar2(1000),
    wdate varchar(10)
);

create table baby_member(
   m_id varchar(30),
   m_pw varchar(30),
   m_name varchar(30),
   m_sex varchar(10),
   m_phone varchar(30),
   m_blood varchar(10),
   m_weight number,
   m_height number,
   m_birth varchar(30)
);

drop table baby_messageboard;
drop table baby_sellboard;
drop table baby_diary;

 create table baby_messageboard(
    m_id varchar2(50),
    m_num number,
    title varchar2(50),
    text varchar2(1000),
    wdate varchar2(10),
    filename varchar2(50)
 );

create table baby_sellboard(
    m_id varchar2(50),
    m_num number,
    title varchar2(50),
    text varchar2(1000),
    wdate varchar2(10),
    filename varchar2(50)
 );
 
create table baby_diary(
    m_id varchar2(50),
    m_num number,
    title varchar2(50),
    text varchar2(1000),
    wdate varchar2(10),
    filename varchar2(50)
);

create sequence messageboard_num
start with 1
increment by 1;