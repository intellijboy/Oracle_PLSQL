--1.��ṹ
desc emp;

--2.ʹ�ñ���

select ename empName from emp;

--3.��ʽ��ʱ��

select empno,ename,to_char(HIREDATE,'yyyy-MM-dd') from emp;

--4.distinct���÷�
select distinct deptno from emp;


--5.nvl������ʹ��(��һ������Ϊ����ô��ʾ�ڶ���������ֵ�������һ��������ֵ��Ϊ�գ�����ʾ��һ������������ֵ)
select��emp.*,nvl(comm,0) from emp emp;


--6.ʹ���ַ������ӷ���
select ename||'�Ĺ�����'||sal from emp where empno = '7369';
--�����SMITH�Ĺ�����800


--7.ʹ��between��where��like��in��and��or not��order by
 select * from emp where sal between 800 and 1300 and ename like 'M%' and deptno in(10,30);--������
 select * from emp order by deptno asc,empno desc;--����deptno�����Ұ���empno����
 
 
 --8.������Ӳ�ѯ���������ӣ��������ӣ����������ӣ�ȫ���ӣ���Ȼ���ӣ�Ƕ�ײ�ѯ��
 --8.1��������
 select d.*,e.* from dept d left join emp e on d.deptno = e.deptno;
 --8.2��������
 select d.*,e.* from emp e right join dept d on d.deptno = e.deptno;
--8.3������
 select d.*,e.* from emp e inner join dept d on d.deptno = e.deptno;
--8.4ȫ����
 select d.*,e.* from emp e full join dept d on d.deptno = e.deptno;
--8.5 ��Ȼ��ѯ
 select * 
 from emp e,dept d
 where e.deptno = d.deptno;
 --8.6Ƕ�ײ�ѯ
 
 
 --9.���õ�ϵͳ����
 
select ABS(-15) "����ֵ" from dual;
SELECT CEIL(15.7) "Ceiling" FROM DUAL;
SELECT MOD(11,4) "Modulus" FROM DUAL; 
SELECT ROUND(15.193,1) "Round" FROM DUAL; --�������룬��ȷС���㣬��Ϊ-1��ʾ����ȡ��

 
 
 
 
 
 
 
 
 
 
 
select e.* from emp e where e.deptno in (select deptno from dept);