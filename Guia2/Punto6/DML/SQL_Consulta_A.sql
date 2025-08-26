SELECT * FROM empleado;
SELECT * FROM empresa;
SELECT * FROM trabaja;

SELECT 
    e.nombre AS empleado,
    j.nombre AS jefe,
    e.calle AS calle_empleado,
    e.ciudad AS ciudad_empleado,
    j.calle AS calle_jefe,
    j.ciudad AS ciudad_jefe
FROM empleado e
JOIN empleado j
  ON e.cedula_jefe = j.cedula
WHERE e.calle = j.calle
  AND e.ciudad = j.ciudad;
