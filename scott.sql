CREATE TABLE DEPT
	(DEPTNO TINYINT(2) ,
	DNAME VARCHAR(14) ,
	LOC VARCHAR(13) ) ;

ALTER TABLE DEPT 
    ADD CONSTRAINT PK_DEPT PRIMARY KEY(DEPTNO);
	
CREATE TABLE EMP
    (EMPNO SMALLINT(4),
	ENAME VARCHAR(10),
	JOB VARCHAR(9),
	MGR SMALLINT(4),
	HIREDATE DATE,
	SAL FLOAT(7,2),
	COMM FLOAT(7,2),
	DEPTNO TINYINT(2));
	
ALTER TABLE EMP 
	ADD  CONSTRAINT PK_EMP PRIMARY KEY(EMPNO),
	ADD  CONSTRAINT FK_DEPTNO FOREIGN KEY(deptno) 
			REFERENCES DEPT(DEPTNO);
	
INSERT INTO DEPT VALUES
	(10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES
	(30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES
	(40,'OPERATIONS','BOSTON');
INSERT INTO EMP VALUES
(7369,'SMITH','CLERK',7902, CAST('1980-12-17' AS DATE),800,NULL,20);
INSERT INTO EMP VALUES
(7499,'ALLEN','SALESMAN',7698,CAST('1981-2-20' AS DATE),1600,300,30);
INSERT INTO EMP VALUES
(7521,'WARD','SALESMAN',7698,CAST('1981-2-22' AS DATE),1250,500,30);
INSERT INTO EMP VALUES
(7566,'JONES','MANAGER',7839,CAST('1981-4-2' AS DATE),2975,NULL,20);
INSERT INTO EMP VALUES
(7654,'MARTIN','SALESMAN',7698,CAST('1981-9-28' AS DATE),1250,1400,30);
INSERT INTO EMP VALUES
(7698,'BLAKE','MANAGER',7839,CAST('1981-5-1' AS DATE),2850,NULL,30);
INSERT INTO EMP VALUES
(7782,'CLARK','MANAGER',7839,CAST('1981-6-9' AS DATE),2450,NULL,10);
INSERT INTO EMP VALUES
(7788,'SCOTT','ANALYST',7566,CAST('1987-7-13' AS DATE),3000,NULL,20);
INSERT INTO EMP VALUES
(7839,'KING','PRESIDENT',NULL,CAST('1981-11-17' AS DATE),5000,NULL,10);
INSERT INTO EMP VALUES
(7844,'TURNER','SALESMAN',7698,CAST('1981-9-8' AS DATE),1500,0,30);
INSERT INTO EMP VALUES
(7876,'ADAMS','CLERK',7788,CAST('1987-7-13' AS DATE),1100,NULL,20);
INSERT INTO EMP VALUES
(7900,'JAMES','CLERK',7698,CAST('1981-12-3' AS DATE),950,NULL,30);
INSERT INTO EMP VALUES
(7902,'FORD','ANALYST',7566,CAST('1981-12-3' AS DATE),3000,NULL,20);
INSERT INTO EMP VALUES
(7934,'MILLER','CLERK',7782,CAST('1982-1-23' AS DATE),1300,NULL,10);

CREATE TABLE SALGRADE
      ( GRADE TINYINT(1),
	LOSAL SMALLINT(4),
	HISAL SMALLINT(4));
INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);

COMMIT;