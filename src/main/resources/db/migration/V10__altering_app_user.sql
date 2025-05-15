ALTER TABLE app_user
    DROP COLUMN first_name,
    DROP COLUMN last_name,
    ADD COLUMN fullName TEXT(100) NOT NULL,
    CHANGE COLUMN user_name userName TEXT(100) NOT NULL;
