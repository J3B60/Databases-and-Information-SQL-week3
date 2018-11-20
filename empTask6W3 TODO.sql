--SELECT e.empno, d.dname FROM emp e JOIN dept d ON e.deptno = d.deptno WHERE e.empno = (SELECT empno FROM emp GROUP BY deptno ); --Bad

--SELECT deptno, MIN(sal) FROM emp GROUP BY deptno; --Good

--SELECT e.empno, d.dname, MIN(e.sal) FROM emp e JOIN dept d ON e.deptno = d.deptno GROUP BY d.deptno; --Close