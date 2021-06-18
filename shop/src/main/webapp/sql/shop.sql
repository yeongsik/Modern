select * from tab;
select * from order_table;
select * from product;
select * from product_detail;
select * from CATEGORY;
select * from member;
select * from member;
select * from heart;
select * from order_table;
select * from order_detail;
select * from grade;
select * from stock; 
select * from review;
select * from coupon;
select * from ADDRESS;
select * from heart;
select * from cart;


select * from order_detail b
		left outer join cart c 
		on b.order_detail_pk = c.order_detail_pk where c.member_id = 'cptest13'


select * from product where member_id ='cptest18'
select * from heart where member_id='hama';
select * from heart where member_id='noru';

delete from heart where member_id='noru';

delete from heart;
select * from address;
select * from seq;
select * from notice;

-- 쿠폰관련 -- 
SELECT * FROM nls_session_parameters WHERE PARAMETER LIKE '%DATE%' OR PARAMETER LIKE '%LANG%'; 

insert into coupon values ( 9900004, '사장님 몰래 드리는 쿠폰2', 15000, sysdate, sysdate + (interval '2'day), 'cptest18');

-- 쿠폰수 조회
select count(decode(member_id,'cptest18', 1)) count from coupon
select count(*) from coupon where member_id = 'cptest18'

-- id 기준 쿠폰리스트 조회
select * from coupon where member_id = 'cptest18'

-- id 별 쿠폰수 조화
select member_id, count(*) 개수 from coupon group by member_id
----

create table stock (
				stock_id varchar2(100) primary key,
				stock_s number,
				stock_m number,
				stock_l number,
				stock_260 number,
				stock_270 number,
				stock_280 number,
				stock_290 number,
				stock_free number);
select * from size_table;

select distinct product_name , rownum rnum from product where category_id = 'top_knit';

select * from (select rownum rnum , * from 
(select product_name , 
		product_price , 
		product_discount from product group by product_name having category_id = 'top_knit')) 
		where rnum >= 1 and rnum <=9;
alter table product rename column stock to stock_id;
alter table product modify stock_id varchar2(100);

insert into ADDRESS values(add_pk_seq.nextval, 52231, '서울시 은평구 진관동', '동수빌딩 303호', 'dora2', 0 );

select distinct product_name , 
				product_price , 
				product_discount ,
				product_date from product where category_id = 'top_knit' order by product_date desc;

select * from notice;

insert into notice values('30', '공지사항 테스트10', '관리자', '공지테스트입니다10', sysdate, 0);
select * from notice where rownum <= 5  order by notice_date desc;
select * from 
		 (select rownum rnum,notice_id, notice_subject,notice_writer, notice_content,
		 notice_date, notice_view from (select * from notice order by notice_date desc)) 
	   		 where rnum <= 5

select * from seq;

create Sequence product_seq;
create sequence product_detail_seq;

select * from product left outer join product_detail 
    	on product.product_detail = product_detail.product_detail where product_id = 62
-- product_detail_sample < detail 이미지 샘플 ADDRESS
-- color (1~12) : black , white , blue , green , yellow , orange , grey, beige , pink , navy, khaki , brown
insert into PRODUCT values ( product_seq.nextval , 'top_tshirts' , 'heavy long sleeve black' ,0, 55000,
							'heavy long sleeve black_stock' , sysdate , 1 , 'top_tshirts' , product_seq.nextval, 0 , null);
insert into PRODUCT_DETAIL values (product_detail_seq.nextval , 'tshirts6' , null , null , 'product_detail_sample');


							
insert into stock values ( 'round knit cream_stock' , 100 , 100 , 100 , null , null , null , null , null );


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

select distinct product_name , product_price from product order by product_date desc;

delete from product;
delete from product_detail;

select * from (select row_number() over(partition by product.product_name ) as rnum, product.* from product )
p where rnum >=1 and rnum <= 9;
select * from product where category_id = 'top_knit' order by product_date desc;
select * from 
		 (select rownum rnum, p.* from
	  	 (select * from product left outer join product_detail on product.product_detail  = product_detail.product_detail where category_id = 'top_knit' order by product_date desc) p)
	  	 where rnum >=1 and rnum <= 2;
	  	 
delete from size_table;

insert into size_table values ('top_tshirts' , 's,m,l' , 'top_tshirts_size' );
insert into size_table values ('top_shirts' , 's,m,l' ,'top_shirts_size');
insert into size_table values ('top_knit' , 's,m,l' , 'top_knit_size');

insert into size_table values ('bottom_jean' ,'s,m,l' , 'bottom_jean_size' );
insert into size_table values ('bottom_pants' ,'s,m,l' , 'bottom_pants_size' );
insert into size_table values ('bottom_shorts' ,'s,m,l' , 'bottom_shorts_size' );

insert into size_table values ('outer_coat' , 's,m,l' , 'outer_coat_size');
insert into size_table values ('outer_jacket' , 's,m,l' , 'outer_jacket_size');

insert into size_table values ('acc_shoes' , '260,270,280,290' , 'acc_shoes_size');
insert into size_table values ('acc_socks' , 's,m,l' , 'acc_sokcs_size');
insert into size_table values ('acc_jewelry' , 's,m,l' , 'acc_jewelry_size');
update product set product_name = 'cashmere round knit deep blue' where product_id = 35;
update product set color = 10 where product_id = 35;
alter table product add (page number);
alter table member rename column nickname to name;

alter table ORDER_DETAIL add (choose_size varchar2(30));

create sequence order_detail_seq;

select * from order_detail;
delete from order_detail;
select * from order_table;

alter table order_detail add detail_state number;
alter table ORDER_TABLE add receiver_tel2 number; 
alter table order_table add order_memo varchar2(200);

insert into coupon values (123456, '테스트용 쿠폰3' , 40 , sysdate , sysdate+30 , 'dudtlrzz1' );