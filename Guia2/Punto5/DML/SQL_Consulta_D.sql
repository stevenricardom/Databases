SELECT * FROM empleado;
SELECT * FROM empresa;
SELECT * FROM trabaja;

SELECT e.nombre, e.calle, e.ciudad
FROM empleado e
JOIN trabaja t ON e.cedula = t.cedula
JOIN empresa em ON t.nit_empresa = em.nit_empresa
WHERE em.nombre = 'Banco de la ciudad';
