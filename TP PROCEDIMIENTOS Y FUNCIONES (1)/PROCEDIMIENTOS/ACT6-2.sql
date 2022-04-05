/* Solución con INTO */
USE jardineria;
DROP PROCEDURE IF EXISTS calcular_estadísticas;
DELIMITER $$
CREATE PROCEDURE calcular_estadísticas(IN forma_pago VARCHAR(50),
OUT máximo FLOAT,
OUT mínimo FLOAT,
OUT media FLOAT,
OUT suma FLOAT,
OUT numero_pagos INTEGER)
BEGIN
SELECT MAX(total), MIN(total), AVG(total), SUM(total), COUNT(total)
INTO máximo, mínimo, media, suma, numero_pagos
FROM pago
WHERE pago.forma_pago = forma_pago;
END
$$
CALL calcular_estadísticas('Paypal', @máximo, @mínimo, @media, @suma,
@numero_pagos);
SELECT @máximo, @mínimo, @media, @suma, @numero_pagos;
