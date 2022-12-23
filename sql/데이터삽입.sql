-- 회원데이터 삽입 
insert into shop_member values(SEQ_MEMBER.nextval,'lee','1234');
insert into shop_member values(SEQ_MEMBER.nextval,'kim','1234');
insert into shop_member values(SEQ_MEMBER.nextval,'park','1234');
commit;
select * from shop_member;

-- 제품데이터 삽입
insert into shop_product values
(SEQ_PRODUCT.nextval,'가전','컴퓨터','참 좋은 컴퓨터',1500000,null,sysdate);
insert into shop_product values
(SEQ_PRODUCT.nextval,'가전','삼성TV','참 좋은 TV',50000,null,sysdate);
insert into shop_product values
(SEQ_PRODUCT.nextval,'도서','자바웹을다루는기술','JSP부터SPRING까지',40000,null,sysdate);
commit; 

-- 카트번호, 회원번호, 제품번호, 수량 
insert into shop_cart values
(seq_member.nextval,1,1,1);
insert into shop_cart values
(seq_member.nextval,1,3,22);

insert into shop_cart values
(seq_member.nextval,2,2,1);
commit;

select * from shop_product;
select * from shop_cart;

-- 카트번호, 구매회원아이디, 제품명, 가격, 구매수량
select 
    C.cartId, M.mid, p.pName, p.price, c.amount
from shop_cart C
    inner join shop_product P on P.pid = C.pId 
    inner join shop_member M on C.mNumber = M.mNumber;


