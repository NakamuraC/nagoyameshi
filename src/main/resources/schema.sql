CREATE TABLE IF NOT EXISTS categories(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS shops (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(50) NOT NULL,  
   image_name VARCHAR(255),
   description VARCHAR(255) NOT NULL,
   category_id INT NOT NULL,
   FOREIGN KEY (category_id) REFERENCES categories(id),
   budget INT NOT NULL,
   address VARCHAR(255) NOT NULL,
   phone_number VARCHAR(50) NOT NULL,
   created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

