
use Platzi;
select *  from books;
Select * from books where book_id = 6;
Select * from book_id where book_id = 6 \G;

SELECT [columns]
FROM actions AS a
LEFT JOIN books AS b
	ON b.book_id = a.book_id


 
MUESTRA UNA LISTA DE TODAS LAS ACCIONES CUYO action_tipe SEA IGUAL A VENTA
SELECT a.action_id, b.title, a.action_type, u.name, b.price
FROM actions AS a
LEFT JOIN books AS b
	ON b.book_id = a.book_id
LEFT JOIN users AS u
	ON a.user_id = u.user_id
WHERE a.action_type = 'venta';



MUESTRA UNA LISTA DE TODAS LAS ACCIONES CUYO action_tipe NO SEA IGUAL A VENTA
SELECT a.action_id, b.title, a.action_type, u.name, 0 AS price
FROM actions AS a
LEFT JOIN books AS b
	ON b.book_id = a.book_id
LEFT JOIN users AS u
	ON a.user_id = u.user_id
WHERE a.action_type <> 'venta'; 



USANDO LA SENTENCIA UNION
MUESTRA UNA LISTA DE TODAS LAS ACCIONES CUYO action_tipe NO SEA IGUAL A VENTA
Y EN LA MISMA LISTA MUESTRA TODAS LAS ACCIONES CUYO action_tipe NO SEA IGUAL A VENTA
SELECT a.action_id, b.title, a.action_type, u.name, 0 AS price
FROM actions AS a
LEFT JOIN books AS b
	ON b.book_id = a.book_id
LEFT JOIN users AS u
	ON a.user_id = u.user_id
WHERE a.action_type != 'venta' 

UNION

SELECT a.action_id, b.title, a.action_type, u.name, b.price AS price
FROM actions AS a
LEFT JOIN books AS b
	ON b.book_id = a.book_id
LEFT JOIN users AS u
	ON a.user_id = u.user_id
WHERE a.action_type = 'venta';



USANDO LA SENTENCIA ORDER BY
MUESTRA UNA LISTA DE TODAS LAS ACCIONES CUYO action_tipe NO SEA IGUAL A VENTA
Y EN LA MISMA LISTA MUESTRA TODAS LAS ACCIONES CUYO action_tipe NO SEA IGUAL A VENTA
HACE UNA MEZCLA DE LAS DOS SENTENCIAS Y LAS ORDENA SEGUN LA INSTRUCCION
SELECT a.action_id AS aid, b.title, a.action_type, u.name, 0 AS price
FROM actions AS a
LEFT JOIN books AS b
	ON b.book_id = a.book_id
LEFT JOIN users AS u
	ON a.user_id = u.user_id
WHERE a.action_type != 'venta' 

UNION

SELECT a.action_id AS aid, b.title, a.action_type, u.name, b.price AS price
FROM actions AS a
LEFT JOIN books AS b
	ON b.book_id = a.book_id
LEFT JOIN users AS u
	ON a.user_id = u.user_id
WHERE a.action_type = 'venta'

ORDER BY aid;



SELECT a.action_id AS aid, b.title, a.action_type, u.name, b.price AS price
FROM actions AS a
LEFT JOIN books AS b
	ON b.book_id = a.book_id
LEFT JOIN users AS u
	ON a.user_id = u.user_id;




SELECT a.action_id AS aid,
	b.titlle,
	a.action_type,
	u.name,

	IF(a.action_type = 'venta',
		b.price,
		0) AS price,
	b.book_id 






if (cond, ) 