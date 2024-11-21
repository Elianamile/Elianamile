
 -- Insertar datos en Usuario
INSERT INTO Usuario (Numero_documento, Nombre)
VALUES
('7895072', 'KENDRY'),
('7949673', 'CARLOS'),
('7933704', 'NELSON'),
('8052765', 'ELIO'),
('1246235268', 'SAMUEL'),
('1088966266', 'ANTON'),
('8042506', 'MARLYN'),
('52846248', 'PILAR'),
('7988008', 'JORGE'),
('7988456', 'TATIANA'),
('41627438', 'JOSE'),
('41627438', 'CARLOS'),
('7991877', 'PABLO');

Select * from Usuario

-- Insertar datos en Tipo_traslado
INSERT INTO Tipo_traslado (Descripcion)
VALUES
('ENTRADA'),
('SALIDA');

Select * from Tipo_traslado

INSERT INTO Aprobacion (descripcion)
VALUES
('NEGADO'),
('APROBADO');

Select * from Aprobacion

-- Insertar datos en Traslado
INSERT INTO Traslado (Usuario_id, Tipo_traslado_id, fecha_traslado)
VALUES
(1, 2, '2024-09-01'),
(1, 1, '2024-04-02'),
(2, 2, '2024-08-01'),
(2, 2, '2023-03-01'),
(8, 2, '2024-06-01'),
(8, 1, '2024-10-21'),
(7, 2, '2024-04-01'),
(7, 2, '2024-02-11'),
(5, 1, '2024-02-01'),
(5, 1, '2024-02-01'),
(6, 1, '2024-12-01'),
(6, 1, '2024-06-03'),
(4, 2, '2024-10-01'),
(4, 2, '2023-09-20'),
(4, 1, '2023-07-21'),
(3, 1, '2024-08-01'),
(3, 2, '2024-09-15'),
(3, 2, '2022-08-15'),
(9, 1, '2024-06-01');

Select * from Traslado

-- Insertar datos en Historico
INSERT INTO Historico (fecha_respuesta, Aprobacion_id)
VALUES
('2024-09-15', 1),
('2024-08-12', 2),
('2024-06-21', 1),
('2024-04-18', 2),
('2024-02-11', 1),
('2024-12-03', 2),
('2024-10-05', 1),
('2024-08-08', 2),
('2024-08-08', 2),
('2024-08-08', 2),
('2024-08-08', 2),
('2024-06-22', 1);

Select * from Historico

-- Insertar datos en Solicitud
INSERT INTO Solicitud (Traslado_id, Historico_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

Select * from Solicitud