SQL> select dept_code,max(staff_sal),min(staff_sal),sum(staff_sal),round(avg(staff_sal)) from staff_master group by dept_code;

 DEPT_CODE MAX(STAFF_SAL) MIN(STAFF_SAL) SUM(STAFF_SAL) ROUND(AVG(STAFF_SAL))   
---------- -------------- -------------- -------------- ---------------------   
        30          42000          17000          91000                 30333   
        20          62000          20000         146000                 36500   
        40          18000          18000          18000                 18000   
        10          32000          24000          56000                 28000   

SQL> select dept_code,count(mgr_code)as "totalnumber of manager" from staff_master group by dept_code;

 DEPT_CODE totalnumber of manager                                               
---------- ----------------------                                               
        30                      3                                               
        20                      4                                               
        40                      1                                               
        10                      2                                               

SQL> select dept_code,sum(staff_sal) from staff_master where mgr_code is null group by dept_code having sum(staff_sal)>20000;

no rows selected

SQL> spool off;
