select * from tab;
select * from order_table;
select * from product;
select * from product_detail;
select * from CATEGORY;
select * from member;
select * from member;
select * from order_table;
select * from order_detail;
select * from grade;

select * from member;
create Sequence product_seq;
create sequence product_detail_seq;


insert into PRODUCT values ( product_seq.nextval , 'top_knit' , 'wool round knit warmsand' ,0, 72000,
							100 , sysdate , 1 , 'top_knit_s' , product_seq.nextval, 0 )

insert into PRODUCT_DETAIL values (product_detail_seq.nextval , 'knit1' , null , null , 'knit1_detail');



insert into CATEGORY values ('top_tshirts' , 'top' , 't_shirts' );
insert into CATEGORY values ('top_shirts' , 'top' , 'shirts' );
insert into CATEGORY values ('top_knit' , 'top' , 'knit' );

insert into CATEGORY values ('bottom_jean' , 'bottom' , 'jean');
insert into CATEGORY values ('bottom_pants' , 'bottom' , 'pants');
insert into CATEGORY values ('bottom_shorts' , 'bottom' , 'shorts');

insert into CATEGORY values ('outer_coat' , 'outer' , 'coat');
insert into CATEGORY values ('outer_jacket' , 'outer' , 'jacket');

insert into CATEGORY values ('acc_shoes' , 'acc' , 'shoes');
insert into CATEGORY values ('acc_socks' , 'acc' , 'socks');
insert into CATEGORY values ('acc_jewelry' , 'acc' , 'jewelry');


select * from SIZE_TABLE;

insert into SIZE_TABLE values ( 'top_knit_s' , 's' , 'knit치수_s');
insert into SIZE_TABLE values ( 'top_knit_m' , 'm' , 'knit치수_m');
insert into SIZE_TABLE values ( 'top_knit_l' , 'l' , 'knit치수_l');