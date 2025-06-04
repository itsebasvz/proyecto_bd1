create database bikerfes;
use bikerfes;

create table Empleados (
  id_empleado INT auto_increment primary key,
  nombres VARCHAR(100),
  ap_paterno VARCHAR(100),
  ap_materno VARCHAR(100),
  rfc VARCHAR(15)
);

create table Clientes (
  id_cliente INT auto_increment primary key,
  nombre VARCHAR(100),
  rfc VARCHAR(15)
);

create table Ventas (
  id_venta INT auto_increment primary key,
  fecha DATE,
  monto_total DECIMAL(10,2),
  metodo_pago VARCHAR(100),
  id_empleado INT,
  id_cliente INT,
  foreign key (id_cliente) references Clientes(id_cliente)
  foreign key (id_empleado) references Empleados(id_empleado)
);

create table Telefonos (
  id_telefono INT auto_increment primary key,
  numero VARCHAR(20),
  tipo VARCHAR(20),
  id_empleado INT,
  foreign key (id_empleado) references Empleados(id_empleado)
);

create table Bicicletas (
  num_serie VARCHAR(50) primary key,
  color VARCHAR(100),
  modelo VARCHAR(100),
  precio_base DECIMAL(10,2),
  tipo VARCHAR(100),
  rodada VARCHAR(100),
  id_venta INT,
  foreign key (id_venta) references Ventas(id_venta)
);

create table Accesorios (
  id_accesorios INT auto_increment primary key,
  nombre VARCHAR(100),
  tipo_articulo VARCHAR(100),
  precio DECIMAL(10,2),
  id_venta INT,
  foreign key (id_venta) references Ventas(id_venta)
);



