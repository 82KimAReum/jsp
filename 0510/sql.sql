DELIMITER //
CREATE PROCEDURE world.sp_select_countrycode()
BEGIN
  SELECT distinct CountryCode
  FROM world.City;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE world.sp_select_city
(
	IN v_code char(3)
)
BEGIN
  SELECT *
  FROM world.City
  where CountryCode=v_code;
END //
DELIMITER ;