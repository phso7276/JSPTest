-- auto-generated definition
create table product
(
    p_num     int(4) auto_increment
        primary key,
    p_name    varchar(20)                    null,
    p_type    char                           null,
    p_price   varchar(10)                    null,
    p_desc    varchar(50)                    null,
    p_spec    varchar(10)                    null,
    p_image   varchar(150)                   null,
    p_quan    mediumint(3) default 20        null,
    p_useyn   char(2)      default 'y'       null,
    p_regdate date         default curdate() null
);

