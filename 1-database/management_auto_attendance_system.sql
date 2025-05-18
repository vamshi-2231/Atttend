-- Database: management_auto_attendance_system

CREATE TABLE `employees` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email_address` varchar(200) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `photo_path` varchar(1000) NOT NULL,
  `is_dataset_available` varchar(15) NOT NULL,
  `is_model_available` varchar(10) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `datasets` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `number_of_images` varchar(100) NOT NULL,
  `created_date` varchar(50) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `training` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `number_of_trained_images` varchar(200) NOT NULL,
  `trained_date` varchar(50) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `attendance` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `in_time` varchar(100) NOT NULL,
  `out_time` varchar(100) NOT NULL,
  `_date` varchar(100) NOT NULL,
  `face_recognition_entering` varchar(300) NOT NULL,
  `face_recognition_exiting` varchar(300) NOT NULL,
  `face_recognition_entering_img_path` varchar(300) NOT NULL,
  `face_recognition_exiting_img_path` varchar(300) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Sample data inserts (optional, you can modify/remove as needed)

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `dob`, `gender`, `job_title`, `nic`, `phone_no`, `address`, `email_address`, `marital_status`, `photo_path`, `is_dataset_available`, `is_model_available`) VALUES
('0001', 'vamshi', 'Gunaretnam', '1997-01-11', 'Male', 'Software Developer', '970110720V', '12435789', '345768', 'e43257689', 'Single', 'No_Image', 'True', 'True'),
('0002', 'David', 'Mike', '123456', 'Female', 'dsadsad', '3245476453', '456543542132', '56543542132', '35241435', 'Single', 'No_Image', 'False', 'False');

INSERT INTO `datasets` (`employee_id`, `full_name`, `number_of_images`, `created_date`) VALUES
('0001', 'Vamshi Mamindla', '15', '18-05-2024');

INSERT INTO `training` (`employee_id`, `full_name`, `number_of_trained_images`, `trained_date`) VALUES
('0001', 'Vamshi Mamindla', '15', '18-05-2024');

INSERT INTO `attendance` (`employee_id`, `in_time`, `out_time`, `_date`, `face_recognition_entering`, `face_recognition_exiting`, `face_recognition_entering_img_path`, `face_recognition_exiting_img_path`) VALUES
('0001', '02:44:42 PM', '', '18-05-2024', 'True', '', '', '');

INSERT INTO `users` (`username`, `password`) VALUES
('admin', 'admin');
