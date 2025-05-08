CREATE TABLE product
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT(100) NOT NULL,
    weight DECIMAL (8, 2),
    metalType TEXT(50),
    stoneType TEXT(100),
    price DECIMAL(10, 2) NOT NULL,
    manufacturer TEXT(30),
    size DECIMAL (5, 1)
);

CREATE TABLE client
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullName TEXT(100) NOT NULL,
    birthDate DATE,
    phoneNumber VARCHAR(15) NOT NULL
);

CREATE TABLE employee
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullName TEXT(100) NOT NULL,
    birthDate DATE,
    phoneNumber VARCHAR(15) NOT NULL,
    schedule TEXT(150),
    position TEXT(100)
);
