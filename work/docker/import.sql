create table "School"
(
    id   serial
        constraint school_pk
            primary key,
    name varchar
);

alter table "School"
    owner to app;

create unique index school_name_uindex
    on "School" (name);