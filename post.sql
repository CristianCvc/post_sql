DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comentarios;

CREATE TABLE posts (
   id SERIAL,
   nombre_de_usuario VARCHAR(10),
   fecha_de_creación DATE,
   contenido VARCHAR,
   descripcion VARCHAR,
   PRIMARY KEY (id)
);

CREATE TABLE  comentarios (
   id INT,
   fecha DATE,
   hora_de_creacion TIME,
   contenido VARCHAR,
   FOREIGN KEY (id) REFERENCES
   posts(id)
);


INSERT INTO posts (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion)
VALUES (01, 'Pamela', '31-08-2021', 'Acabo de ver una noticia hace poco que dice VTR perdió 100.000 clientes por su pésimo servicio, jajaja se lo merecen >:(', 'reclamo por mal servicio de internet');

INSERT INTO posts (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion)
VALUES (02, 'Pamela', '01-09-2021', 'Buenas cabros, espero que estén bien. Por favor quería pedir un poco de ayuda con un tema, solo pido una opinión o un consejo. Lo que pasa es que mi mamá...', 'Consejos de la comunidad');

INSERT INTO posts (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion)
VALUES (03, 'Carlos', '01-09-2021', 'Lionel Messi había perdido la final de América del 2007, 2015 y 2016 y el título del mundo del 2014. Por eso ganar esta Copa era pagar una deuda.', 'Comentarios de Futbol y Deportes');

ALTER TABLE posts ADD titulo VARCHAR(20);

UPDATE posts SET titulo = 'Internet VTR' WHERE id = 01;
UPDATE posts SET titulo = 'Un consejo por favor' WHERE id = 02;
UPDATE posts SET titulo = 'Cuantas copas tenes' WHERE id = 03;

INSERT INTO posts (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion, titulo)
VALUES (04, 'Pedro', '01-09-2021', 'El prestigioso Instituto de Estudios Inconclusos ha concluido que 6 de cada 10 personas...', 'Articulo sobre estudio cientifico del prestigioso Instituto de Estudios Inconclusos', 'Estudio Cientifico');

INSERT INTO posts (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion, titulo)
VALUES (05, 'Pedro', '01-09-2021', 'Ludoismo es una empresa Chilena que diseña, desarrolla y produce juegos de mesa por encargo.  Muchos de los cuales pueden ser usados de forma didactica para enseñar algun tema a niños como algo más complicado como politicas de una empresa, un ejemplo de juego es Cytosis el cual...', 'Ludoismo emprendimiento exitoso y original creado en Chile', 'Ludoismo Boardgames');

DELETE FROM posts WHERE nombre_de_usuario = 'Carlos';

INSERT INTO posts (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion, titulo)
VALUES (03, 'Carlos', '01-09-2021', 'Lionel Messi ha ganado muchos titulos con el Real Madrid pero con la selección Argentina no había podido lograr nada hasta esta ultima versión de la Copa America', 'Comentarios de Futbol y Deportes', 'Cuantas copas tenes');

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (01, '31-08-2021', '16:36:45', 'jajaja el servicio de VTR vale champiñon')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (01, '31-08-2021', '16:42:32', 'uff yo tuve uno de esos clientes que se fueron, se pasaba callendo el internet mientras tenia clases :( muy mal')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (03, '01-09-2021', '12:36:45', 'Messi realmente se la jugo en esta copa, ahora si que mojó su camiseta')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (03, '01-09-2021', '12:38:12', 'Opino super diferente a ti y a Carlos, Argentina con Messi no jugó tan bien, solo ganaron porque los demás equipos estaban en peor condición fisica despues de la pandemia')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (03, '01-09-2021', '12:40:22', '¡¿QUE?! ACASO VISTE LOS PARTIDOS DE ESTA COPA, SOS CIEGO ACASO PEL***** DE M*****')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (03, '01-09-2021', '12:42:45', 'oye ese lenguaje esta en contra de las reglas de este foro, te vas reportado con el administrador')

INSERT INTO posts (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion, titulo)
VALUES (06, 'Margarita', '02-09-2021', 'Ya que avanzaron las fases de apertura de la pandemia desde el fan club oficial dicen que viene Deftones a Chile de nuevo OMG no me lo puedo creer!! junten plata para las entradas desde ya', 'Información sobre eventos y conciertos', 'Proximos Conciertos');

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (06, '02-09-2021', '12:42:45', 'oye pero eso parece solo un rumor, no hay una fuente más oficial?')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (06, '02-09-2021', '12:42:45', 'todavía no hay nada publicado en la pagina de deftones pero desde el fan club nunca han tirado una informacion sin que esten seguro de eso, de alguna parte se habra filtrado la información y los del fan club lo saben')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (06, '02-09-2021', '12:42:45', 'Hmm pucha puede ser pero no me confio todavía, además ya los vi la ultima vez que vinieron pre-pandemia')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (06, '02-09-2021', '12:42:45', 'Pero ahora tienen más canciones que agregar al setlist po no seai leso, el track 06 del ultimo disco es un TEMAZOOOO')

INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido)
VALUES (06, '02-09-2021', '12:42:45', 'si puede ser, son muy buenas canciones las ultimas, pero prefiero juntar plata para System of a Down si es que vienen, ojala que vengan -_-u ')