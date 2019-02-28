

SQL> create table exstud(rno number constraint rno_pk primary key,name varchar2(20));

Table created.

SQL> desc exstud;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 RNO                                       NOT NULL NUMBER
 NAME                                               VARCHAR2(20)

SQL> select table_name,constarint_name from user_constarints where table_name='EXSTUD';
select table_name,constarint_name from user_constarints where table_name='EXSTUD'
                                       *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select table_name,constarint_name ,constraint_name,constraint_type from user_constarints where table_name='EXSTUD';
select table_name,constarint_name ,constraint_name,constraint_type from user_constarints where table_name='EXSTUD'
                                                                        *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select table_name,constarint_name from user_constarints where table_name='Exstud';
select table_name,constarint_name from user_constarints where table_name='Exstud'
                                       *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select table_name,constarint_name from user_constarints where table_name='exstud';
select table_name,constarint_name from user_constarints where table_name='exstud'
                                       *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> create table exstud123(rno number constraint rno_pk1 primary key,name varchar2(20) constraint name_nn123 not null, hire_date date not null,sal number constraint sal_chk13 check(sasl>0), email varchar2(20) unique);
create table exstud123(rno number constraint rno_pk1 primary key,name varchar2(20) constraint name_nn123 not null, hire_date date not null,sal number constraint sal_chk13 check(sasl>0), email varchar2(20) unique)
                                                                                                                                                                                        *
ERROR at line 1:
ORA-02438: Column check constraint cannot reference other columns


SQL> create table exstud123(rno number constraint rno_pk1 primary key,name varchar2(20) constraint name_nn123 not null, hire_date date not null,sal number constraint sal_chk13 check(sal>0), email varchar2(20) unique);

Table created.

SQL> select table_name,constraint_name,constraint_type from user_constraint where table_name='EXSTUD123';
select table_name,constraint_name,constraint_type from user_constraint where table_name='EXSTUD123'
                                                       *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select table_name,constraint_name,constraint_type from user_constraints where table_name='EXSTUD123';

TABLE_NAME                     CONSTRAINT_NAME                C
------------------------------ ------------------------------ -
EXSTUD123                      NAME_NN123                     C
EXSTUD123                      SYS_C00578322                  C
EXSTUD123                      SAL_CHK13                      C
EXSTUD123                      RNO_PK1                        P
EXSTUD123                      SYS_C00578325                  U

