-- Task: Create a 'users' table with an auto-incrementing id, unique email, and name fields. The table should not fail if it already exists.

-- Create the users table if it doesn't already exist
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary key, auto-incrementing id
    email VARCHAR(255) NOT NULL UNIQUE,  -- Email, must be unique and not null
    name VARCHAR(255)  -- Name, up to 255 characters
);

-- End of file
