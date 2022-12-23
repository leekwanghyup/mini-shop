-- 
drop table shop_product; 
create table shop_product(
    pId int primary key, 
    pCategory varchar2(50) not null, 
    pName varchar2(100) not null, 
    pDesc varchar2(2000) not null, 
    pRegDate date default sysdate
);
drop sequence SEQ_PRODUCT;
create sequence SEQ_PRODUCT;

drop table shop_member;
create table shop_member(
    mNumber int primary key, 
    mId varchar2(50) not null, 
    mPwd varchar2(200) not null
);
drop sequence SEQ_MEMBER;
create sequence SEQ_MEMBER;

create table shop_cart(
    cartId int primary key, 
    mNumber int not null, 
    pId int not null, 
    foreign key(mNumber) REFERENCES shop_member(mNumber), 
    foreign key(pId) REFERENCES shop_product(pId)
);
drop sequence SEQ_CART;
create sequence SEQ_CART;





