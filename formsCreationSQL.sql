-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2021 at 09:03 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forms`
DROP DATABASE IF EXISTS forms;
CREATE DATABASE forms;
--

-- --------------------------------------------------------

--
-- Table structure for table `forms_04E`
USE forms;
--

CREATE TABLE `forms_04E` (
  `Emp_Name` varchar(30) NOT NULL,
  `Incident_Date` date NOT NULL,
  `Incident_Time` time NOT NULL,
  `Incident_Location_Specific` varchar(20) NOT NULL,
  `Incident_First_Report` tinyint(1) NOT NULL,
  `First_Report_Date` date DEFAULT NULL,
  `First_Report_Time` time DEFAULT NULL,
  `First_Report_Who` varchar(20) DEFAULT NULL,
  `How_Incident_Occurred_Description` varchar(200) NOT NULL,
  `Incident_Witnesses` varchar(30) NOT NULL,
  `Body_Parts_Injured` varchar(50) NOT NULL,
  `Medical_Attention_on_Incident_Date` tinyint(1) NOT NULL,
  `Where_Treatment` varchar(50) DEFAULT NULL,
  `Injured_Part_Previously` tinyint(1) NOT NULL,
  `Described_Prev_Injury` varchar(200) DEFAULT NULL,
  `Where_Prev_Injury_Treated` varchar(30) DEFAULT NULL,
  `Emp_Signature` varchar(30) NOT NULL,
  `Emp_Signed_Date` date NOT NULL,
  `Notification_Date` date DEFAULT NULL,
  `Who_Received` varchar(30) DEFAULT NULL,
  `Receivee_Signed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE forms_04e
ALTER Emp_Signature SET DEFAULT 0;

ALTER TABLE forms_04e
ALTER Receivee_Signed SET DEFAULT 0;
--
-- Dumping data for table `forms_04E`
--

