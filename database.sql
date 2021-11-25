create database doanweb;
use doanweb;
create table Member(
	id int AUTO_INCREMENT,
    firstname varchar(50),
    lastname varchar(50),
    username varchar(50),
    password varchar(50),
    email varchar(50),
    phone varchar(50) unique,
    description varchar(50),
    createdDate datetime,
    updateTime datetime,
    PRIMARY KEY (`id`) 
);
create table Content(
	id int AUTO_INCREMENT,
    title varchar(50),
    brief longtext,
    content longtext,
    createddate datetime,
    updatetime datetime,
	sort varchar(50),
    authorid int,
    PRIMARY KEY (`id`),
    FOREIGN KEY (authorid) REFERENCES Member(id)
);
INSERT INTO Member (firstname , lastname , username , password ,email ,phone ,description,createddate,updatetime)
VALUES ('Dung@gmail.com', 'Dung@gmail.com', 'Dung@gmail.com', 'Dung@gmail.com','Dung@gmail.com','123456789','Nhom12','2021/04/26','2021/05/26');

INSERT INTO Content (title , brief , content, createddate,updatetime , sort ,authorid)
VALUES ('Dung Title', 'Dung Brief', 'Dung Content','2021/04/26','2021/05/26', 'Dung Sort',1);

