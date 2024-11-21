--trabajos de inner join---
SELECT 
U.Nombre AS NombreUsuario,
T.fecha_traslado,
TT.Descripcion AS TipoTraslado
FROM 
Traslado T
INNER JOIN 
Usuario U ON T.Usuario_id = U.Idusuario
INNER JOIN 
Tipo_traslado TT ON T.Tipo_traslado_id = TT.id_tipo_traslado;

---2 inner fecha de traslado y fedcha de respuesta--
SELECT 
T.fecha_traslado,
H.fecha_respuesta,
A.descripcion AS EstadoAprobacion
FROM 
Solicitud S
INNER JOIN 
Traslado T ON S.Traslado_id = T.id_traslado
INNER JOIN 
Historico H ON S.Historico_id = H.id_historico

--Consulta para listar los tipos de traslados realizados por cada usuario--
SELECT 
U.Nombre AS NombreUsuario,
TT.Descripcion AS TipoTraslado,
T.fecha_traslado
FROM 
Usuario U
INNER JOIN 
Traslado T ON U.Idusuario = T.Usuario_id
INNER JOIN 
Tipo_traslado TT ON T.Tipo_traslado_id = TT.id_tipo_traslado;

---Consultas conUNION--
--1Unir resultados de aprobaciones y denegaciones con información del traslado y el usuario--
SELECT 
U.Nombre AS NombreUsuario,
T.fecha_traslado,
'APROBADO' AS Estado
FROM 
Usuario U
INNER JOIN 
Traslado T ON U.Idusuario = T.Usuario_id
INNER JOIN 
Solicitud S ON T.id_traslado = S.Traslado_id
INNER JOIN 
Historico H ON S.Historico_id = H.id_historico
INNER JOIN 
Aprobacion A ON H.Aprobacion_id = A.id_aprobacion
WHERE 
A.descripcion = 'APROBADO'
UNION
SELECT 
U.Nombre AS NombreUsuario,
T.fecha_traslado,
'NEGADO' AS Estado
FROM Usuario U
INNER JOIN 
traslado T ON U.Idusuario = T.Usuario_id
INNER JOIN 
Solicitud S ON T.id_traslado = S.Traslado_id
INNER JOIN 
Historico H ON S.Historico_id = H.id_historico
INNER JOIN 
Aprobacion A ON H.Aprobacion_id = A.id_aprobacion
WHERE 
A.descripcion = 'NEGADO';

2---Unir traslados de tipo "ENTRADA" y "SALIDA" con información del usuario:--
SELECT U.Nombre AS NombreUsuario,
TT.Descripcion AS TipoTraslado,
T.fecha_traslado
FROM 
Usuario U
INNER JOIN 
Traslado T ON U.Idusuario = T.Usuario_id
INNER JOIN 
Tipo_traslado TT ON T.Tipo_traslado_id = TT.id_tipo_traslado
WHERE 
TT.Descripcion = 'ENTRADA'
UNION
SELECT 
U.Nombre AS NombreUsuario,
TT.Descripcion AS TipoTraslado,
T.fecha_traslado
FROM 
Usuario U
INNER JOIN 
Traslado T ON U.Idusuario = T.Usuario_id
INNER JOIN 
Tipo_traslado TT ON T.Tipo_traslado_id = TT.id_tipo_traslado
WHERE 
TT.Descripcion = 'SALIDA';