INSERT INTO `forms_04E` (`Emp_Name`, `Incident_Date`, `Incident_Time`, `Incident_Location_Specific`, `Incident_First_Report`, `First_Report_Date`, `First_Report_Time`, `First_Report_Who`, `How_Incident_Occurred_Description`, `Incident_Witnesses`, `Body_Parts_Injured`, `Medical_Attention_on_Incident_Date`, `Where_Treatment`, `Injured_Part_Previously`, `Described_Prev_Injury`, `Where_Prev_Injury_Treated`, `Emp_Signature`, `Emp_Signed_Date`, `Notification_Date`, `Who_Received`, `Receivee_Signed`) VALUES
('Maurise Postle', '2021-03-03', '22:46:00', 'tortor', 1, '2021-01-17', '22:43:00', 'Ceil', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', 'Antoinette', 'gravida', 1, 'Haas', 1, NULL, 'Parkway', 'Callean', '2021-02-19', '2021-04-01', 'Maurise', 0),
('Joscelin Carlesi', '2021-04-20', '06:30:00', 'vitae', 0, '2021-03-26', '06:53:00', 'Malva', 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', 'Deane', 'rhoncus', 1, 'Summerview', 1, NULL, 'Parkway', 'Lidia', '2021-05-31', '2021-06-17', 'Joscelin', 0),
('Hernando Miliffe', '2020-12-30', '01:04:00', 'euismod', 0, '2020-11-19', '01:12:00', 'Jordan', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', 'Austine', 'praesent', 1, 'Esker', 1, NULL, 'Place', 'Corie', '2021-05-10', '2021-06-08', 'Hernando', 0),
('Brandon Boutellier', '2020-12-18', '11:40:00', 'posuere', 0, '2021-07-20', '13:32:00', 'Fleur', 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', 'Nessa', 'tortor', 0, 'Green', 0, NULL, 'Pass', 'Duke', '2021-09-18', '2021-07-27', 'Brandon', 1),
('Claudine Zorro', '2020-11-18', '04:14:00', 'vestibulum', 1, '2021-06-23', '17:14:00', 'Jeremy', 'lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', 'Saraann', 'elementum', 1, 'Center', 0, NULL, 'Way', 'Alayne', '2021-04-13', '2021-06-13', 'Claudine', 0),
('Dorthea Besant', '2021-08-22', '03:01:00', 'lectus', 1, '2021-06-09', '11:06:00', 'Reta', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', 'Mamie', 'dui', 1, 'Spaight', 0, NULL, 'Crossing', 'Riccardo', '2020-11-21', '2021-09-06', 'Dorthea', 1),
('Townsend Syseland', '2021-05-13', '12:51:00', 'cubilia', 0, '2021-09-17', '08:31:00', 'Brennen', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi', 'Sarajane', 'nunc', 1, 'Superior', 1, NULL, 'Terrace', 'Valencia', '2020-12-03', '2021-06-02', 'Townsend', 1),
('Jamil Bisley', '2021-08-20', '20:24:00', 'tincidunt', 0, '2021-04-08', '02:21:00', 'Candide', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio', 'Hadria', 'donec', 1, 'Carpenter', 0, NULL, 'Parkway', 'Ferdy', '2021-02-12', '2021-04-14', 'Jamil', 1),
('Justino Shortcliffe', '2021-05-30', '06:31:00', 'non', 1, '2020-12-02', '10:33:00', 'Dalia', 'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', 'Emerson', 'fusce', 0, 'Pierstorff', 1, NULL, 'Drive', 'Rollo', '2021-07-16', '2021-05-17', 'Justino', 0),
('Bayard Hullock', '2021-01-15', '09:58:00', 'quam', 1, '2021-10-27', '05:50:00', 'Budd', 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', 'Fair', 'habitasse', 1, 'Holy Cross', 0, NULL, 'Trail', 'Porter', '2021-07-07', '2021-05-22', 'Bayard', 0);

-- --------------------------------------------------------

--
-- Table structure for table `form_04_forms`
--

CREATE TABLE `form_04_forms` (
  `Form04ID` int NOT NULL,
  `Agency_Name` varchar(50) NOT NULL,
  `Todays_Date` date NOT NULL,
  `Date_of_Incident` date NOT NULL,
  `Time_of_Incident` time NOT NULL,
  `Form_Completer_Name` varchar(50) NOT NULL,
  `Form_Completer_Title` varchar(30) NOT NULL,
  `Form_Completer_Phone` varchar(15) NOT NULL,
  `Form_Completer_Email` varchar(100) NOT NULL,
  `How_Incident_Occurred_Short` varchar(50) NOT NULL,
  `Incident_Location_Name` varchar(50) NOT NULL,
  `Incident_Location_Address` varchar(30) DEFAULT NULL,
  `Incident_Location_City` varchar(20) DEFAULT NULL,
  `Incident_Location_State` varchar(15) DEFAULT NULL,
  `Incident_Location_Zip` varchar(10) DEFAULT NULL,
  `Incident_Location_Specific` varchar(30) NOT NULL,
  `Incident_Primary_Location` varchar(30) NOT NULL,
  `Employer_FEIN` varchar(20) NOT NULL,
  `Employee_Miss_3_Consecutive_Days` tinyint(1) DEFAULT NULL,
  `What_Employee_Doing` varchar(50) NOT NULL,
  `How_Incident_Occurred_Detailed` varchar(200) NOT NULL,
  `Emp_Last_Name` varchar(20) NOT NULL,
  `Emp_First_Name` varchar(20) NOT NULL,
  `Emp_Address` varchar(30) NOT NULL,
  `Emp_City` varchar(20) NOT NULL,
  `Emp_State` varchar(20) NOT NULL,
  `Emp_Zip` varchar(10) NOT NULL,
  `Emp_Home_Phone` varchar(15) DEFAULT NULL,
  `Emp_Work_Phone` varchar(15) DEFAULT NULL,
  `Emp_Cell_Phone` varchar(15) DEFAULT NULL,
  `Emp_Best_Contact_Number` varchar(15) NOT NULL,
  `Emp_Email` varchar(30) NOT NULL,
  `Emp_Social` varchar(12) NOT NULL,
  `Emp_DoB` date NOT NULL,
  `Emp_Gender` varchar(10) NOT NULL,
  `Emp_Marital_Status` varchar(20) NOT NULL,
  `Emp_Num_Dependents` int NOT NULL,
  `Emp_Speak_English` tinyint(1) NOT NULL,
  `Emp_Avg_Week_Wage` int NOT NULL,
  `Emp_Job` varchar(20) NOT NULL,
  `Emp_Employ_Status` varchar(20) NOT NULL,
  `Emp_Date_Hired` date NOT NULL,
  `Emp_Tenure` varchar(10) NOT NULL,
  `Emp_Time_Began_Work_Incident` time NOT NULL,
  `Last_Date_Worked_Prior_Incident` date DEFAULT NULL,
  `Emp_Incident_Date_Death` date DEFAULT NULL,
  `Incident_Occur_on_Premices` tinyint(1) NOT NULL,
  `Injury_or_Illness` varchar(8) NOT NULL,
  `Description_of_Injury_Illness` varchar(200) NOT NULL,
  `Object_Substance_of_Harm` varchar(20) DEFAULT NULL,
  `Emp_Seek_Medical_Attention` tinyint(1) DEFAULT NULL,
  `Treated_Away_From_Worksite` tinyint(1) DEFAULT NULL,
  `Treated_in_ER` tinyint(1) DEFAULT NULL,
  `Hospitalized_Overnight` tinyint(1) DEFAULT NULL,
  `Doc_Name` varchar(30) NOT NULL,
  `Doc_Address` varchar(30) NOT NULL,
  `Doc_City` varchar(20) NOT NULL,
  `Doc_State` varchar(20) NOT NULL,
  `Doc_Zip` varchar(12) NOT NULL,
  `Doc_Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `form_04_forms`
--

INSERT INTO `form_04_forms` (`Form04ID`, `Agency_Name`, `Todays_Date`, `Date_of_Incident`, `Time_of_Incident`, `Form_Completer_Name`, `Form_Completer_Title`, `Form_Completer_Phone`, `Form_Completer_Email`, `How_Incident_Occurred_Short`, `Incident_Location_Name`, `Incident_Location_Address`, `Incident_Location_City`, `Incident_Location_State`, `Incident_Location_Zip`, `Incident_Location_Specific`, `Incident_Primary_Location`, `Employer_FEIN`, `Employee_Miss_3_Consecutive_Days`, `What_Employee_Doing`, `How_Incident_Occurred_Detailed`, `Emp_Last_Name`, `Emp_First_Name`, `Emp_Address`, `Emp_City`, `Emp_State`, `Emp_Zip`, `Emp_Home_Phone`, `Emp_Work_Phone`, `Emp_Cell_Phone`, `Emp_Best_Contact_Number`, `Emp_Email`, `Emp_Social`, `Emp_DoB`, `Emp_Gender`, `Emp_Marital_Status`, `Emp_Num_Dependents`, `Emp_Speak_English`, `Emp_Avg_Week_Wage`, `Emp_Job`, `Emp_Employ_Status`, `Emp_Date_Hired`, `Emp_Tenure`, `Emp_Time_Began_Work_Incident`, `Last_Date_Worked_Prior_Incident`, `Emp_Incident_Date_Death`, `Incident_Occur_on_Premices`, `Injury_or_Illness`, `Description_of_Injury_Illness`, `Object_Substance_of_Harm`, `Emp_Seek_Medical_Attention`, `Treated_Away_From_Worksite`, `Treated_in_ER`, `Hospitalized_Overnight`, `Doc_Name`, `Doc_Address`, `Doc_City`, `Doc_State`, `Doc_Zip`, `Doc_Phone`) VALUES
(1, 'Konklux', '2021-05-12', '2020-11-11', '21:04:00', 'Kingsly Metschke', 'Recruiter', '617-842-4981', 'kmetschke0@google.com.br', 'in sagittis', 'Butternut', '96135 Heffernan Way', 'Boston', 'Massachusetts', '02124', 'urna ut', 'eleifend', '46', 0, 'curabitur', 'suscipit a feugiat', 'Metschke', 'Sinclair', '06317 Fordem Plaza', 'Winston Salem', 'North Carolina', '27157', '336-832-6308', '941-941-2001', '316-778-8290', '916-969-8366', 'kmetschke0@stanford.edu', '538013004', '2020-12-03', 'Male', 'felis', 2, 1, 27, 'hac', 'fringilla', '2021-07-03', 'nulla', '20:36:00', '2021-02-08', '2021-02-20', 0, 'erat', 'nulla tempus vivamus in felis', 'sed', 1, 1, 0, 0, 'Kingsly', '74717 Alpine Trail', 'North Port', 'Florida', '34290', '773-140-5344'),
(2, 'Zathin', '2021-02-02', '2021-04-08', '08:43:00', 'Catie Buckles', 'Web Developer II', '626-862-0624', 'cbuckles0@tiny.cc', 'feugiat non pretium quis lectus', 'Johnson', '93 Pond Way', 'Pasadena', 'California', '91125', 'eu', 'malesuada in', '45', 0, 'turpis', 'sit amet', 'Buckles', 'Tammie', '22 Kings Drive', 'New Orleans', 'Louisiana', '70179', '504-906-5847', '862-878-0638', '406-442-3842', '216-287-8459', 'cbuckles0@cam.ac.uk', '288695606', '2021-06-24', 'Male', 'vel', 4, 1, 17, 'quam', 'ante ipsum', '2021-06-18', 'sit', '17:03:00', '2021-03-23', '2021-09-16', 1, 'neque', 'enim blandit mi in porttitor', 'ac', 1, 1, 1, 0, 'Catie', '52 Lindbergh Circle', 'Newark', 'New Jersey', '07195', '704-965-7756'),
(3, 'Zathin', '2021-08-07', '2021-09-16', '02:56:00', 'Pris Darycott', 'Computer Systems Analyst III', '973-258-2892', 'pdarycott1@altervista.org', 'eget elit', 'Elka', '95265 Brickson Park Center', 'Paterson', 'New Jersey', '07505', 'sed', 'id sapien', '90', 0, 'eu tincidunt in', 'purus sit', 'Darycott', 'Ad', '8062 Spaight Point', 'Brea', 'California', '92822', '818-379-7248', '760-972-8578', '408-614-8901', '862-803-0301', 'pdarycott1@nba.com', '351822247', '2021-08-22', 'Female', 'morbi', 0, 0, 20, 'ac', 'ultricies', '2020-12-16', 'iaculis', '01:57:00', '2021-08-06', '2021-05-11', 1, 'nam', 'in', 'in', 1, 1, 1, 1, 'Pris', '9507 Sunbrook Junction', 'Los Angeles', 'California', '90040', '208-309-8998'),
(4, 'Alphazap', '2020-11-19', '2021-04-22', '02:14:00', 'Osmund Fredi', 'Analyst Programmer', '843-196-5382', 'ofredi2@europa.eu', 'odio curabitur convallis', 'Holmberg', '266 Burrows Plaza', 'Myrtle Beach', 'South Carolina', '29579', 'nulla sed', 'sed ante', '26', 0, 'augue aliquam erat', 'nibh', 'Fredi', 'Pier', '31709 Calypso Place', 'Ogden', 'Utah', '84403', '801-985-6242', '512-572-3541', '410-893-8236', '915-782-2717', 'ofredi2@mayoclinic.com', '230476870', '2021-06-04', 'Male', 'cras', 3, 0, 28, 'id', 'nisi eu', '2021-01-28', 'nulla', '13:09:00', '2021-10-22', '2021-10-03', 0, 'orci', 'integer a nibh in quis', 'donec', 0, 1, 0, 0, 'Osmund', '3 Heath Parkway', 'Austin', 'Texas', '78764', '217-177-5784'),
(5, 'Opela', '2021-03-15', '2021-03-09', '01:39:00', 'Perren Tilmouth', 'Accounting Assistant I', '405-222-7411', 'ptilmouth3@twitter.com', 'nibh', 'Grayhawk', '2 Anderson Road', 'Oklahoma City', 'Oklahoma', '73124', 'lacinia aenean', 'eget', '37', 1, 'at velit', 'habitasse platea dictumst aliquam', 'Tilmouth', 'Thacher', '1772 Kingsford Terrace', 'Washington', 'District of Columbia', '20067', '202-285-7835', '248-617-4314', '336-504-7456', '843-730-5316', 'ptilmouth3@census.gov', '894007991', '2021-02-05', 'Male', 'curae mauris', 0, 0, 15, 'ante', 'amet cursus', '2021-01-17', 'ligula', '22:56:00', '2021-02-10', '2021-04-14', 0, 'aliquet', 'condimentum id luctus nec', 'morbi', 1, 0, 0, 0, 'Perren', '8404 Vernon Crossing', 'Troy', 'Michigan', '48098', '301-912-7276'),
(6, 'Bamity', '2021-02-24', '2020-11-26', '12:07:00', 'Ximenes Weinham', 'Accounting Assistant IV', '407-453-4473', 'xweinham4@soundcloud.com', 'turpis donec posuere', 'Brentwood', '8 Mitchell Way', 'Orlando', 'Florida', '32830', 'cursus', 'orci', '53', 1, 'sem duis aliquam', 'sed tristique in tempus sit', 'Weinham', 'Claudine', '28 Northview Crossing', 'New York City', 'New York', '10184', '212-453-2355', '216-614-6547', '714-235-5205', '412-688-8269', 'xweinham4@virginia.edu', '805006584', '2021-10-12', 'Male', 'habitasse', 3, 1, 30, 'pretium', 'sit', '2020-12-08', 'justo', '15:00:00', '2021-10-09', '2021-06-14', 1, 'id', 'nullam sit', 'ligula', 0, 0, 0, 1, 'Ximenes', '3 Bunting Center', 'Cleveland', 'Ohio', '44105', '203-676-9972'),
(7, 'Flexidy', '2020-11-19', '2021-01-23', '13:29:00', 'Frazier Bestman', 'Environmental Tech', '605-125-9266', 'fbestman5@networkadvertising.org', 'dui proin leo odio porttitor', 'Bellgrove', '249 Linden Plaza', 'Sioux Falls', 'South Dakota', '57110', 'orci', 'elit', '76', 0, 'ultrices phasellus id', 'quisque', 'Bestman', 'Crawford', '83585 Northland Street', 'Spokane', 'Washington', '99260', '509-394-7179', '415-603-1917', '702-936-4511', '210-376-0891', 'fbestman5@nyu.edu', '147509698', '2021-06-29', 'Female', 'sodales', 3, 0, 22, 'justo', 'nisl nunc', '2021-04-12', 'dapibus', '12:52:00', '2021-07-10', '2021-08-17', 0, 'pretium', 'donec vitae', 'in', 1, 1, 0, 0, 'Frazier', '37858 Dakota Avenue', 'San Francisco', 'California', '94177', '702-167-0281'),
(8, 'Toughjoyfax', '2021-08-28', '2021-03-19', '13:44:00', 'Darda Rawlings', 'Account Representative III', '918-120-7871', 'drawlings0@marriott.com', 'porttitor id consequat in', 'Melby', '573 Heath Alley', 'Tulsa', 'Oklahoma', '74184', 'viverra', 'aliquet ultrices', '95', 0, 'eget tempus vel pede', 'fusce', 'Rawlings', 'Ahmad', '4191 Sloan Crossing', 'Tulsa', 'Oklahoma', '74133', '918-855-6434', '309-657-9488', '989-501-7910', '504-108-1808', 'drawlings0@archive.org', '919649144', '2021-03-06', 'Male', 'sed', 3, 1, 25, 'sapien', 'nulla', '2021-08-24', 'aenean', '01:22:00', '2021-01-25', '2021-04-22', 1, 'lkctb', 'justo', 'lobortis', 1, 0, 1, 0, 'Darda', '41 Scoville Trail', 'Peoria', 'Illinois', '61651', '203-361-8451'),
(9, 'Pannier', '2021-07-09', '2021-06-27', '16:43:00', 'Stormi Gainsford', 'Technical Writer', '714-316-7972', 'sgainsford1@indiegogo.com', 'odio condimentum', 'Esch', '0242 Ridgeview Plaza', 'Anaheim', 'California', '92825', 'bibendum felis', 'molestie lorem', '22', 0, 'nulla tempus vivamus in', 'lacinia', 'Gainsford', 'Galvan', '3985 Marcy Drive', 'San Francisco', 'California', '94159', '415-459-2101', '352-526-9105', '678-474-3684', '757-209-5265', 'sgainsford1@smh.com.au', '519421789', '2021-04-12', 'Female', 'elit', 4, 0, 24, 'eu', 'parturient', '2021-07-26', 'quis', '15:51:00', '2020-12-25', '2021-07-09', 0, 'fdwyf', 'vitae', 'amet', 0, 0, 1, 0, 'Stormi', '35 Fairview Terrace', 'Gainesville', 'Florida', '32605', '714-951-5172'),
(10, 'Voltsillam', '2021-10-03', '2020-12-17', '13:51:00', 'Rayner Clace', 'Software Test Engineer II', '202-352-5241', 'rclace2@google.de', 'dapibus', 'Sutteridge', '93 New Castle Trail', 'Alexandria', 'Virginia', '22309', 'pellentesque', 'libero ut', '62', 0, 'pellentesque', 'urna ut tellus nulla ut', 'Clace', 'Waly', '0 Oakridge Park', 'Canton', 'Ohio', '44710', '330-568-6410', '915-237-0937', '559-105-0652', '801-100-6607', 'rclace2@cisco.com', '365793645', '2021-01-10', 'Female', 'in hac', 3, 0, 29, 'integer', 'amet turpis', '2021-04-27', 'aliquam', '06:48:00', '2021-02-11', '2021-07-03', 1, 'bddxo', 'ac leo', 'congue', 1, 0, 1, 0, 'Rayner', '4360 Village Terrace', 'El Paso', 'Texas', '88569', '303-708-5076'),
(11, 'Temp', '2020-12-14', '2021-02-25', '15:45:00', 'Candra Cale', 'VP Product Management', '863-320-5351', 'ccale3@theguardian.com', 'neque vestibulum', 'Randy', '23520 Bellgrove Junction', 'Winter Haven', 'Florida', '33884', 'cursus', 'cubilia', '34', 0, 'amet sem', 'eget', 'Cale', 'Dorthy', '642 Arizona Trail', 'Lima', 'Ohio', '45807', '419-220-9549', '210-966-2530', '213-298-0027', '585-966-4276', 'ccale3@comcast.net', '597168891', '2021-01-09', 'Female', 'blandit lacinia', 5, 1, 25, 'ultrices', 'fusce', '2021-08-18', 'primis', '05:11:00', '2021-07-21', '2020-11-05', 0, 'vyygg', 'donec odio justo sollicitudin ut', 'id', 1, 1, 1, 1, 'Candra', '6396 Eggendart Terrace', 'San Antonio', 'Texas', '78285', '330-927-2383'),
(12, 'Pannier', '2020-12-05', '2021-01-09', '22:08:00', 'Allix Eydel', 'Programmer III', '303-634-2036', 'aeydel4@springer.com', 'et eros', 'American', '9684 Southridge Pass', 'Aurora', 'Colorado', '80045', 'pretium', 'dui nec', '6', 1, 'tincidunt lacus at velit vivamus', 'lobortis vel dapibus at', 'Eydel', 'Chastity', '560 Corscot Lane', 'Shreveport', 'Louisiana', '71161', '318-283-0650', '626-449-2828', '480-899-9930', '650-163-6402', 'aeydel4@51.la', '112866034', '2020-11-23', 'Male', 'ornare imperdiet', 4, 1, 16, 'bibendum', 'vel', '2021-02-05', 'hac', '04:12:00', '2021-03-14', '2021-07-04', 0, 'koqck', 'odio cras', 'ut', 0, 0, 0, 1, 'Allix', '1029 Browning Drive', 'Pasadena', 'California', '91117', '229-256-4516'),
(13, 'Ventosanzap', '2021-09-22', '2021-01-30', '22:12:00', 'Sib Minchinden', 'Mechanical Systems Engineer', '937-737-2786', 'sminchinden5@google.com', 'massa tempor convallis nulla', 'Di Loreto', '8 Londonderry Center', 'Springfield', 'Ohio', '45505', 'eu', 'in', '31', 1, 'diam nam', 'id nulla ultrices aliquet', 'Minchinden', 'Valentina', '85993 Southridge Pass', 'Wichita', 'Kansas', '67236', '316-386-8385', '339-650-6132', '713-494-8086', '210-681-9626', 'sminchinden5@amazon.co.uk', '496034009', '2020-11-30', 'Male', 'ac est', 3, 1, 20, 'nunc', 'ultrices vel', '2021-09-26', 'metus', '14:40:00', '2020-11-17', '2021-09-05', 1, 'dzacg', 'nascetur ridiculus mus etiam vel', 'turpis', 0, 1, 1, 0, 'Sib', '32528 Brown Alley', 'Woburn', 'Massachusetts', '01813', '804-881-5667'),
(14, 'Trippledex', '2021-01-23', '2021-04-08', '02:22:00', 'Nikolaos Cuberley', 'Recruiting Manager', '217-122-5552', 'ncuberley6@fda.gov', 'a suscipit nulla', 'Summit', '1 Westend Park', 'Springfield', 'Illinois', '62718', 'quisque erat', 'sem', '4', 1, 'arcu', 'ultrices phasellus id', 'Cuberley', 'Valeria', '5 Banding Pass', 'Memphis', 'Tennessee', '38104', '901-278-7128', '530-252-7684', '423-525-1187', '361-578-5651', 'ncuberley6@cargocollective.com', '866995038', '2020-11-18', 'Female', 'donec diam', 4, 0, 19, 'libero', 'aliquam sit', '2021-03-23', 'in', '23:08:00', '2021-01-20', '2021-08-20', 0, 'auyod', 'penatibus et magnis dis', 'arcu', 1, 0, 1, 0, 'Nikolaos', '31177 Pond Street', 'Sacramento', 'California', '95833', '850-136-4013'),
(15, 'Voltsillam', '2021-04-07', '2021-10-03', '19:11:00', 'Odele O\'Rodane', 'Executive Secretary', '571-485-3285', 'oorodane7@thetimes.co.uk', 'amet justo', 'Texas', '69 Walton Court', 'Fairfax', 'Virginia', '22036', 'at', 'sit amet', '43', 0, 'nulla nunc purus phasellus in', 'aliquet pulvinar sed', 'O\'Rodane', 'Jemima', '4 Moland Trail', 'Port Charlotte', 'Florida', '33954', '941-646-0159', '937-510-5718', '785-866-6535', '239-601-7793', 'oorodane7@cam.ac.uk', '886757499', '2021-03-01', 'Female', 'eget eros', 1, 1, 28, 'maecenas', 'at', '2020-11-12', 'quisque', '15:37:00', '2021-10-01', '2021-01-16', 1, 'ymbln', 'natoque penatibus et magnis dis', 'nisl', 0, 0, 1, 1, 'Odele', '6 Talisman Park', 'Dayton', 'Ohio', '45432', '315-657-3718'),
(16, 'Quo Lux', '2021-04-28', '2021-10-15', '06:01:00', 'Robby Perview', 'Sales Associate', '407-822-8963', 'rperview8@de.vu', 'integer tincidunt ante vel', 'Tony', '84 Crownhardt Alley', 'Orlando', 'Florida', '32891', 'luctus nec', 'quisque ut', '53', 1, 'aliquet maecenas leo odio', 'a ipsum', 'Perview', 'Bridgette', '757 Green Ridge Parkway', 'Pittsburgh', 'Pennsylvania', '15240', '412-402-7617', '361-133-3522', '713-856-2873', '407-589-5044', 'rperview8@slideshare.net', '410480667', '2021-07-13', 'Female', 'sit', 4, 1, 26, 'rhoncus', 'sem praesent', '2021-02-01', 'rutrum', '23:56:00', '2021-06-12', '2021-10-04', 1, 'iwhrw', 'primis in', 'erat', 1, 0, 1, 1, 'Robby', '27954 Prentice Trail', 'Corpus Christi', 'Texas', '78415', '812-489-2163'),
(17, 'Otcom', '2020-12-07', '2021-10-13', '12:38:00', 'Florencia Alekseicik', 'Administrative Assistant I', '719-282-7727', 'falekseicik9@xing.com', 'nisi nam ultrices libero', 'Everett', '0 Crowley Alley', 'Colorado Springs', 'Colorado', '80940', 'luctus', 'quis tortor', '81', 0, 'vestibulum aliquet ultrices erat', 'volutpat convallis', 'Alekseicik', 'Leigha', '94103 Merrick Point', 'Brooklyn', 'New York', '11231', '917-322-5331', '704-102-6414', '502-804-8703', '813-550-8280', 'falekseicik9@technorati.com', '479418030', '2021-03-29', 'Male', 'justo etiam', 5, 0, 28, 'sed', 'amet', '2021-04-30', 'faucibus', '22:07:00', '2021-10-10', '2021-06-22', 1, 'qavbi', 'luctus rutrum nulla', 'tincidunt', 1, 0, 0, 0, 'Florencia', '099 Kim Center', 'Charlotte', 'North Carolina', '28242', '716-393-4399');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_04_forms`
--
ALTER TABLE `form_04_forms`
  ADD PRIMARY KEY (`Form04ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_04_forms`
--
ALTER TABLE `form_04_forms`
  MODIFY `Form04ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE `forms_04E` ADD `form04EID` INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`form04EID`);
