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

-- Branch
INSERT INTO `user`.`branch` (`id`, `branch_code`, `branch_name`, `branch_number`, `locked`, `divisional_area_id`) VALUES ('1', '1001', 'Colomdo', '1001', '0', '49');

-- User 
INSERT INTO `user`.`sysuser` (`user_id`, `address`, `contact_no`, `created_on`, `email`, `failed_login_attempts`, `login_status`, `name`, `password`, `password_changed_by`, `password_expire_date`, `password_modify_on`, `status`, `teller_id`, `username`, `branch_id`, `role_id`) VALUES ('2', 'System Admin', '0000000000', '2025-01-30 06:52:40.000000', 'ho@sysadmin.com', '0', '0', 'Branch Administrator', '89655fefcfd7fe02f70b6dc42f09f6f1', '1', '2030-01-30 06:52:40.000000', '2025-01-30 06:52:40.000000', '1', '1', '803190330V', '1', '2');