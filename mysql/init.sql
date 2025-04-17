-- Create databases
CREATE DATABASE IF NOT EXISTS `user`;
CREATE DATABASE IF NOT EXISTS `customer`;
CREATE DATABASE IF NOT EXISTS `loan`;

-- Create users and grant privileges (if they don't exist)
CREATE USER IF NOT EXISTS 'appdev'@'%' IDENTIFIED BY 'appdev';
GRANT ALL PRIVILEGES ON *.* TO 'appdev'@'%';

CREATE USER IF NOT EXISTS 'appdev_user'@'%' IDENTIFIED BY 'appdev';
GRANT ALL PRIVILEGES ON `user`.* TO 'appdev_user'@'%';

CREATE USER IF NOT EXISTS 'appdev_customer'@'%' IDENTIFIED BY 'appdev';
GRANT ALL PRIVILEGES ON `customer`.* TO 'appdev_customer'@'%';

CREATE USER IF NOT EXISTS 'appdev_loan'@'%' IDENTIFIED BY 'appdev';
GRANT ALL PRIVILEGES ON `loan`.* TO 'appdev_loan'@'%';

FLUSH PRIVILEGES;