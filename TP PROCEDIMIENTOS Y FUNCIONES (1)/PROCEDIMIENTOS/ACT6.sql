#Actividad6
USE pagos;
DROP PROCEDURE IF EXISTS calcular_pagos;
DELIMITER $$
CREATE PROCEDURE calcular_pagos(IN codFormaPago INT,
	OUT máximo FLOAT,
	OUT mínimo FLOAT,
	OUT media FLOAT,
	OUT suma FLOAT,
	OUT numero_pagos INTEGER)
BEGIN
	SET máximo = (
	SELECT MAX(total)
	FROM pago
		WHERE pago.codFormaPago = codFormaPago);
	SET mínimo = (
	SELECT MIN(total)
	FROM pago
		WHERE pago.codFormaPago = codFormaPago);
	SET media = (
	SELECT AVG(total)
	FROM pago
		WHERE pago.codFormaPago= codFormaPago);
	SET suma = (
	SELECT SUM(total)
	FROM pago
		WHERE pago.codFormaPago = codFormaPago);
	SET numero_pagos = (
	SELECT COUNT(total)
	FROM pago
		WHERE pago.codFormaPago = codFormaPago);
END$$
Delimiter ;
#verificacion
CALL calcular_pagos(2, @máximo, @mínimo, @media, @suma,
@numero_pagos);
SELECT @máximo, @mínimo, @media, @suma, @numero_pagos;