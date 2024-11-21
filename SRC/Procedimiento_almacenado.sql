CREATE PROCEDURE obtener_Traslado
AS
BEGIN
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
end;
EXEC
tiene menú contextual