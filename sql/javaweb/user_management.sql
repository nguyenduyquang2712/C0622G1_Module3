DELIMITER $$

CREATE PROCEDURE get_user_by_id(IN user_id INT)

BEGIN

    SELECT users.name, users.email, users.country

    FROM users

    where users.id = user_id;

    END$$

DELIMITER ;

  

DELIMITER $$

CREATE PROCEDURE insert_user(

IN user_name varchar(50),

IN user_email varchar(50),

IN user_country varchar(50)

)

BEGIN

    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);

    END$$

DELIMITER ;

DELIMITER //
CREATE PROCEDURE show_all_user()
BEGIN
SELECT * FROM users;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE edit_user(
IN user_id int, 
IN `name` VARCHAR(255),
IN email VARCHAR(255),
IN country VARCHAR(255))

BEGIN 
UPDATE users
SET  `name` = `name`,email = email,country=country 
WHERE id = user_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE delete_user(IN deleted_id int)

BEGIN
DELETE FROM users WHERE id = deleted_id;
END //

DELIMITER ;


 

