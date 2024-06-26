create database cyberattendencesystem;
use cyberattendencesystem;
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    RegistrationDate DATE
);
CREATE TABLE Computers (
    ComputerID INT PRIMARY KEY AUTO_INCREMENT,
    ComputerName VARCHAR(50) NOT NULL,
    IPAddress VARCHAR(20) NOT NULL,
    Status ENUM('Available', 'Occupied') DEFAULT 'Available'
);
CREATE TABLE Sessions (
    SessionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ComputerID INT,
    StartTime DATETIME,
    EndTime DATETIME,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ComputerID) REFERENCES Computers(ComputerID)
);
CREATE TABLE UsageLogs (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    SessionID INT,
    LogTime DATETIME,
    Activity VARCHAR(255),
    FOREIGN KEY (SessionID) REFERENCES Sessions(SessionID)
);
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    SessionID INT,
    PaymentAmount DECIMAL(10, 2),
    PaymentDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SessionID) REFERENCES Sessions(SessionID)
);
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    RegistrationDate DATE
);

INSERT INTO Users (UserID, Username, Password, Email, Phone, RegistrationDate) VALUES
(1, 'user1', 'password123', 'user1@example.com', '123-456-7890', '2022-01-01'),
(2, 'user2', 'securepass321', 'user2@example.com', '987-654-3210', '2022-01-02'),
(3, 'user3', 'strongpassword', 'user3@example.com', '111-222-3333', '2022-01-03'),
(4, 'user4', 'mypassword789', 'user4@example.com', '222-333-4444', '2022-01-04'),
(5, 'user5', 'hello123pass', 'user5@example.com', '333-444-5555', '2022-01-05'),
(6, 'user6', 'p@ssw0rd321', 'user6@example.com', '444-555-6666', '2022-01-06'),
(7, 'user7', 'secure123pass', 'user7@example.com', '555-666-7777', '2022-01-07'),
(8, 'user8', 'password890', 'user8@example.com', '666-777-8888', '2022-01-08'),
(9, 'user9', 'newpass123', 'user9@example.com', '777-888-9999', '2022-01-09'),
(10, 'user10', 'testpass123', 'user10@example.com', '888-999-0000', '2022-01-10'),
(11, 'user11', 'password456', 'user11@example.com', '999-000-1111', '2022-01-11'),
(12, 'user12', 'secure456pass', 'user12@example.com', '000-111-2222', '2022-01-12'),
(13, 'user13', 'pass123word', 'user13@example.com', '111-222-3333', '2022-01-13'),
(14, 'user14', 'password789', 'user14@example.com', '222-333-4444', '2022-01-14'),
(15, 'user15', 'myp@ssword123', 'user15@example.com', '333-444-5555', '2022-01-15'),
(16, 'user16', 'hello456pass', 'user16@example.com', '444-555-6666', '2022-01-16'),
(17, 'user17', 'p@ssword890', 'user17@example.com', '555-666-7777', '2022-01-17'),
(18, 'user18', 'secure789pass', 'user18@example.com', '666-777-8888', '2022-01-18'),
(19, 'user19', 'newpass456', 'user19@example.com', '777-888-9999', '2022-01-19'),
(20, 'user20', 'testpass456', 'user20@example.com', '888-999-0000', '2022-01-20'),
(21, 'user21', 'password123', 'user21@example.com', '999-000-1111', '2022-01-21'),
(22, 'user22', 'securepass890', 'user22@example.com', '000-111-2222', '2022-01-22'),
(23, 'user23', 'strong123pass', 'user23@example.com', '111-222-3333', '2022-01-23'),
(24, 'user24', 'password890', 'user24@example.com', '222-333-4444', '2022-01-24'),
(25, 'user25', 'myp@ssword321', 'user25@example.com', '333-444-5555', '2022-01-25'),
(26, 'user26', 'hello789pass', 'user26@example.com', '444-555-6666', '2022-01-26'),
(27, 'user27', 'p@ssword456', 'user27@example.com', '555-666-7777', '2022-01-27'),
(28, 'user28', 'secure123pass', 'user28@example.com', '666-777-8888', '2022-01-28'),
(29, 'user29', 'newpass789', 'user29@example.com', '777-888-9999', '2022-01-29'),
(30, 'user30', 'testpass789', 'user30@example.com', '888-999-0000', '2022-01-30'),
(31, 'user31', 'password321', 'user31@example.com', '999-000-1111', '2022-01-31'),
(32, 'user32', 'securepass123', 'user32@example.com', '000-111-2222', '2022-02-01'),
(33, 'user33', 'strong456pass', 'user33@example.com', '111-222-3333', '2022-02-02'),
(34, 'user34', 'password321', 'user34@example.com', '222-333-4444', '2022-02-03'),
(35, 'user35', 'myp@ssword456', 'user35@example.com', '333-444-5555', '2022-02-04'),
(36, 'user36', 'hello123pass', 'user36@example.com', '444-555-6666', '2022-02-05'),
(37, 'user37', 'p@ssword890', 'user37@example.com', '555-666-7777', '2022-02-06'),
(38, 'user38', 'secure789pass', 'user38@example.com', '666-777-8888', '2022-02-07'),
(39, 'user39', 'newpass123', 'user39@example.com', '777-888-9999', '2022-02-08'),
(40, 'user40', 'testpass123', 'user40@example.com', '888-999-0000', '2022-02-09'),
(41, 'user41', 'password456', 'user41@example.com', '999-000-1111', '2022-02-10'),
(42, 'user42', 'secure456pass', 'user42@example.com', '000-111-2222', '2022-02-11'),
(43, 'user43', 'pass123word', 'user43@example.com', '111-222-3333', '2022-02-12'),
(44, 'user44', 'password789', 'user44@example.com', '222-333-4444', '2022-02-13'),
(45, 'user45', 'myp@ssword123', 'user45@example.com', '333-444-5555', '2022-02-14'),
(46, 'user46', 'hello456pass', 'user46@example.com', '444-555-6666', '2022-02-15'),
(47, 'user47', 'p@ssword890', 'user47@example.com', '555-666-7777', '2022-02-16'),
(48, 'user48', 'secure789pass', 'user48@example.com', '666-777-8888', '2022-02-17'),
(49, 'user49', 'newpass456', 'user49@example.com', '777-888-9999', '2022-02-18'),
(50, 'user50', 'testpass456', 'user50@example.com', '888-999-0000', '2022-02-19'),
(51, 'user51', 'password123', 'user51@example.com', '999-000-1111', '2022-02-20'),
(52, 'user52', 'securepass890', 'user52@example.com', '000-111-2222', '2022-02-21'),
(53, 'user53', 'strong123pass', 'user53@example.com', '111-222-3333', '2022-02-22'),
(54, 'user54', 'password890', 'user54@example.com', '222-333-4444', '2022-02-23'),
(55, 'user55', 'myp@ssword321', 'user55@example.com', '333-444-5555', '2022-02-24'),
(56, 'user56', 'hello789pass', 'user56@example.com', '444-555-6666', '2022-02-25'),
(57, 'user57', 'p@ssword456', 'user57@example.com', '555-666-7777', '2022-02-26'),
(58, 'user58', 'secure123pass', 'user58@example.com', '666-777-8888', '2022-02-27'),
(59, 'user59', 'newpass789', 'user59@example.com', '777-888-9999', '2022-02-28'),
(60, 'user60', 'testpass789', 'user60@example.com', '888-999-0000', '2022-03-01'),
(61, 'user61', 'password321', 'user61@example.com', '999-000-1111', '2022-03-02'),
(62, 'user62', 'securepass123', 'user62@example.com', '000-111-2222', '2022-03-03'),
(63, 'user63', 'strong456pass', 'user63@example.com', '111-222-3333', '2022-03-04'),
(64, 'user64', 'password321', 'user64@example.com', '222-333-4444', '2022-03-05'),
(65, 'user65', 'myp@ssword456', 'user65@example.com', '333-444-5555', '2022-03-06'),
(66, 'user66', 'hello123pass', 'user66@example.com', '444-555-6666', '2022-03-07'),
(67, 'user67', 'p@ssword890', 'user67@example.com', '555-666-7777', '2022-03-08'),
(68, 'user68', 'secure789pass', 'user68@example.com', '666-777-8888', '2022-03-09'),
(69, 'user69', 'newpass123', 'user69@example.com', '777-888-9999', '2022-03-10'),
(70, 'user70', 'testpass123', 'user70@example.com', '888-999-0000', '2022-03-11'),
(71, 'user71', 'password456', 'user71@example.com', '999-000-1111', '2022-03-12'),
(72, 'user72', 'secure456pass', 'user72@example.com', '000-111-2222', '2022-03-13'),
(73, 'user73', 'pass123word', 'user73@example.com', '111-222-3333', '2022-03-14'),
(74, 'user74', 'password789', 'user74@example.com', '222-333-4444', '2022-03-15'),
(75, 'user75', 'myp@ssword123', 'user75@example.com', '333-444-5555', '2022-03-16'),
(76, 'user76', 'hello456pass', 'user76@example.com', '444-555-6666', '2022-03-17'),
(77, 'user77', 'p@ssword890', 'user77@example.com', '555-666-7777', '2022-03-18'),
(78, 'user78', 'secure789pass', 'user78@example.com', '666-777-8888', '2022-03-19'),
(79, 'user79', 'newpass456', 'user79@example.com', '777-888-9999', '2022-03-20'),
(80, 'user80', 'testpass456', 'user80@example.com', '888-999-0000', '2022-03-21'),
(81, 'user81', 'password123', 'user81@example.com', '999-000-1111', '2022-03-22'),
(82, 'user82', 'securepass890', 'user82@example.com', '000-111-2222', '2022-03-23'),
(83, 'user83', 'strong123pass', 'user83@example.com', '111-222-3333', '2022-03-24'),
(84, 'user84', 'password890', 'user84@example.com', '222-333-4444', '2022-03-25'),
(85, 'user85', 'myp@ssword321', 'user85@example.com', '333-444-5555', '2022-03-26'),
(86, 'user86', 'hello789pass', 'user86@example.com', '444-555-6666', '2022-03-27'),
(87, 'user87', 'p@ssword456', 'user87@example.com', '555-666-7777', '2022-03-28'),
(88, 'user88', 'secure123pass', 'user88@example.com', '666-777-8888', '2022-03-29'),
(89, 'user89', 'newpass789', 'user89@example.com', '777-888-9999', '2022-03-30'),
(90, 'user90', 'testpass789', 'user90@example.com', '888-999-0000', '2022-03-31'),
(91, 'user91', 'password321', 'user91@example.com', '999-000-1111', '2022-04-01'),
(92, 'user92', 'securepass123', 'user92@example.com', '000-111-2222', '2022-04-02'),
(93, 'user93', 'strong456pass', 'user93@example.com', '111-222-3333', '2022-04-03'),
(94, 'user94', 'password321', 'user94@example.com', '222-333-4444', '2022-04-04'),
(95, 'user95', 'myp@ssword456', 'user95@example.com', '333-444-5555', '2022-04-05'),
(96, 'user96', 'hello123pass', 'user96@example.com', '444-555-6666', '2022-04-06'),
(97, 'user97', 'p@ssword890', 'user97@example.com', '555-666-7777', '2022-04-07'),
(98, 'user98', 'secure789pass', 'user98@example.com', '666-777-8888', '2022-04-08'),
(99, 'user99', 'newpass123', 'user99@example.com', '777-888-9999', '2022-04-09'),
(100, 'user100', 'testpass456', 'user100@example.com', '888-999-0000', '2022-04-10');
select * from Users;
INSERT INTO Computers (ComputerName, IPAddress, Status) 
VALUES 
('Computer1', '192.168.1.1', 'Available'),
('Computer2', '192.168.1.2', 'Available'),
('Computer3', '192.168.1.3', 'Available'),
('Computer4', '192.168.1.4', 'Available'),
('Computer5', '192.168.1.5', 'Available'),
('Computer6', '192.168.1.6', 'Available'),
('Computer7', '192.168.1.7', 'Available'),
('Computer8', '192.168.1.8', 'Available'),
('Computer9', '192.168.1.9', 'Available'),
('Computer10', '192.168.1.10', 'Available'),
('Computer11', '192.168.1.11', 'Available'),
('Computer12', '192.168.1.12', 'Available'),
('Computer13', '192.168.1.13', 'Available'),
('Computer14', '192.168.1.14', 'Available'),
('Computer15', '192.168.1.15', 'Available'),
('Computer16', '192.168.1.16', 'Available'),
('Computer17', '192.168.1.17', 'Available'),
('Computer18', '192.168.1.18', 'Available'),
('Computer19', '192.168.1.19', 'Available'),
('Computer20', '192.168.1.20', 'Available'),
('Computer21', '192.168.1.21', 'Available'),
('Computer22', '192.168.1.22', 'Available'),
('Computer23', '192.168.1.23', 'Available'),
('Computer24', '192.168.1.24', 'Available'),
('Computer25', '192.168.1.25', 'Available'),
('Computer26', '192.168.1.26', 'Available'),
('Computer27', '192.168.1.27', 'Available'),
('Computer28', '192.168.1.28', 'Available'),
('Computer29', '192.168.1.29', 'Available'),
('Computer30', '192.168.1.30', 'Available'),
('Computer31', '192.168.1.31', 'Available'),
('Computer32', '192.168.1.32', 'Available'),
('Computer33', '192.168.1.33', 'Available'),
('Computer34', '192.168.1.34', 'Available'),
('Computer35', '192.168.1.35', 'Available'),
('Computer36', '192.168.1.36', 'Available'),
('Computer37', '192.168.1.37', 'Available'),
('Computer38', '192.168.1.38', 'Available'),
('Computer39', '192.168.1.39', 'Available'),
('Computer40', '192.168.1.40', 'Available'),
('Computer41', '192.168.1.41', 'Available'),
('Computer42', '192.168.1.42', 'Available'),
('Computer43', '192.168.1.43', 'Available'),
('Computer44', '192.168.1.44', 'Available'),
('Computer45', '192.168.1.45', 'Available'),
('Computer46', '192.168.1.46', 'Available'),
('Computer47', '192.168.1.47', 'Available'),
('Computer48', '192.168.1.48', 'Available'),
('Computer49', '192.168.1.49', 'Available'),
('Computer50', '192.168.1.50', 'Available'),
('Computer51', '192.168.1.51', 'Available'),
('Computer52', '192.168.1.52', 'Available'),
('Computer53', '192.168.1.53', 'Available'),
('Computer54', '192.168.1.54', 'Available'),
('Computer55', '192.168.1.55', 'Available'),
('Computer56', '192.168.1.56', 'Available'),
('Computer57', '192.168.1.57', 'Available'),
('Computer58', '192.168.1.58', 'Available'),
('Computer59', '192.168.1.59', 'Available'),
('Computer60', '192.168.1.60', 'Available'),
('Computer61', '192.168.1.61', 'Available'),
('Computer62', '192.168.1.62', 'Available'),
('Computer63', '192.168.1.63', 'Available'),
('Computer64', '192.168.1.64', 'Available'),
('Computer65', '192.168.1.65', 'Available'),
('Computer66', '192.168.1.66', 'Available'),
('Computer67', '192.168.1.67', 'Available'),
('Computer68', '192.168.1.68', 'Available'),
('Computer69', '192.168.1.69', 'Available'),
('Computer70', '192.168.1.70', 'Available'),
('Computer71', '192.168.1.71', 'Available'),
('Computer72', '192.168.1.72', 'Available'),
('Computer73', '192.168.1.73', 'Available'),
('Computer74', '192.168.1.74', 'Available'),
('Computer75', '192.168.1.75', 'Available'),
('Computer76', '192.168.1.76', 'Available'),
('Computer77', '192.168.1.77', 'Available'),
('Computer78', '192.168.1.78', 'Available'),
('Computer79', '192.168.1.79', 'Available'),
('Computer80', '192.168.1.80', 'Available'),
('Computer81', '192.168.1.81', 'Available'),
('Computer82', '192.168.1.82', 'Available'),
('Computer83', '192.168.1.83', 'Available'),
('Computer84', '192.168.1.84', 'Available'),
('Computer85', '192.168.1.85', 'Available'),
('Computer86', '192.168.1.86', 'Available'),
('Computer87', '192.168.1.87', 'Available'),
('Computer88', '192.168.1.88', 'Available'),
('Computer89', '192.168.1.89', 'Available'),
('Computer90', '192.168.1.90', 'Available'),
('Computer91', '192.168.1.91', 'Available'),
('Computer92', '192.168.1.92', 'Available'),
('Computer93', '192.168.1.93', 'Available'),
('Computer94', '192.168.1.94', 'Available'),
('Computer95', '192.168.1.95', 'Available'),
('Computer96', '192.168.1.96', 'Available'),
('Computer97', '192.168.1.97', 'Available'),
('Computer98', '192.168.1.98', 'Available'),
('Computer99', '192.168.1.99', 'Available'),
('Computer100', '192.168.1.100', 'Available');
INSERT INTO Sessions (UserID, ComputerID, StartTime, EndTime) VALUES
(1, 1, '2023-01-01 10:00:00', '2023-01-01 12:00:00'),
(2, 2, '2023-01-02 11:00:00', '2023-01-02 13:00:00'),
(3, 3, '2023-01-03 12:00:00', '2023-01-03 14:00:00'),
(4, 4, '2023-01-04 09:00:00', '2023-01-04 11:00:00'),
(5, 5, '2023-01-05 08:00:00', '2023-01-05 10:00:00'),
(6, 6, '2023-01-06 07:00:00', '2023-01-06 09:00:00'),
(7, 7, '2023-01-07 06:00:00', '2023-01-07 08:00:00'),
(8, 8, '2023-01-08 05:00:00', '2023-01-08 07:00:00'),
(9, 9, '2023-01-09 04:00:00', '2023-01-09 06:00:00'),
(10, 10, '2023-01-10 03:00:00', '2023-01-10 05:00:00'),
(11, 11, '2023-01-11 02:00:00', '2023-01-11 04:00:00'),
(12, 12, '2023-01-12 01:00:00', '2023-01-12 03:00:00'),
(13, 13, '2023-01-13 23:00:00', '2023-01-14 01:00:00'),
(14, 14, '2023-01-14 22:00:00', '2023-01-15 00:00:00'),
(15, 15, '2023-01-15 21:00:00', '2023-01-16 23:00:00'),
(16, 16, '2023-01-16 20:00:00', '2023-01-17 22:00:00'),
(17, 17, '2023-01-17 19:00:00', '2023-01-18 21:00:00'),
(18, 18, '2023-01-18 18:00:00', '2023-01-19 20:00:00'),
(19, 19, '2023-01-19 17:00:00', '2023-01-20 19:00:00'),
(20, 20, '2023-01-20 16:00:00', '2023-01-21 18:00:00'),
(21, 1, '2023-01-21 15:00:00', '2023-01-22 17:00:00'),
(22, 2, '2023-01-22 14:00:00', '2023-01-23 16:00:00'),
(23, 3, '2023-01-23 13:00:00', '2023-01-24 15:00:00'),
(24, 4, '2023-01-24 12:00:00', '2023-01-25 14:00:00'),
(25, 5, '2023-01-25 11:00:00', '2023-01-26 13:00:00'),
(26, 6, '2023-01-26 10:00:00', '2023-01-27 12:00:00'),
(27, 7, '2023-01-27 09:00:00', '2023-01-28 11:00:00'),
(28, 8, '2023-01-28 08:00:00', '2023-01-29 10:00:00'),
(29, 9, '2023-01-29 07:00:00', '2023-01-30 09:00:00'),
(30, 10, '2023-01-30 06:00:00', '2023-01-31 08:00:00'),
(31, 11, '2023-01-31 05:00:00', '2023-02-01 07:00:00'),
(32, 12, '2023-02-01 04:00:00', '2023-02-02 06:00:00'),
(33, 13, '2023-02-02 03:00:00', '2023-02-03 05:00:00'),
(34, 14, '2023-02-03 02:00:00', '2023-02-04 04:00:00'),
(35, 15, '2023-02-04 01:00:00', '2023-02-05 03:00:00'),
(36, 16, '2023-02-05 23:00:00', '2023-02-06 01:00:00'),
(37, 17, '2023-02-06 22:00:00', '2023-02-07 00:00:00'),
(38, 18, '2023-02-07 21:00:00', '2023-02-08 23:00:00'),
(39, 19, '2023-02-08 20:00:00', '2023-02-09 22:00:00'),
(40, 20, '2023-02-09 19:00:00', '2023-02-10 21:00:00'),
(41, 1, '2023-02-10 18:00:00', '2023-02-11 20:00:00'),
(42, 2, '2023-02-11 17:00:00', '2023-02-12 19:00:00'),
(43, 3, '2023-02-12 16:00:00', '2023-02-13 18:00:00'),
(44, 4, '2023-02-13 15:00:00', '2023-02-14 17:00:00'),
(45, 5, '2023-02-14 14:00:00', '2023-02-15 16:00:00'),
(46, 6, '2023-02-15 13:00:00', '2023-02-16 15:00:00'),
(47, 7, '2023-02-16 12:00:00', '2023-02-17 14:00:00'),
(48, 8, '2023-02-17 11:00:00', '2023-02-18 13:00:00'),
(49, 9, '2023-02-18 10:00:00', '2023-02-19 12:00:00'),
(50, 10, '2023-02-19 09:00:00', '2023-02-20 11:00:00'),
(51, 11, '2023-02-20 08:00:00', '2023-02-21 10:00:00'),
(52, 12, '2023-02-21 07:00:00', '2023-02-22 09:00:00'),
(53, 13, '2023-02-22 06:00:00', '2023-02-23 08:00:00'),
(54, 14, '2023-02-23 05:00:00', '2023-02-24 07:00:00'),
(55, 15, '2023-02-24 04:00:00', '2023-02-25 06:00:00'),
(56, 16, '2023-02-25 03:00:00', '2023-02-26 05:00:00'),
(57, 17, '2023-02-26 02:00:00', '2023-02-27 04:00:00'),
(58, 18, '2023-02-27 01:00:00', '2023-02-28 03:00:00'),
(59, 19, '2023-02-28 23:00:00', '2023-03-01 01:00:00'),
(60, 20, '2023-03-01 22:00:00', '2023-03-02 00:00:00'),
(61, 1, '2023-03-02 21:00:00', '2023-03-03 23:00:00'),
(62, 2, '2023-03-03 20:00:00', '2023-03-04 22:00:00'),
(63, 3, '2023-03-04 19:00:00', '2023-03-05 21:00:00'),
(64, 4, '2023-03-05 18:00:00', '2023-03-06 20:00:00'),
(65, 5, '2023-03-06 17:00:00', '2023-03-07 19:00:00'),
(66, 6, '2023-03-07 16:00:00', '2023-03-08 18:00:00'),
(67, 7, '2023-03-08 15:00:00', '2023-03-09 17:00:00'),
(68, 8, '2023-03-09 14:00:00', '2023-03-10 16:00:00'),
(69, 9, '2023-03-10 13:00:00', '2023-03-11 15:00:00'),
(70, 10, '2023-03-11 12:00:00', '2023-03-12 14:00:00'),
(71, 11, '2023-03-12 11:00:00', '2023-03-13 13:00:00'),
(72, 12, '2023-03-13 10:00:00', '2023-03-14 12:00:00'),
(73, 13, '2023-03-14 09:00:00', '2023-03-15 11:00:00'),
(74, 14, '2023-03-15 08:00:00', '2023-03-16 10:00:00'),
(75, 15, '2023-03-16 07:00:00', '2023-03-17 09:00:00'),
(76, 16, '2023-03-17 06:00:00', '2023-03-18 08:00:00'),
(77, 17, '2023-03-18 05:00:00', '2023-03-19 07:00:00'),
(78, 18, '2023-03-19 04:00:00', '2023-03-20 06:00:00'),
(79, 19, '2023-03-20 03:00:00', '2023-03-21 05:00:00'),
(80, 20, '2023-03-21 02:00:00', '2023-03-22 04:00:00'),
(81, 1, '2023-03-22 01:00:00', '2023-03-23 03:00:00'),
(82, 2, '2023-03-23 23:00:00', '2023-03-24 01:00:00'),
(83, 3, '2023-03-24 22:00:00', '2023-03-25 00:00:00'),
(84, 4, '2023-03-25 21:00:00', '2023-03-26 23:00:00'),
(85, 5, '2023-03-26 20:00:00', '2023-03-27 22:00:00'),
(86, 6, '2023-03-27 19:00:00', '2023-03-28 21:00:00'),
(87, 7, '2023-03-28 18:00:00', '2023-03-29 20:00:00'),
(88, 8, '2023-03-29 17:00:00', '2023-03-30 19:00:00'),
(89, 9, '2023-03-30 16:00:00', '2023-03-31 18:00:00'),
(90, 10, '2023-03-31 15:00:00', '2023-04-01 17:00:00'),
(91, 11, '2023-04-01 14:00:00', '2023-04-02 16:00:00'),
(92, 12, '2023-04-02 13:00:00', '2023-04-03 15:00:00'),
(93, 13, '2023-04-03 12:00:00', '2023-04-04 14:00:00'),
(94, 14, '2023-04-04 11:00:00', '2023-04-05 13:00:00'),
(95, 15, '2023-04-05 10:00:00', '2023-04-06 12:00:00'),
(96, 16, '2023-04-06 09:00:00', '2023-04-07 11:00:00'),
(97, 17, '2023-04-07 08:00:00', '2023-04-08 10:00:00'),
(98, 18, '2023-04-08 07:00:00', '2023-04-09 09:00:00'),
(99, 19, '2023-04-09 06:00:00', '2023-04-10 08:00:00'),
(100, 20, '2023-04-10 05:00:00', '2023-04-11 07:00:00');
select * from Sessions;
INSERT INTO UsageLogs (SessionID, LogTime, Activity) VALUES
(1, '2023-01-01 10:05:00', 'Browsing the web'),
(2, '2023-01-02 11:15:00', 'Checking email'),
(3, '2023-01-03 12:25:00', 'Playing games'),
(4, '2023-01-04 09:35:00', 'Watching videos'),
(5, '2023-01-05 08:45:00', 'Social media'),
(6, '2023-01-06 07:55:00', 'Working on a document'),
(7, '2023-01-07 06:05:00', 'Coding'),
(8, '2023-01-08 05:15:00', 'Attending a virtual meeting'),
(9, '2023-01-09 04:25:00', 'Reading articles'),
(10, '2023-01-10 03:35:00', 'Online shopping'),
(11, '2023-01-11 02:45:00', 'Browsing the web'),
(12, '2023-01-12 01:55:00', 'Checking email'),
(13, '2023-01-13 23:05:00', 'Playing games'),
(14, '2023-01-14 22:15:00', 'Watching videos'),
(15, '2023-01-15 21:25:00', 'Social media'),
(16, '2023-01-16 20:35:00', 'Working on a document'),
(17, '2023-01-17 19:45:00', 'Coding'),
(18, '2023-01-18 18:55:00', 'Attending a virtual meeting'),
(19, '2023-01-19 17:05:00', 'Reading articles'),
(20, '2023-01-20 16:15:00', 'Online shopping'),
(21, '2023-01-21 15:25:00', 'Browsing the web'),
(22, '2023-01-22 14:35:00', 'Checking email'),
(23, '2023-01-23 13:45:00', 'Playing games'),
(24, '2023-01-24 12:55:00', 'Watching videos'),
(25, '2023-01-25 11:05:00', 'Social media'),
(26, '2023-01-26 10:15:00', 'Working on a document'),
(27, '2023-01-27 09:25:00', 'Coding'),
(28, '2023-01-28 08:35:00', 'Attending a virtual meeting'),
(29, '2023-01-29 07:45:00', 'Reading articles'),
(30, '2023-01-30 06:55:00', 'Online shopping'),
(31, '2023-01-31 05:05:00', 'Browsing the web'),
(32, '2023-02-01 04:15:00', 'Checking email'),
(33, '2023-02-02 03:25:00', 'Playing games'),
(34, '2023-02-03 02:35:00', 'Watching videos'),
(35, '2023-02-04 01:45:00', 'Social media'),
(36, '2023-02-05 00:55:00', 'Working on a document'),
(37, '2023-02-06 23:05:00', 'Coding'),
(38, '2023-02-07 22:15:00', 'Attending a virtual meeting'),
(39, '2023-02-08 21:25:00', 'Reading articles'),
(40, '2023-02-09 20:35:00', 'Online shopping'),
(41, '2023-02-10 19:45:00', 'Browsing the web'),
(42, '2023-02-11 18:55:00', 'Checking email'),
(43, '2023-02-12 18:05:00', 'Playing games'),
(44, '2023-02-13 17:15:00', 'Watching videos'),
(45, '2023-02-14 16:25:00', 'Social media'),
(46, '2023-02-15 15:35:00', 'Working on a document'),
(47, '2023-02-16 14:45:00', 'Coding'),
(48, '2023-02-17 13:55:00', 'Attending a virtual meeting'),
(49, '2023-02-18 13:05:00', 'Reading articles'),
(50, '2023-02-19 12:15:00', 'Online shopping'),
(51, '2023-02-20 11:25:00', 'Browsing the web'),
(52, '2023-02-21 10:35:00', 'Checking email'),
(53, '2023-02-22 09:45:00', 'Playing games'),
(54, '2023-02-23 08:55:00', 'Watching videos'),
(55, '2023-02-24 08:05:00', 'Social media'),
(56, '2023-02-25 07:15:00', 'Working on a document'),
(57, '2023-02-26 06:25:00', 'Coding'),
(58, '2023-02-27 05:35:00', 'Attending a virtual meeting'),
(59, '2023-02-28 04:45:00', 'Reading articles'),
(60, '2023-03-01 03:55:00', 'Online shopping'),
(61, '2023-03-02 03:05:00', 'Browsing the web'),
(62, '2023-03-03 02:15:00', 'Checking email'),
(63, '2023-03-04 01:25:00', 'Playing games'),
(64, '2023-03-05 00:35:00', 'Watching videos'),
(65, '2023-03-06 23:45:00', 'Social media'),
(66, '2023-03-07 22:55:00', 'Working on a document'),
(67, '2023-03-08 22:05:00', 'Coding'),
(68, '2023-03-09 21:15:00', 'Attending a virtual meeting'),
(69, '2023-03-10 20:25:00', 'Reading articles'),
(70, '2023-03-11 19:35:00', 'Online shopping'),
(71, '2023-03-12 18:45:00', 'Browsing the web'),
(72, '2023-03-13 17:55:00', 'Checking email'),
(73, '2023-03-14 17:05:00', 'Playing games'),
(74, '2023-03-15 16:15:00', 'Watching videos'),
(75, '2023-03-16 15:25:00', 'Social media'),
(76, '2023-03-17 15:25:00', 'Working on a document'),
(77, '2023-03-18 14:35:00', 'Coding'),
(78, '2023-03-19 13:45:00', 'Attending a virtual meeting'),
(79, '2023-03-20 12:55:00', 'Reading articles'),
(80, '2023-03-21 12:05:00', 'Online shopping'),
(81, '2023-03-22 11:15:00', 'Browsing the web'),
(82, '2023-03-23 10:25:00', 'Checking email'),
(83, '2023-03-24 09:35:00', 'Playing games'),
(84, '2023-03-25 08:45:00', 'Watching videos'),
(85, '2023-03-26 07:55:00', 'Social media'),
(86, '2023-03-27 07:05:00', 'Working on a document'),
(87, '2023-03-28 06:15:00', 'Coding'),
(88, '2023-03-29 05:25:00', 'Attending a virtual meeting'),
(89, '2023-03-30 04:35:00', 'Reading articles'),
(90, '2023-03-31 03:45:00', 'Online shopping'),
(91, '2023-04-01 02:55:00', 'Browsing the web'),
(92, '2023-04-02 02:05:00', 'Checking email'),
(93, '2023-04-03 01:15:00', 'Playing games'),
(94, '2023-04-04 00:25:00', 'Watching videos'),
(95, '2023-04-05 23:35:00', 'Social media'),
(96, '2023-04-06 22:45:00', 'Working on a document'),
(97, '2023-04-07 21:55:00', 'Coding'),
(98, '2023-04-08 21:05:00', 'Attending a virtual meeting'),
(99, '2023-04-09 20:15:00', 'Reading articles'),
(100, '2023-04-10 19:25:00', 'Online shopping');
select * from UsageLogs;
INSERT INTO Payments (UserID, SessionID, PaymentAmount, PaymentDate) VALUES
(1, 1, 50.00, '2022-01-01'),
(2, 2, 75.50, '2022-01-02'),
(3, 3, 100.00, '2022-01-03'),
(4, 4, 25.75, '2022-01-04'),
(5, 5, 60.25, '2022-01-05'),
(6, 6, 90.00, '2022-01-06'),
(7, 7, 35.50, '2022-01-07'),
(8, 8, 70.75, '2022-01-08'),
(9, 9, 55.25, '2022-01-09'),
(10, 10, 80.00, '2022-01-10'),
(11, 11, 45.50, '2022-01-11'),
(12, 12, 65.00, '2022-01-12'),
(13, 13, 95.25, '2022-01-13'),
(14, 14, 40.75, '2022-01-14'),
(15, 15, 75.00, '2022-01-15'),
(16, 16, 30.50, '2022-01-16'),
(17, 17, 85.75, '2022-01-17'),
(18, 18, 50.25, '2022-01-18'),
(19, 19, 70.00, '2022-01-19'),
(20, 20, 55.50, '2022-01-20'),
(21, 21, 60.00, '2022-01-21'),
(22, 22, 45.25, '2022-01-22'),
(23, 23, 80.75, '2022-01-23'),
(24, 24, 35.25, '2022-01-24'),
(25, 25, 90.00, '2022-01-25'),
(26, 26, 25.50, '2022-01-26'),
(27, 27, 95.75, '2022-01-27'),
(28, 28, 40.25, '2022-01-28'),
(29, 29, 75.00, '2022-01-29'),
(30, 30, 30.50, '2022-01-30'),
(31, 31, 85.75, '2022-01-31'),
(32, 32, 50.25, '2022-02-01'),
(33, 33, 70.00, '2022-02-02'),
(34, 34, 55.50, '2022-02-03'),
(35, 35, 60.00, '2022-02-04'),
(36, 36, 45.25, '2022-02-05'),
(37, 37, 80.75, '2022-02-06'),
(38, 38, 35.25, '2022-02-07'),
(39, 39, 90.00, '2022-02-08'),
(40, 40, 25.50, '2022-02-09'),
(41, 41, 95.75, '2022-02-10'),
(42, 42, 40.25, '2022-02-11'),
(43, 43, 75.00, '2022-02-12'),
(44, 44, 30.50, '2022-02-13'),
(45, 45, 85.75, '2022-02-14'),
(46, 46, 50.25, '2022-02-15'),
(47, 47, 70.00, '2022-02-16'),
(48, 48, 55.50, '2022-02-17'),
(49, 49, 60.00, '2022-02-18'),
(50, 50, 45.25, '2022-02-19'),
(51, 51, 80.75, '2022-02-20'),
(52, 52, 35.25, '2022-02-21'),
(53, 53, 90.00, '2022-02-22'),
(54, 54, 25.50, '2022-02-23'),
(55, 55, 95.75, '2022-02-24'),
(56, 56, 40.25, '2022-02-25'),
(57, 57, 75.00, '2022-02-26'),
(58, 58, 30.50, '2022-02-27'),
(59, 59, 85.75, '2022-02-28'),
(60, 60, 50.25, '2022-03-01'),
(61, 61, 70.00, '2022-03-02'),
(62, 62, 55.50, '2022-03-03'),
(63, 63, 60.00, '2022-03-04'),
(64, 64, 45.25, '2022-03-05'),
(65, 65, 80.75, '2022-03-06'),
(66, 66, 35.25, '2022-03-07'),
(67, 67, 90.00, '2022-03-08'),
(68, 68, 25.50, '2022-03-09'),
(69, 69, 95.75, '2022-03-10'),
(70, 70, 40.25, '2022-03-11'),
(71, 71, 75.00, '2022-03-12'),
(72, 72, 30.50, '2022-03-13'),
(73, 73, 85.75, '2022-03-14'),
(74, 74, 50.25, '2022-03-15'),
(75, 75, 70.00, '2022-03-16'),
(76, 76, 55.50, '2022-03-17'),
(77, 77, 60.00, '2022-03-18'),
(78, 78, 45.25, '2022-03-19'),
(79, 79, 80.75, '2022-03-20'),
(80, 80, 35.25, '2022-03-21'),
(81, 81, 90.00, '2022-03-22'),
(82, 82, 25.50, '2022-03-23'),
(83, 83, 95.75, '2022-03-24'),
(84, 84, 40.25, '2022-03-25'),
(85, 85, 75.00, '2022-03-26'),
(86, 86, 30.50, '2022-03-27'),
(87, 87, 85.75, '2022-03-28'),
(88, 88, 50.25, '2022-03-29'),
(89, 89, 70.00, '2022-03-30'),
(90, 90, 55.50, '2022-03-31'),
(91, 91, 60.00, '2022-04-01'),
(92, 92, 45.25, '2022-04-02'),
(93, 93, 80.75, '2022-04-03'),
(94, 94, 35.25, '2022-04-04'),
(95, 95, 90.00, '2022-04-05'),
(96, 96, 25.50, '2022-04-06'),
(97, 97, 95.75, '2022-04-07'),
(98, 98, 40.25, '2022-04-08'),
(99, 99, 75.00, '2022-04-09'),
(100, 100, 30.50, '2022-04-10');
select * from Payments;






