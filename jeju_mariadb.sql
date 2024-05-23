use team22;

-- member 테이블 생성
create table member(id varchar(20) primary key, pw varchar(300), name varchar(50), email varchar(200), tel varchar(20) , 
jdate datetime default current_timestamp, addr varchar(300), postcode varchar(8));
select * from member; 

-- member 테이블 더미데이터
insert into member values('admin', '1234', '관리자', 'admin@naver.com', '010-1234-5678', default, '인천 서구 십정동 $ 한신휴 110동 3603호', '21539');
insert into member values('user1', '4321', '유저원', 'user1@naver.com', '010-1111-2222', default,'더미1앞 $ 더미1뒤', '12345');

-- notice 테이블 생성
create table notice(no int auto_increment primary key, title varchar(200), content varchar(2000), resdate datetime default current_timestamp, visited int);
select * from notice;

-- notice 테이블 더미데이터
insert into notice (title, content, resdate, visited) values('더미제목1', '더미내용1', default, 0);
insert into notice (title, content, resdate, visited) values('더미제목2', '더미내용2', default, 0);

-- qna 테이블 생성
create table qna(no int auto_increment primary key, plevel int not null, parno int, title varchar(200), content varchar(2000),
resdate datetime default current_timestamp ,visited int, aid varchar(20));
select * from qna;

-- qna 질문 더미데이터
insert into qna(plevel, parno, title, content, resdate, visited, aid) values(1,null,'더미제목','더미내용',default,0,'user1');

-- 질문 parno 업데이트
UPDATE qna
JOIN (SELECT no FROM qna ORDER BY no DESC LIMIT 1) AS sub
SET qna.parno = sub.no
WHERE qna.no = sub.no;


-- board 테이블 생성
create table board(no int auto_increment primary key, title varchar(200), content varchar(2000), resdate datetime default current_timestamp, visited int, aid varchar(20));
select * from board;

-- board 테이블 더미데이터
insert into board(title, content, resdate, visited, aid) values('더미제목1', '더미내용1', default, 0, 'user1');

-- coment 테이블 생성
create table coment(cno int auto_increment primary key, no int, content varchar(2000), resdate datetime default current_timestamp, aid varchar(20));
select * from coment;

-- coment 테이블 더미데이터
insert into coment(no,content,resdate,aid) values(1,'더미댓글1', default, 'user1');


-- data 테이블 생성
create table data(no int auto_increment primary key, title varchar(200), content varchar(2000), datafile varchar(300), 
resdate datetime default current_timestamp, visited int);
select * from data;
