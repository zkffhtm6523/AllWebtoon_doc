create table t_webtoon(
    w_no number(37) primary key,
    w_title varchar2(1000) not null,
    w_genre varchar2(100) not null,
    w_storyWriter varchar2(100) not null,
    w_artist varchar2(100) not null,
    w_thumbnail varchar2(1000) not null,
    w_link varchar2(1000) not null
);

create table t_user(
    u_id varchar2(100) primary key,
    u_password varchar2(100) not null,
    u_birth date not null,
    u_gender varchar2(10) not null,
    u_email varchar2(100) unique,
    u_genre varchar2(100) not null,
    u_profile varchar2(1000)
);

create table t_comment(
    w_no number(37),
    c_oneline varchar2(1000),
    u_id varchar2(100),
    c_grade number(10) not null,
    foreign key(w_no) references t_webtoon(w_no),
    foreign key(u_id) references t_user(u_id)
);
    