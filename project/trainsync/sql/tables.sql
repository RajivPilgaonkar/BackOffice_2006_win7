create table traintypes (
	id			integer primary key,
	name 		varchar2(32),
	url 		varchar2(128),
	field 		varchar2(32),
	formaction 	varchar2(128),
	active		integer
);

create table trains (
	shortname	varchar2(16) primary key,
	longname	varchar2(64),
	startname	varchar2(32),
	startcode	varchar2(16),
	starttime	varchar2(8),
	endname		varchar2(32),
	endcode		varchar2(16),
	endtime		varchar2(8),
	runson		integer,
	active		integer,
	schdupdton	date,
	fareupdton	date,
	recdupdton	date,
	type		integer
);





