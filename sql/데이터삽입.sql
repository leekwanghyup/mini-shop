-- ȸ�������� ���� 
insert into shop_member values(SEQ_MEMBER.nextval,'lee','1234');
insert into shop_member values(SEQ_MEMBER.nextval,'kim','1234');
insert into shop_member values(SEQ_MEMBER.nextval,'park','1234');
commit;
select * from shop_member;

-- ��ǰ������ ����
insert into shop_product values
(SEQ_PRODUCT.nextval,'����','��ǻ��','�� ���� ��ǻ��',1500000,null,sysdate);
insert into shop_product values
(SEQ_PRODUCT.nextval,'����','�ＺTV','�� ���� TV',50000,null,sysdate);
insert into shop_product values
(SEQ_PRODUCT.nextval,'����','�ڹ������ٷ�±��','JSP����SPRING����',40000,null,sysdate);
commit; 

-- īƮ��ȣ, ȸ����ȣ, ��ǰ��ȣ, ���� 
insert into shop_cart values
(seq_member.nextval,1,1,1);
insert into shop_cart values
(seq_member.nextval,1,3,22);

insert into shop_cart values
(seq_member.nextval,2,2,1);
commit;

select * from shop_product;
select * from shop_cart;

-- īƮ��ȣ, ����ȸ�����̵�, ��ǰ��, ����, ���ż���
select 
    C.cartId, M.mid, p.pName, p.price, c.amount
from shop_cart C
    inner join shop_product P on P.pid = C.pId 
    inner join shop_member M on C.mNumber = M.mNumber;


