USE `carbon`;
DROP procedure IF EXISTS `ADD_UPDATE_USER`;

DELIMITER $$
USE `carbon`$$

CREATE PROCEDURE ADD_UPDATE_USER (p_auth_user_id nvarchar(255), 
  p_userCategory varchar(50),
  p_diet varchar(50),
  p_carUsage varchar(50),
  p_carMileage int(11),
  p_numberInHousehold int(11),
  p_houseType varchar(50),
  p_houseAge varchar(50))
BEGIN
  DECLARE u_userId INT DEFAULT 0;
  DECLARE u_count INT DEFAULT 0;
  SET u_count = (SELECT count(*) FROM carbon.users where auth_user_id = p_auth_user_id);
    
  IF  (u_count = 0) THEN
     INSERT INTO carbon.users (auth_user_id) VALUES (p_auth_user_id);
     SET u_userId = last_insert_id();    
      
     INSERT INTO carbon.questionaire
      (user_id,
       userCategory,
       diet,
	   carUsage,
	   carMileage,
	   numberInHousehold,
	   houseType,
	   houseAge)
	   VALUES
	  (u_userId, 
       p_userCategory,
       p_diet,
	   p_carUsage,
	   p_carMileage,
	   p_numberInHousehold,
	   p_houseType,
	   p_houseAge);        
  ELSE
     update carbon.questionaire a inner join carbon.users b
     on a.user_id = b.user_id
     set userCategory = p_userCategory,
     diet  = p_diet,
     carUsage = p_carUsage,
	 carMileage = p_carMileage,
	 numberInHousehold = p_numberInHousehold,
	 houseType = p_houseType,
	 houseAge = p_houseAge
     where b.auth_user_id = p_auth_user_id;
     
  END IF;
END$$ 

DELIMITER ;



