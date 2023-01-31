/*campinfo 더미파일*/
insert into campinfo (cName ,cInfo ,cTel ,cLocation ,cStartDate ,cEndDate,cMoney, cImage) values('캠프', '캠프정보', '캠프번호', '캠프장소', now(),now(), 83500, '/images/eximage.jpg');
insert into campinfo (cName ,cInfo ,cTel ,cLocation ,cStartDate ,cEndDate,cMoney, cImage ) values('여름밤 그리고 캠핑', '여름밤 그리고 캠핑정보', '010-1232-1232', '대한민국', now(),now(),10000, '/images/ex.jpg');
insert into campinfo (cName ,cInfo ,cTel ,cLocation ,cStartDate ,cEndDate,cMoney ) values('캠프3', '캠프정보3', '캠프번호3', '캠프장소3', now(),now(),1000);
insert into campinfo (cName ,cInfo ,cTel ,cLocation ,cStartDate ,cEndDate,cMoney ) values('캠프4', '캠프정보4', '캠프번호4', '캠프장소4', now(),now(),1000);
insert into campinfo (cName ,cInfo ,cTel ,cLocation ,cStartDate ,cEndDate,cMoney ) values('캠프5', '캠프정보5', '캠프번호5', '캠프장소5', now(),now(),1000);
/*더미파일* 더미파일 추가는 이런 형식으로 추가해주세요/

/*joinqna 필수 insert 값*/
insert into joinqna(qques) values('기억에 남는 추억의 장소는?');
insert into joinqna(qques) values('자신의 인생 좌우명은?');
insert into joinqna(qques) values('가장 기억에 남는 선생님 성함은?');
insert into joinqna(qques) values('자신의 보물 제 1호는?');
insert into joinqna(qques) values('유년시절 가장 생각나는 친구의 이름은?');
insert into joinqna(qques) values('다시 태어나면 되고 싶은 것은?');
insert into joinqna(qques) values('인상 깊게 읽은 책 이름은?');




create table users(
	uId varchar(30) primary key,
	uPw varchar(20),
	uName varchar(10),
	uPostCode varchar(30),
	uAddr varchar(50),
	uAddrDetail varchar(50),
	uWallet integer,
	uRsvTime timestamp,
	qId integer,
	uAnswer varchar(30), /*사용자가 회원가입시 한 대답*/
	CONSTRAINT fk_qId FOREIGN KEY(qId) REFERENCES "joinqna"(qId) ON DELETE CASCADE ON UPDATE CASCADE
);

create table campinfo(
	cId serial primary key,
	cName varchar(30),
	cInfo varchar(3000),
	cTel varchar(30),
	cLocation varchar(100),
	cStartDate date,
	cEndDate date,
	cMoney integer,
	cImage varchar(30)
);


create table reservation(
	rId serial primary key,
	cId integer,
	uId varchar(30),
	CONSTRAINT fk_cId FOREIGN KEY(cId) REFERENCES "campinfo"(cId) ON DELETE CASCADE ON UPDATE cascade,
	CONSTRAINT fk_uId FOREIGN KEY(uId) REFERENCES "users"(uId) ON DELETE CASCADE ON UPDATE CASCADE
);

create table joinQnA(
	qId serial primary key,
	qQues varchar(30)
)
