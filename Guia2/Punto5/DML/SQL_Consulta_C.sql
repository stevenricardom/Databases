SELECT * FROM empleado;
SELECT * FROM empresa;
SELECT * FROM trabaja;

SELECT e.nombre AS empleado, e.ciudad AS ciudad_empleado, em.nombre AS empresa, em.ciudad AS ciudad_empresa
FROM empleado e
JOIN trabaja t ON e.cedula = t.cedula
JOIN empresa em ON t.nit_empresa = em.nit_empresa
WHERE e.ciudad = em.ciudad;
