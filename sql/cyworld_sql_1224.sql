drop table diary;
create table diary (
    bno int auto_increment,
    title varchar(100) not null,
    content blob not null,
    updatedate TIMESTAMP DEFAULT NOW(),
    primary key (bno)
);

drop table member_cy;
create table member_cy (
	name varchar(50) not null,
    userid varchar(50) primary key,
    pwd varchar(100) not null,
    email varchar(50) not null,
    phone varchar(20) not null,
    grade varchar(10) not null,
    photourl varchar(200) not null
);
select * from member_cy;
select * from diary;





drop table photo;
create table photo (
    bno int auto_increment,
    title varchar(100) not null,
    content blob not null,
    updatedate TIMESTAMP DEFAULT NOW(),
    photourl varchar(200),
    primary key(bno)
);
insert into photo(title,content,photourl) values("제목","sodyd",null);
select * from photo;
alter table photo convert to character set utf8;




drop table reply;
create table reply (
    rno int not null auto_increment,
    bno int not null,
    id varchar(50) not null,
    content text not null,
    date TIMESTAMP not null DEFAULT NOW(),
    primary key (rno,bno),
    foreign key(bno) references diary(bno)
);

drop table visit;
create table visit (
    bno int auto_increment,
    userid varchar(50),
    content blob not null,
    updatedate TIMESTAMP DEFAULT NOW(),
    photourl varchar(200) not null,
    PRIMARY KEY (bno,userid)
);


SELECT * FROM visit;
SELECT * FROM reply;
SELECT * FROM member_cy;
SELECT * FROM diary order by bno desc;
SELECT * FROM photo;

