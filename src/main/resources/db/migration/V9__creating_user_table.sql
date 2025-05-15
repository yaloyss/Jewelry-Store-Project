CREATE TABLE app_user
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name TEXT(100) NOT NULL,
    last_name TEXT(100) NOT NULL,
    user_name TEXT(100) NOT NULL,
    password TEXT(100) NOT NULL,
    role TEXT(100) NOT NULL
);