select * from BABY_MESSAGEBOARD

 

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
    filename varchar2(50),
    kind varchar2(30)
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