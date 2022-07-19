create database tricolici;
use tricolici;
    
CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
	login CHAR(30) NOT NULL,
	password CHAR(30) NOT NULL,
	PRIMARY KEY (id)
);

select * from users;

INSERT INTO users (login, password) VALUES
    ('ana', 'ana123'),
    ('anastasia', 'anastasia321'),
    ('angela', 'angela321'),
    ('antonita', 'antonita521'),
    ('irina', 'irina854'),
    ('emanuel', 'emanuel454'),
    ('tatiana', 'tatiana555'),
    ('adrian', 'adrian412'),
    ('deonis', 'deonis 524'),	
    ('mihail', 'mihail285'),
    ('ion', 'ion555'),
    ('adrian', 'adrian542'),
    ('renat', 'renat789'),
    ('eugen', 'eugen'),
    ('ciprian', 'cip1998');
    
#delete from users where id = 1;

CREATE TABLE profiles (
	id INT NOT NULL AUTO_INCREMENT,
	first_name CHAR(30) NOT NULL,
	last_name CHAR(30) NOT NULL,
	email CHAR(30) NOT NULL,
	age INT NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO profiles (first_name, last_name, email, age) VALUES
    ('ana', 'trticolici', 'ana123@gmail.com', 19),
    ('cip', 'cipcolici', 'cip123@gmailprofiles.com', 23),
    ('antonita', 'daranuta', 'antonita521@gmailprofiles',12),
    ('irina', 'turcan', 'irina854@gmailprofiles',54),
    ('emanuel', 'minascurta', 'emanuel454@gmailprofiles',55),
    ('tatiana', 'pralea', 'tatiana555@gmailprofiles',66),
    ('adrian', 'rusu', 'adrian412@gmailprofiles',78),
    ('deonis', 'delean', 'deonis 524@gmailprofiles',98),	
    ('mihail', 'bojika', 'mihail285@gmailprofiles',65),
    ('ion', 'spatari', 'ion555@gmailprofiles',32);

select * from profiles;


CREATE TABLE games (
	id INT NOT NULL AUTO_INCREMENT,
	first_player_id INT NOT NULL,
	second_player_id  INT NOT NULL,
	PRIMARY KEY (id),
    
    CONSTRAINT fk_first_profile FOREIGN KEY (first_player_id) REFERENCES profiles(id),  
    CONSTRAINT fk_fsecond_profile FOREIGN KEY (second_player_id) REFERENCES profiles(id)  
);

#drop table games;
select * from games;

INSERT INTO games (first_player_id, second_player_id) VALUES
	('1', '2'), 
	('2', '1');

    
CREATE TABLE game_results (
	id INT NOT NULL AUTO_INCREMENT,
	result_value CHAR(30) NOT NULL,
	PRIMARY KEY (id)
); 

select * from game_results;

insert into game_results(result_value) values 
	('WIN'),
	('LOSE'),
	('DRAW');
    
CREATE TABLE achievements (
	id INT NOT NULL AUTO_INCREMENT,
	achiev_name CHAR(30) NOT NULL,
	PRIMARY KEY (id)
); 

select * from achievements;

insert into achievements(achiev_name) values 
	('ciainic'),
	('loh'),
	('tac sibe'),
	('norm'),
	('malatoc'),
	('binisor');

CREATE TABLE player_achievs (
	id INT NOT NULL AUTO_INCREMENT,
	player_id INT NOT NULL,
	achiev_id INT NOT NULL,
	PRIMARY KEY (id),
    
    CONSTRAINT fk_player_achievs FOREIGN KEY (player_id) REFERENCES profiles(id),  
    CONSTRAINT fk_achiev FOREIGN KEY (achiev_id) REFERENCES achievements(id)
); 

insert into player_achievs(player_id,achiev_id) values 
	(1, 2),
	(2, 4),
	(3, 6);


CREATE TABLE player_results (
	id INT NOT NULL AUTO_INCREMENT,
	player_id INT NOT NULL,
	result_id INT NOT NULL,
	game_id INT NOT NULL,
	PRIMARY KEY (id),
    
    CONSTRAINT fk_player FOREIGN KEY (player_id) REFERENCES profiles(id),  
    CONSTRAINT fk_result FOREIGN KEY (result_id) REFERENCES game_results(id), 
    CONSTRAINT fk_game FOREIGN KEY (game_id) REFERENCES games(id)  
); 

select * from profiles;
select * from game_results;
select * from games;

insert into player_results(player_id,result_id,game_id) values 
	(2, 3, 8),
	(1, 1, 7),
	(2, 2, 3);

select * from player_results;

select * from users;
delete from users where id in (2,5,7,12,15);


select * from profiles;
update profiles set first_name ='bob' where id in (5);
  
########

create table couses ( 
id int auto_increment,
	`name` varchar (30) not null,
	primary key (id)
);

alter table users add column profile_id int not null default 1;

alter table users add constraint fk_users_profiles
	FOREIGN KEY (profile_id) REFERENCES profiles(id);



