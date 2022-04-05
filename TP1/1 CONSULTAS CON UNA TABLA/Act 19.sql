#19.	Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador IN.
select * from producto
where codigo_fabricante in(1,3,5) 