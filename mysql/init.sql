-- Create databases
CREATE DATABASE IF NOT EXISTS `user`;
CREATE DATABASE IF NOT EXISTS `customer`;
CREATE DATABASE IF NOT EXISTS `loan`;
CREATE DATABASE IF NOT EXISTS `transaction`;

-- Create users and grant privileges (if they don't exist)
CREATE USER IF NOT EXISTS 'appdev'@'%' IDENTIFIED BY 'appdev';
GRANT ALL PRIVILEGES ON *.* TO 'appdev'@'%';

GRANT ALL PRIVILEGES ON `transaction`.* TO 'appdev'@'%';
GRANT ALL PRIVILEGES ON `user`.* TO 'appdev'@'%';
GRANT ALL PRIVILEGES ON `customer`.* TO 'appdev'@'%';
GRANT ALL PRIVILEGES ON `loan`.* TO 'appdev'@'%';

FLUSH PRIVILEGES;