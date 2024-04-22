use kh;

-- member 테이블 생성
create table member(id varchar(20) primary key, pw varchar(300), name varchar(50), email varchar(200), tel varchar(20) , jdate datetime default current_timestamp);

insert into member values('user1', 'up', 'inbeom', 'dlsqja432naver.com', '123456', default); 

select * from member;


