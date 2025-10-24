-- CLIENTES
insert into cliente (id, nombre, apellidos, email, dni, telefono) values
(1,'Juan','Pérez','juan@example.com','12345678A','612345678'),
(2,'María','García','maria@example.com','87654321B','623456789'),
(3,'Carlos','López','carlos@example.com','11223344C','634567890');

-- VEHICULOS
insert into vehiculo (id, matricula, marca, modelo, tipo, precio_dia, disponible) values
(1,'1234ABC','BMW','Serie 3','Sedán',45, true),
(2,'5678DEF','Mercedes','Clase A','Compacto',40, true),
(3,'9012GHI','Audi','A4','Sedán',50, false),
(4,'3456JKL','Volkswagen','Golf','Compacto',35, true);

-- EXTRAS
insert into extra (id, nombre, precio) values
(1,'GPS',5),
(2,'Silla para niños',8),
(3,'Seguro premium',15),
(4,'Conductor adicional',10);

-- ALQUILERES
insert into alquiler (id, cliente_id, vehiculo_id, fecha_inicio, fecha_fin, precio_total, estado) values
(1,1,1, DATE '2025-10-20', DATE '2025-10-25', 225, 'Activo'),
(2,2,2, DATE '2025-10-22', DATE '2025-10-27', 250, 'Activo'),
(3,3,4, DATE '2025-10-15', DATE '2025-10-18', 120, 'Completado');

-- relación alquiler-extra (ejemplo)
insert into alquiler_extra (alquiler_id, extra_id) values
(1,1),(1,3),
(2,2),
(3,4);

-- ============================================
-- AJUSTAR LOS CONTADORES DE AUTOINCREMENTO
-- ============================================

-- Cliente: ya hemos insertado id 1,2,3 → que el próximo sea 4
ALTER TABLE cliente ALTER COLUMN id RESTART WITH 4;

-- Vehículo: ya hemos insertado id 1,2,3,4 → que el próximo sea 5
ALTER TABLE vehiculo ALTER COLUMN id RESTART WITH 5;

-- Extra: ya hemos insertado id 1,2,3,4 → que el próximo sea 5
ALTER TABLE extra ALTER COLUMN id RESTART WITH 5;

-- Alquiler: ya hemos insertado id 1,2,3 → que el próximo sea 4
ALTER TABLE alquiler ALTER COLUMN id RESTART WITH 4;
