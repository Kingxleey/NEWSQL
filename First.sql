create table public.tbl_school(
sch_id serial primary key,
	sch_name varchar(40) not null,
	sch_address varchar(40)not null,
	sch_phone_no integer unique
)

create table public.tbl_student(
st_id serial primary key,
	roll_no integer unique,
	st_name varchar(40) not null,
	pa_id integer not null,  /*FOREIGN KEY*/
	reg_id integer not null,
	st_phone_no integer unique,
	st_DOB date not null,
	st_gender varchar(10) not null,
	st_email varchar(40) unique,
	constraint parent_id foreign key(pa_id) references public.tbl_parent(pa_id),
	constraint registration_id foreign key(reg_id) references public.tbl_reistration(reg_id)
)

create table public.tbl_parent(
pa_id serial primary key,
	pa_name varchar(40) not null,
	pa_phone_no integer unique,	
	pa_occupation varchar(40) not null
)

create table.public.tbl_registration(
reg_id serial primary key,
	reg_no integer not null,
	reg_date date not null
	
)

create table public.tbl_course_reg(
co_id serial primary key,
	co_name varchar(30) not null,
	co_date date not null,
	st_id integer not null,
	constraint st_id foreign key(st_id) references public.tbl_student(st_id)
)

create table public.tbl_class(
cls_id serial primary key,
	cls_name varchar(30) not null,
	st_id integer not null,   /*FK*/
	co_id integer not null,
	teacher_id integer not null,
	room_id integer not null,
	cls_date date not null,
	cls_start_time time not null,
	cls_end_time time not null,
	constraint student_id foreign key(st_id) references public.tbl_student(st_id),
	constraint course_id foreign key(co_id) references public.tbl_course_reg(co_id),
	constraint teacher_id foreign key(teacher_id) references public.tbl_teacher(teacher_id),
	constraint room_id foreign key(room_id) references public.tbl_room(room_id)	
)

create table public.tbl_teacher(
teacher_id serial primary key,
	te_name varchar (40) not null,
	te_phone_No integer not null,
	te_email varchar(30) unique,
	te_gender varchar(20) not null,
	te_join_date date not null
)

create table public.tbl_room(
room_id serial primary key,
	roll_no integer unique
)
create table public_tbl.quezeies(
	quz_id serial primary key,
	quz_date date not null,
	quz_type_id integer not null,
	st_id integer not null,
	teacher_id integer not null,
	course_id integer not null,
	marks integer not null

constraint student_id foreign key(st_id) references public.tbl_student_id(st_id)
constraint teacher_id foreign key(teacher_id) references public.tbl_teacher_id(teacher_id)
constraint course_id foreign key(course_id) references public.tbl_course_id(course_id)
constraint quz_id foreign key(quz_type_id) references public.tbl_queze_id(quz_type_id)
)

create table public_tbl.quze_type(
	quze_type_name varchar(20) not null
	)
	
	create table public_tbl.paper(
		p_id serial primary key,
		st_id integer not null,
		teacher_id integer not null,
		quz_id integer not null,
		course-id integer not null
		p_date date not null,
		total_marks integer not null,
		obtain_marks integer not null,
		
	constraint student_id foreign key(st_id) references public.tbl_student(st_id)
		constraint teacher_id foreign key(teacher_id) references public.tbl_teacher(teacher_id)
		constraint quze_id foreign key(quze_id) references public.tbl_quze(quze_id)
		constraint course_id foreign key(course_id) references public.tbl_course(course_id)
		)
	
	
	
		
		