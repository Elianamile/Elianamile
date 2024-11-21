CREATE TABLE Usuario (
Idusuario INT PRIMARY KEY IDENTITY(1,1),
Numero_documento NVARCHAR(100) NOT NULL,
Nombre NVARCHAR(100) NOT NULL
)
 
CREATE TABLE Tipo_traslado (
id_tipo_traslado INT PRIMARY KEY IDENTITY(1,1),
Descripcion NVARCHAR(100) NOT NULL
)
 
CREATE TABLE Aprobacion (
id_aprobacion INT PRIMARY KEY IDENTITY(1,1),
descripcion NVARCHAR(100) NOT NULL
)
CREATE TABLE Traslado (
id_traslado INT PRIMARY KEY IDENTITY(1,1),
fecha_traslado DATE,
Usuario_id INT,
Tipo_traslado_id INT,
FOREIGN KEY (Usuario_id) REFERENCES Usuario(Idusuario),
FOREIGN KEY (Tipo_traslado_id) REFERENCES Tipo_traslado(id_tipo_traslado)
)
CREATE TABLE Historico(
id_historico INT PRIMARY KEY IDENTITY(1,1),
fecha_respuesta DATE,
Aprobacion_id INT,
FOREIGN KEY (Aprobacion_id) REFERENCES Aprobacion(id_aprobacion)
)
CREATE TABLE Solicitud(
id_solicitud INT PRIMARY KEY IDENTITY(1,1),
Traslado_id INT,
Historico_id INT,
FOREIGN KEY (Traslado_id) REFERENCES Traslado(id_traslado ),
 FOREIGN KEY (Historico_id) REFERENCES Historico(id_historico)
)