SQL> create table dept123(dno number primary key,name vaechar2(20),loc varchar2(20)
  2
SQL> create table dept123(dno number primary key,name varchar2(20),loc varchar2(20));

Table created.

SQL> drop exstud123;
drop exstud123
     *
ERROR at line 1:
ORA-00950: invalid DROP option


SQL> select table_name,constraint_name,constraint_type from user_constraints where table_name='EXSTUD123';

TABLE_NAME                     CONSTRAINT_NAME                C
------------------------------ ------------------------------ -
EXSTUD123                      NAME_NN123                     C
EXSTUD123                      SYS_C00578322                  C
EXSTUD123                      SAL_CHK13                      C
EXSTUD123                      RNO_PK1                        P
EXSTUD123                      SYS_C00578325                  U

SQL> drop exstud123
  2  drop exstud123;
drop exstud123
     *
ERROR at line 1:
ORA-00950: invalid DROP option


SQL> drop exstud123;
drop exstud123
     *
ERROR at line 1:
ORA-00950: invalid DROP option


SQL> drop table exstud123;

Table dropped.

SQL> select table_name,constraint_name,constraint_type from user_constraints where table_name='EXSTUD123';

no rows selected

SQL> create table exstud123(rno number constraint rno_pk1 primary key,name varchar2(20) constraint name_nn123 not null, hire_date date not null,sal number constraint sal_chk13 check(sal>0), email varchar2(20) unique,deptno number constraint deptno_FK123 references dept123(dno));

Table created.

SQL> select * from dept123;

no rows selected

SQL> insert into exstud123 values(102,'vimal',sysdate,13000,'abc@gmail.com',20);
insert into exstud123 values(102,'vimal',sysdate,13000,'abc@gmail.com',20)
*
ERROR at line 1:
ORA-02291: integrity constraint (TRG428.DEPTNO_FK123) violated - parent key not
found


SQL> desc exstud123;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 RNO                                       NOT NULL NUMBER
 NAME                                      NOT NULL VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 SAL                                                NUMBER
 EMAIL                                              VARCHAR2(20)
 DEPTNO                                             NUMBER

SQL> insert into exstud123 values(102,'vimal',sysdate,13000,'abc@gmail.com',20);
insert into exstud123 values(102,'vimal',sysdate,13000,'abc@gmail.com',20)
*
ERROR at line 1:
ORA-02291: integrity constraint (TRG428.DEPTNO_FK123) violated - parent key not
found


SQL> insert into dept123 values(10,'Arun','Chennai');

1 row created.

SQL> insert into exstud123 values(102,'vimal',sysdate,13000,'abc@gmail.com',20);
insert into exstud123 values(102,'vimal',sysdate,13000,'abc@gmail.com',20)
*
ERROR at line 1:
ORA-02291: integrity constraint (TRG428.DEPTNO_FK123) violated - parent key not
found


SQL> select * from dept123;

       DNO NAME                 LOC
---------- -------------------- --------------------
        10 Arun                 Chennai

SQL> insert into exstud123 values(102,'Kumar',sysdate,13000,'abc@gmail.com',20);
insert into exstud123 values(102,'Kumar',sysdate,13000,'abc@gmail.com',20)
*
ERROR at line 1:
ORA-02291: integrity constraint (TRG428.DEPTNO_FK123) violated - parent key not
found


SQL> insert into exstud123 values(102,'Kumar',sysdate,13000,'abc@gmail.com',10);

1 row created.

SQL> select * from exstud123;

       RNO NAME                 HIRE_DATE        SAL EMAIL
---------- -------------------- --------- ---------- --------------------
    DEPTNO
----------
       102 Kumar                30-JAN-19      13000 abc@gmail.com
        10


SQL> insert into dept123 values(20,'Raj,'Coimbatore');
ERROR:
ORA-01756: quoted string not properly terminated


SQL> insert into dept123 values(20,'Raj','Coimbatore');

1 row created.

SQL> insert into exstud123 values(103,'Ramu',sysdate,35000,'xyz@gmail.com',20);

1 row created.

SQL> select * from exstud123;

       RNO NAME                 HIRE_DATE        SAL EMAIL
---------- -------------------- --------- ---------- --------------------
    DEPTNO
----------
       102 Kumar                30-JAN-19      13000 abc@gmail.com
        10

       103 Ramu                 30-JAN-19      35000 xyz@gmail.com
        20


SQL> delete from dept123 where deptno=10;
delete from dept123 where deptno=10
                          *
ERROR at line 1:
ORA-00904: "DEPTNO": invalid identifier


SQL> delete from dept123 where dno=10;
delete from dept123 where dno=10
*
ERROR at line 1:
ORA-02292: integrity constraint (TRG428.DEPTNO_FK123) violated - child record
found


SQL> commit;

Commit complete.

SQL> drop table exstud123;

Table dropped.

SQL> commit;

Commit complete.

SQL> create table exstud123(rno number constraint rno_pk1 primary key,name varchar2(20) constraint name_nn123 not null, hire_date date not null,sal number constraint sal_chk13 check(sal>0), email varchar2(20) unique,deptno number constraint deptno_FK123 references dept123(dno) on delete cascade);

Table created.

SQL> delete from dept123 where dno=10;

1 row deleted.

SQL> select * from dept123;

       DNO NAME                 LOC
---------- -------------------- --------------------
        20 Raj                  Coimbatore

SQL> select * from exstud123;

no rows selected

SQL> spool off;