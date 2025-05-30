#1
select * from Bicicletas;

#2
select nombre, rfc from Clientes;

#3
select id_empleado, rfc from Empleados;

#4
select num_serie, tipo from Bicicletas
where tipo = "Montaña";

#5
select * from Ventas
where fecha = "2025-05-01";

#6
SELECT Empleados.nombres, SUM(Ventas.monto_total) AS total_ventas
FROM Ventas
JOIN Empleados ON Ventas.id_empleado = Empleados.id_empleado
GROUP BY Empleados.nombres;

#7
SELECT Ventas.id_venta, Ventas.fecha, Clientes.nombre AS cliente, Empleados.nombres AS empleado
FROM Ventas
JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente
JOIN Empleados ON Ventas.id_empleado = Empleados.id_empleado;

#8 
SELECT 
  Ventas.id_venta, 
  Ventas.fecha, 
  Clientes.nombre AS cliente, 
  Empleados.nombres AS empleado
FROM Ventas
JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente
JOIN Empleados ON Ventas.id_empleado = Empleados.id_empleado;

#9
SELECT 
  metodo_pago, 
  SUM(monto_total) AS total_recaudado
FROM Ventas
GROUP BY metodo_pago;

#10
SELECT *
FROM Bicicletas
WHERE id_venta IS NULL;

#11
SELECT Clientes.nombre, Bicicletas.modelo, Bicicletas.precio_base
FROM Bicicletas
JOIN Ventas ON Bicicletas.id_venta = Ventas.id_venta
JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente
WHERE Bicicletas.precio_base = (
  SELECT MAX(precio_base) FROM Bicicletas WHERE id_venta IS NOT NULL
);

#12
SELECT 
  Accesorios.nombre, 
  COUNT(*) AS veces_vendido,
  SUM(Accesorios.precio) AS total_generado
FROM Accesorios
JOIN Ventas ON Accesorios.id_venta = Ventas.id_venta
GROUP BY Accesorios.nombre;



