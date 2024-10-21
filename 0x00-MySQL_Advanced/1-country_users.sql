-- Task: Create a 'users' table with an auto-incrementing id, unique email, name, and country fields. The country field is an enumeration of countries (US, CO, TN) with 'US' as the default. The table should not fail if it already exists.

-- Create the users table if it doesn't already exist
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary key, auto-incrementing id
    email VARCHAR(255) NOT NULL UNIQUE,  -- Email, must be unique and not null
    name VARCHAR(255),  -- Name, up to 255 characters
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'  -- Country, must be one of 'US', 'CO', or 'TN'. Default is 'US'
);

-- End of file
