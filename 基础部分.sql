--1.表结构
desc emp;

--2.使用别名

select ename empName from emp;

--3.格式化时间

select empno,ename,to_char(HIREDATE,'yyyy-MM-dd') from emp;

--4.distinct的用法
select distinct deptno from emp;


--5.nvl函数的使用(第一个参数为空那么显示第二个参数的值，如果第一个参数的值不为空，则显示第一个参数本来的值)
select　emp.*,nvl(comm,0) from emp emp;


--6.使用字符串连接符号
select ename||'的工资有'||sal from emp where empno = '7369';
--结果：SMITH的工资有800


--7.使用between、where、like、in、and、or not、order by
 select * from emp where sal between 800 and 1300 and ename like 'M%' and deptno in(10,30);--闭区间
 select * from emp order by deptno asc,empno desc;--按照deptno升序并且按照empno降序
 
 
 --8.多表连接查询（左外连接，右外连接，测试内连接，全连接，自然连接，嵌套查询）
 --8.1左外连接
 select d.*,e.* from dept d left join emp e on d.deptno = e.deptno;
 --8.2右外连接
 select d.*,e.* from emp e right join dept d on d.deptno = e.deptno;
--8.3内连接
 select d.*,e.* from emp e inner join dept d on d.deptno = e.deptno;
--8.4全连接
 select d.*,e.* from emp e full join dept d on d.deptno = e.deptno;
--8.5 自然查询
 select * 
 from emp e,dept d
 where e.deptno = d.deptno;
 --8.6嵌套查询
 
 
 --9.常用的系统函数
 
select ABS(-15) "绝对值" from dual;
SELECT CEIL(15.7) "Ceiling" FROM DUAL;
SELECT MOD(11,4) "Modulus" FROM DUAL; 
SELECT ROUND(15.193,1) "Round" FROM DUAL; --四舍五入，精确小数点，若为-1表示整数取舍

 
 
 
 
 
 
 
 
 
 
 
select e.* from emp e where e.deptno in (select deptno from dept);