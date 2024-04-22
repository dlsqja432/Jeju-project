use kh;

-- member 테이블 생성
create table member(id varchar(20) primary key, pw varchar(300), name varchar(50), email varchar(200), tel varchar(20) , jdate datetime default current_timestamp);

insert into member values('user1', 'up', 'inbeom', 'dlsqja432naver.com', '123456', default); 
insert into member values('admin', '1234', '관리자', 'admin@naver.com', '010-1234-5678', default);


-- notice 테이블 생성
create table notice(no int auto_increment primary key, title varchar(200), content varchar(2000), resdate datetime default current_timestamp, visited int);
select * from notice;
insert into notice (title, content, resdate, visited) values('더미제목2', '더미내용2', default, 0);


-- qna 테이블 생성
create table qna(no int auto_increment primary key, plevel int not null, parno int, title varchar(200), content varchar(2000),
resdate datetime default current_timestamp ,visited int, aid varchar(20));



-- board 테이블 생성
create table board(no int auto_increment primary key, title varchar(200), content varchar(2000), resdate datetime default current_timestamp, visited int, aid varchar(20));
select * from board;
insert into board(title, content, resdate, visited, aid) values('더미제목1', '더미내용1', default, 0, 'user1');

-- coment 테이블 생성
create table coment(cno int auto_increment primary key, no int, content varchar(2000), resdate datetime default current_timestamp, aid varchar(20));
select * from coment;
insert into coment(no,content,resdate,aid) values(1,'더미댓글1', default, 'user1');
