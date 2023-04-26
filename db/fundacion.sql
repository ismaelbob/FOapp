-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 09:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fundacion`
--

-- --------------------------------------------------------

--
-- Table structure for table `aporte`
--

CREATE TABLE `aporte` (
  `idaporte` int(11) NOT NULL,
  `idbeneficiario` varchar(4) NOT NULL,
  `meses` varchar(150) NOT NULL,
  `monto` int(11) NOT NULL,
  `gestion` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiario`
--

CREATE TABLE `beneficiario` (
  `idbeneficiario` varchar(4) NOT NULL,
  `paterno` varchar(15) NOT NULL,
  `materno` varchar(15) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `fnacimiento` date NOT NULL,
  `hogar` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `beneficiario`
--

INSERT INTO `beneficiario` (`idbeneficiario`, `paterno`, `materno`, `nombres`, `sexo`, `fnacimiento`, `hogar`, `estado`) VALUES
('0007', 'Ticlla', 'Rojas', 'Belinda', 'F', '2003-05-30', 207, 'activo'),
('0009', 'Huallpa', 'Ajnota', 'Ana Rocio', 'F', '2003-10-21', 97, 'activo'),
('0010', 'Ramos', 'Huallpa', 'Gonzalo', 'M', '2001-04-01', 186, 'activo'),
('0012', 'Mendoza', 'Chura', 'Noelia', 'F', '2002-07-31', 161, 'activo'),
('0013', 'Salvador', 'Rodriguez', 'Ademar Brandon', 'M', '2003-04-17', 199, 'activo'),
('0014', 'Condori', 'Lampa', 'Abigail', 'F', '2004-04-02', 58, 'activo'),
('0022', 'Quintana', 'Mora', 'Wilder', 'M', '2003-04-02', 181, 'activo'),
('0023', 'Huallpa', 'Toroya', 'Brayan', 'M', '2004-04-02', 99, 'activo'),
('0024', 'Chocamani', 'Cayzana', 'Henry Dilan', 'M', '2002-10-09', 39, 'activo'),
('0028', 'Lia', 'Gaspar', 'Elmer', 'M', '2003-07-30', 123, 'activo'),
('0029', 'Chocamani', 'Pizarro', 'Daysi', 'F', '2003-10-14', 42, 'activo'),
('0032', 'Yucra', 'Jalacori', 'Maria Isabel', 'F', '2002-04-12', 230, 'activo'),
('0034', 'Mendoza', 'Mamani', 'Elmer', 'M', '2003-12-03', 160, 'activo'),
('0040', 'Choque', 'Falzo', 'Wilson', 'M', '2002-09-25', 51, 'activo'),
('0041', 'Castillo', 'Cahuaya', 'Miguel Angel', 'M', '2002-01-22', 33, 'activo'),
('0045', 'Choque', 'Puri', 'Adalid', 'M', '2002-02-24', 47, 'activo'),
('0046', 'Lopez', 'Carata', 'Ronald', 'M', '2004-02-03', 131, 'activo'),
('0047', 'Villanueva', 'Taquichiri', 'Wilson Ronald', 'M', '2003-09-06', 220, 'activo'),
('0049', 'Vasquez', 'Gonzales', 'Olga', 'F', '2003-11-24', 216, 'activo'),
('0051', 'Huanca', 'Choque', 'Lizeth Aide', 'F', '2002-05-12', 103, 'activo'),
('0052', 'Huanca', 'Choque', 'Aide Bianca', 'F', '2002-05-12', 103, 'activo'),
('0056', 'Mamani', 'Torres', 'Nilda', 'F', '2002-08-08', 140, 'activo'),
('0057', 'Mamani', 'Torres', 'Edson', 'M', '2005-07-18', 140, 'activo'),
('0058', 'Gutierrez', 'Falzo', 'Noemi Zaida', 'F', '2005-07-12', 93, 'activo'),
('0059', 'Paco', 'Callapa', 'Cesia Raquel', 'F', '2003-11-24', 172, 'activo'),
('0060', 'Pacco', 'Callapa', 'David', 'M', '2001-10-28', 172, 'activo'),
('0062', 'Fernandez', 'Chiquipa', 'Maria', 'F', '2000-12-22', 77, 'activo'),
('0066', 'Villca', 'Vega', 'Juan Gabriel', 'M', '2002-08-28', 223, 'activo'),
('0071', 'Flores', 'Flores', 'Joel Christian', 'M', '2005-07-30', 82, 'activo'),
('0072', 'Flores', 'Huarachi', 'Hilda Ines', 'F', '2000-08-25', 83, 'activo'),
('0073', 'Flores', 'Huarachi', 'Zaida', 'F', '2004-04-09', 83, 'activo'),
('0075', 'Matias', 'Ojeda', 'Anthony', 'M', '2004-02-14', 158, 'activo'),
('0083', 'Calle', 'Pancata', 'Joel', 'M', '2003-01-15', 27, 'activo'),
('0086', 'Jancko', 'Gutierres', 'David Elias', 'M', '2001-11-30', 114, 'activo'),
('0087', 'Salazar', 'Huanco', 'Flor Maria', 'F', '2005-09-05', 197, 'activo'),
('0096', 'Chocamani', 'Huallpa', 'Jhonatan Junior', 'M', '2002-11-21', 41, 'activo'),
('0108', 'Martinez', 'Fabrica', 'Franklin', 'M', '2002-11-07', 155, 'activo'),
('0109', 'Calizaya', 'Lampa', 'Jacqueline', 'F', '2002-10-25', 24, 'activo'),
('0111', 'Mamani', 'Olivera', 'Orlando', 'M', '2004-05-20', 148, 'activo'),
('0112', 'Choquerive', 'Huallpa', 'Kevin Mario', 'M', '2004-05-03', 52, 'activo'),
('0114', 'Ticollano', 'Canaviri', 'Paola Banesa', 'F', '2004-02-06', 208, 'activo'),
('0118', 'Calle', 'Suturi', 'Carolina Diana', 'F', '2003-07-21', 26, 'activo'),
('0121', 'Torrico', 'Rojas', 'Litzie Noelia', 'F', '2003-12-09', 212, 'activo'),
('0123', 'Caceres', 'Tacuri', 'Edwin', 'M', '2000-08-10', 22, 'inactivo'),
('0134', 'Lopez', 'Mamani', 'Edith Betsabe', 'F', '2003-09-29', 129, 'activo'),
('0136', 'Escobar', 'Cabrera', 'Brayan', 'M', '2005-12-16', 71, 'activo'),
('0137', 'Vallejos', 'Choque', 'Rebeca', 'F', '2005-10-10', 213, 'activo'),
('0138', 'Acho', 'Poma', 'Karina', 'F', '2005-12-22', 3, 'activo'),
('0142', 'Villanueva', 'Taquichiri', 'Luis Imar', 'M', '2003-05-12', 219, 'activo'),
('0143', 'Taquichiri', 'Janco', 'Elizabeth', 'F', '2002-11-25', 206, 'activo'),
('0148', 'Calle', 'Suturi', 'Maria Elena', 'F', '2001-06-19', 26, 'activo'),
('0149', 'Ticollano', 'Canaviri', 'Beimar Sandro', 'M', '2006-03-04', 208, 'activo'),
('0151', 'Morales', 'Alvarez', 'Limbert', 'M', '2005-04-29', 164, 'activo'),
('0154', 'Choque', 'Mamani', 'Camila', 'F', '2005-11-07', 44, 'activo'),
('0157', 'Manchani', 'Ferrel', 'Roxana', 'F', '2006-05-11', 151, 'activo'),
('0167', 'Choquerive', 'Huallpa', 'Elvis', 'M', '2002-09-01', 52, 'activo'),
('0173', 'Huallpa', 'Lia', 'Jhoseline', 'F', '2004-04-16', 100, 'activo'),
('0175', 'Carata', 'Mamani', 'Joel', 'M', '2003-03-09', 29, 'activo'),
('0176', 'Aguilario', 'Marca', 'Magaly', 'F', '2006-01-04', 6, 'activo'),
('0178', 'Laime', 'Jalacori', 'Josue', 'M', '2003-01-05', 119, 'activo'),
('0179', 'Cruz', 'Coria', 'Jhuliana Lizeth', 'F', '2003-10-20', 68, 'activo'),
('0183', 'Pintado', 'Aguayo', 'Jhoselin', 'F', '2005-07-14', 179, 'activo'),
('0184', 'Pintado', 'Aguayo', 'Rivaldo', 'M', '2002-10-08', 179, 'activo'),
('0188', 'Choque', 'Huallpa', 'Edson', 'M', '2001-12-18', 43, 'activo'),
('0189', 'Choque', 'Huallpa', 'Efrain', 'M', '2004-02-19', 43, 'activo'),
('0192', 'Paulo', 'Condori', 'Franz', 'M', '2005-12-27', 177, 'activo'),
('0193', 'Colque', 'Aycahuara', 'Noemi', 'F', '2006-06-11', 57, 'activo'),
('0194', 'Condori', 'Choque', 'Luis Isaac', 'M', '2006-08-01', 60, 'activo'),
('0195', 'Condori', 'Choque', 'Analeyda', 'F', '2005-03-16', 60, 'activo'),
('0197', 'Bautista', 'Condori', 'Milton', 'M', '2003-02-19', 20, 'activo'),
('0198', 'Bautista', 'Condori', 'Elena', 'F', '2004-12-20', 20, 'activo'),
('0205', 'Huallpa', 'Toroya', 'Wilson', 'M', '2001-07-01', 99, 'activo'),
('0208', 'Sanchez', 'Condori', 'John Gary', 'M', '2005-12-19', 200, 'activo'),
('0209', 'Jancko', 'Gutierres', 'Andrea', 'F', '2005-11-30', 114, 'activo'),
('0212', 'Ramos', 'Huallpa', 'Ruben', 'M', '2003-03-30', 186, 'activo'),
('0215', 'Calizaya', 'Zeballos', 'Ronal Jhimmy', 'M', '2005-01-18', 25, 'activo'),
('0216', 'Calizaya', 'Zeballos', 'Edson', 'M', '2003-07-30', 25, 'activo'),
('0217', 'Mamani', '', 'Maria Eugenia', 'F', '2003-08-14', 145, 'activo'),
('0218', 'Chinche', 'Ajhuacho', 'Joel Ivan', 'M', '2006-06-18', 37, 'activo'),
('0219', 'Chinche', 'Ajhuacho', 'Daniel', 'M', '2004-05-14', 37, 'activo'),
('0222', 'Mamani', 'Cayo', 'Daniela', 'F', '2003-04-30', 138, 'activo'),
('0225', 'Choque', 'Puri', 'Kevin Deymar', 'M', '2004-11-28', 47, 'activo'),
('0231', 'Flores', 'Huarachi', 'Jose David', 'M', '2006-10-23', 83, 'activo'),
('0234', 'Crus', 'Rios', 'Jhon Rider', 'M', '2005-04-05', 67, 'activo'),
('0235', 'Huallpa', 'Chocamani', 'Diego', 'M', '2001-03-15', 98, 'activo'),
('0236', 'Huallpa', 'Toroya', 'Ismael', 'M', '2004-03-29', 96, 'activo'),
('0247', 'Torres', 'Omerique', 'Olivia', 'F', '2005-11-04', 211, 'activo'),
('0248', 'Garnica', 'Rodiguez', 'Bladimir', 'M', '2005-11-20', 86, 'activo'),
('0249', 'Salazar', 'Huanco', 'Diego', 'M', '2008-04-16', 197, 'activo'),
('0250', 'Laime', 'Lezano', 'Marcos', 'M', '2006-07-07', 120, 'activo'),
('0251', 'Laime', 'Lezano', 'Alfredo', 'M', '2003-01-23', 120, 'activo'),
('0252', 'Laime', 'Lezano', 'Alberto', 'M', '2004-11-30', 120, 'activo'),
('0259', 'Vallejos', 'Choque', 'Ever', 'M', '2007-02-18', 213, 'activo'),
('0261', 'Romero', 'Maita', 'Gabriel', 'M', '2007-04-15', 195, 'activo'),
('0262', 'Romero', 'Maita', 'Osvaldo', 'M', '2002-07-02', 195, 'activo'),
('0263', 'Cruz', 'Ortiz', 'Carlos Daniel', 'M', '2006-05-24', 65, 'activo'),
('0265', 'Lopez', 'Carata', 'Nestor', 'M', '2002-08-14', 131, 'activo'),
('0268', 'Gomez', 'Estalla', 'Alexander', 'M', '2003-09-14', 88, 'activo'),
('0270', 'Cruz', 'Gutierrez', 'Laura Karen', 'F', '2004-03-05', 69, 'activo'),
('0271', 'Mamani', 'Fernandez', 'Sonia', 'F', '2003-01-31', 149, 'activo'),
('0272', 'Mamani', 'Fernandez', 'Ruben', 'M', '2005-08-04', 149, 'activo'),
('0274', 'Garcí­a', 'Rodriguez', 'Andi', 'M', '2004-09-27', 84, 'activo'),
('0275', 'Orellana', 'Quispe', 'Darla', 'F', '2004-04-11', 168, 'activo'),
('0276', 'Orellana', 'Quispe', 'Daner', 'M', '2004-04-11', 168, 'activo'),
('0277', 'Alavi', 'Felipe', 'Luz Dayana', 'F', '2007-04-02', 10, 'activo'),
('0278', 'Paulo', 'Condori', 'Jhon', 'M', '2007-10-12', 177, 'activo'),
('0282', 'Mamani', 'Janco', 'Mirian', 'F', '2005-11-05', 146, 'activo'),
('0283', 'Villca', 'Zunagua', 'Nadia Ajhelen', 'F', '2005-10-02', 225, 'activo'),
('0286', 'Gomez', 'Estalla', 'Ismael', 'M', '2007-04-17', 88, 'activo'),
('0287', 'Choque', 'Mamani', 'Grover', 'M', '2007-07-19', 44, 'activo'),
('0288', 'Castro', 'Hinojosa', 'Nataly', 'F', '2005-05-23', 34, 'activo'),
('0290', 'Mamani', 'Huarachi', 'Betzabeth', 'F', '2004-06-06', 135, 'activo'),
('0291', 'Ayra', 'Flores', 'Sarai', 'F', '2007-12-02', 17, 'activo'),
('0293', 'Visalla', 'Antonio', 'Claudia', 'F', '2004-01-21', 226, 'activo'),
('0295', 'Apaza', 'Mamani', 'Anahi Carolina', 'F', '2004-09-18', 15, 'activo'),
('0296', 'Choque', 'Serrano', 'Josué', 'M', '2005-03-13', 46, 'activo'),
('0297', 'Pacheco', 'Cassia', 'Naydelin', 'F', '2007-10-07', 174, 'activo'),
('0300', 'Ignacio', 'Flores', 'Jhonatan', 'M', '2004-05-27', 110, 'activo'),
('0301', 'Salinas', 'Mendoza', 'Diego Gabriel', 'M', '2006-09-26', 198, 'activo'),
('0303', 'Mamani', 'Pizarro', 'Kevin', 'M', '2003-02-07', 139, 'activo'),
('0304', 'Villca', 'Hinojosa', 'Gabriel Jhonatan', 'M', '2006-01-09', 222, 'activo'),
('0305', 'Chocamani', 'Marcos', 'Javier', 'M', '2007-12-08', 40, 'activo'),
('0306', 'Chocamani', 'Marcos', 'Mijael', 'M', '2005-07-02', 40, 'activo'),
('0308', 'Huacaña', 'Mancilla', 'Erik Samuel', 'M', '2007-03-01', 95, 'activo'),
('0309', 'Grabiel', 'Condori', 'Dania', 'F', '2004-11-18', 90, 'activo'),
('0310', 'Calle', 'Pancata', 'Mariluz Helen', 'F', '2006-11-09', 27, 'activo'),
('0312', 'Cruz', 'Tito', 'Deysi', 'F', '2004-06-08', 66, 'activo'),
('0314', 'Yapura', 'Estalla', 'Moises', 'M', '2004-05-17', 228, 'activo'),
('0315', 'Nina', 'Crispin', 'Angel Elias', 'M', '2005-05-19', 166, 'activo'),
('0316', 'Nina', 'Crispin', 'Juan Esteban', 'M', '2004-02-13', 166, 'activo'),
('0317', 'Mendoza', 'Mamani', 'Elizabeth', 'F', '2005-09-30', 160, 'activo'),
('0318', 'Mamani', 'Pizarro', 'Eddy', 'M', '2007-03-23', 139, 'activo'),
('0321', 'Mamani', 'Albares', 'Obed Hernan', 'M', '2005-09-07', 147, 'activo'),
('0322', 'Huallpa', 'Toroya', 'Alex', 'M', '2006-01-22', 96, 'activo'),
('0325', 'Pacheco', 'Cassia', 'Jhoel', 'M', '2009-01-03', 174, 'activo'),
('0327', 'Laime', 'Jalacori', 'Leonel', 'M', '2006-04-10', 119, 'activo'),
('0328', 'Martinez', 'Mondocorre', 'Danner', 'M', '2006-01-26', 154, 'activo'),
('0332', 'Quispe', 'Mamani', 'Angelina Jhuliza', 'F', '2007-05-15', 134, 'activo'),
('0333', 'Aguayo', 'Laime', 'Israel Isaias', 'M', '2007-10-19', 4, 'activo'),
('0335', 'Izquierdo', 'Ilacio', 'Anderson', 'M', '2008-08-07', 112, 'activo'),
('0336', 'Arratia', 'Falzo', 'Isidro', 'M', '2003-01-15', 16, 'activo'),
('0337', 'Arratia', 'Falzo', 'Marcelina', 'F', '2006-09-18', 16, 'activo'),
('0338', 'Garcia', 'Rodriguez', 'Camila', 'F', '2008-01-24', 84, 'activo'),
('0340', 'Janco', 'Roque', 'Jesica', 'F', '2007-08-17', 115, 'activo'),
('0343', 'Alcocer', 'Mamani', 'Wilmer', 'M', '2005-01-24', 11, 'activo'),
('0344', 'Alcocer', 'Mamani', 'Lizeth', 'F', '2006-12-21', 11, 'activo'),
('0347', 'Cardozo', 'Chumacero', 'Jheison', 'M', '2005-02-16', 32, 'activo'),
('0349', 'Rosas', 'Camacho', 'Rosmery', 'F', '2003-09-12', 196, 'activo'),
('0350', 'Rosas', 'Camacho', 'Arminda', 'F', '2006-06-29', 196, 'activo'),
('0351', 'Rosas', 'Camacho', 'Reina', 'F', '2008-02-04', 196, 'activo'),
('0353', 'Marcos', 'Fernandez', 'Kevin', 'M', '2006-02-01', 153, 'activo'),
('0354', 'Yapura', 'Estalla', 'Adelaida', 'F', '2006-12-02', 228, 'activo'),
('0355', 'Jaldin', 'Rosas', 'Jhonny', 'M', '2008-06-18', 113, 'activo'),
('0356', 'Jaldin', 'Rosas', 'Victoria', 'F', '2004-06-16', 113, 'activo'),
('0360', 'Jaldin', 'Rosas', 'Benito', 'M', '2009-10-26', 113, 'activo'),
('0362', 'Llanque', 'Mamani', 'David', 'M', '2003-01-31', 127, 'activo'),
('0363', 'Rojas', 'Aguilar', 'Luis Fernando', 'M', '2004-05-23', 193, 'activo'),
('0364', 'Martinez', 'Fabrica', 'Katherine Lizeth', 'F', '2000-06-27', 155, 'inactivo'),
('0365', 'Janco', 'Caceres', 'Ruth Abigail', 'F', '2002-07-06', 116, 'activo'),
('0366', 'Janco', 'Caceres', 'Joel Brandon', 'M', '2005-07-29', 116, 'activo'),
('0369', 'Rodriguez', 'Herrera', 'Daner Bryan', 'M', '2007-08-29', 190, 'activo'),
('0370', 'Geronimo', 'Marin', 'Leydi Alison', 'F', '2008-09-15', 87, 'activo'),
('0371', 'Balderrama', 'Aguayo', 'Karen Nataly', 'F', '2010-06-11', 18, 'activo'),
('0372', 'Veizaga', 'Flores', 'Anahi', 'F', '2010-12-30', 217, 'activo'),
('0373', 'Canedo', 'Tomas', 'Juan Emmanuel', 'M', '2008-07-16', 90, 'activo'),
('0374', 'Chambi', 'Flores', 'Crispin', 'M', '2010-05-06', 35, 'activo'),
('0375', 'Mamani', 'Pintado', 'Jhon Cesar', 'M', '2010-12-17', 137, 'activo'),
('0376', 'Suyo', 'Canaviri', 'Jhonatan', 'M', '2010-01-03', 205, 'activo'),
('0377', 'Lampa', 'Flores', 'Ivan', 'M', '2009-02-17', 122, 'activo'),
('0378', 'Luizaga', 'Molina', 'Claudia Judith', 'F', '2010-03-16', 132, 'activo'),
('0379', 'Janco', 'Caceres', 'Maday Cenaida', 'F', '2010-07-23', 116, 'activo'),
('0380', 'Torrez', 'Llanque', 'Jose Nelvin', 'M', '2009-09-07', 210, 'activo'),
('0381', 'Choque', 'Garcia', 'Haziel Rene', 'M', '2010-06-06', 45, 'activo'),
('0383', 'Ibarra', 'Aguilar', 'Ever', 'M', '2010-02-16', 108, 'activo'),
('0385', 'Ovando', '', 'Jose Fabritzio', 'M', '2010-06-06', 171, 'activo'),
('0386', 'Flores', 'Jesus', 'Ana Maria', 'F', '2010-09-09', 79, 'activo'),
('0387', 'Mamani', 'Copali', 'Jhon Isaias', 'M', '2010-11-27', 141, 'activo'),
('0388', 'Flores', 'Flores', 'Melody', 'F', '2007-04-21', 82, 'activo'),
('0389', 'Toroya', 'Mamani', 'Yessica', 'F', '2010-06-17', 209, 'activo'),
('0391', 'Flores', 'Caero', 'Edwin', 'M', '2001-01-03', 81, 'inactivo'),
('0392', 'Aguilar', 'Ticona', 'Ali Keyla', 'F', '2008-07-04', 5, 'activo'),
('0393', 'Rojas', 'Mamani', 'Selinda Esmeralda', 'F', '2007-12-10', 194, 'activo'),
('0394', 'Olivares', 'Yergo', 'Julio Cesar', 'M', '2009-08-06', 167, 'activo'),
('0395', 'Olivares', 'Yergo', 'Sebastian', 'M', '2011-04-23', 167, 'activo'),
('0396', 'Rodriguez', 'Geronimo', 'Tamer Gustavo', 'M', '2009-09-22', 191, 'activo'),
('0397', 'Gutierrez', 'Iquize', 'Diego', 'M', '2007-03-10', 91, 'activo'),
('0398', 'Otalora', 'Reyes', 'Elizabeth', 'F', '2010-11-04', 169, 'activo'),
('0401', 'Quisbert', 'Toledo', 'Keyli Mishel', 'F', '2011-03-08', 182, 'activo'),
('0403', 'Arratia', 'Falzo', 'Cristian', 'M', '2009-05-11', 16, 'activo'),
('0404', 'Rodriguez', 'Herrera', 'Ghilber Leonil', 'M', '2009-02-16', 190, 'activo'),
('0405', 'Rodriguez', 'Geronimo', 'Ruth Cielo', 'F', '2011-04-14', 191, 'activo'),
('0406', 'Ibarra', 'Aguilar', 'Brayan', 'M', '2007-11-19', 108, 'activo'),
('0407', 'Aguayo', 'Laime', 'Veronica', 'F', '2010-12-30', 4, 'activo'),
('0409', 'Jorge', '', 'Sergio', 'M', '2003-04-02', 118, 'activo'),
('0410', 'Torrez', 'Llanque', 'Pilar Paola', 'F', '2012-04-12', 210, 'activo'),
('0412', 'Choque', 'Serrano', 'Ivan', 'M', '2010-09-23', 46, 'activo'),
('0413', 'Condori', 'Choque', 'David Abraham', 'M', '2011-01-27', 60, 'activo'),
('0414', 'Llampa', 'Choque', 'Jose Luis', 'M', '2010-07-13', 126, 'activo'),
('0415', 'Paulo', '', 'Sarahi Gissel', 'F', '2012-11-08', 178, 'activo'),
('0416', 'Villca', 'Hinojosa', 'Danny Rodrigo', 'M', '2012-12-04', 222, 'activo'),
('0418', 'Cordova', 'Villarroel', 'Celma', 'F', '2011-05-25', 63, 'activo'),
('0419', 'Huanca', 'Alanes', 'Jhon Alex', 'M', '2011-10-11', 102, 'activo'),
('0420', 'Huacaña', 'Mancilla', 'Raquel Betzy', 'F', '2011-09-25', 95, 'activo'),
('0422', 'Pacheco', 'Nina', 'Jherson', 'M', '2011-03-11', 173, 'activo'),
('0423', 'Luizaga', 'Molina', 'Lizeth Lesly', 'F', '2011-09-09', 132, 'activo'),
('0424', 'Martinez', 'Mondocorre', 'Romario', 'M', '2012-06-06', 154, 'activo'),
('0425', 'Taquichiri', 'Janco', 'Evelin', 'F', '2012-04-12', 206, 'activo'),
('0426', 'Fernandez', 'Vicente', 'Jherson', 'M', '2011-09-06', 78, 'activo'),
('0427', 'Garcia', 'Vicente', 'Ayelen', 'F', '2013-08-12', 85, 'activo'),
('0428', 'Villarpando', 'Rios', 'Jhuliet', 'F', '2010-03-13', 221, 'activo'),
('0429', 'Ticlla', 'Rojas', 'Aldemar Alexander', 'M', '2012-02-27', 207, 'activo'),
('0431', 'Huanca', 'Huanca', 'Angela', 'F', '2010-07-27', 201, 'activo'),
('0432', 'Garnica', 'Rodrigez', 'Ruth Esther', 'F', '2012-09-19', 86, 'activo'),
('0433', 'Vasquez', 'Taquichiri', 'Cristian', 'M', '2012-09-13', 215, 'activo'),
('0434', 'Vasquez', 'Taquichiri', 'Edson', 'M', '2011-01-09', 215, 'activo'),
('0435', 'Isla', 'Salgueiro', 'Limber', 'M', '2012-02-26', 111, 'activo'),
('0436', 'Barron', 'Salgueiro', 'Rodrigo', 'M', '2010-05-28', 111, 'activo'),
('0437', 'Mamani', 'Jimenez', 'Jhassmin', 'F', '2010-10-08', 142, 'activo'),
('0438', 'Jimenez', 'Veramendi', 'Brenda Briyith', 'F', '2013-04-23', 117, 'activo'),
('0439', 'Quispe', 'Caceres', 'Maria Esther', 'F', '2012-02-16', 183, 'activo'),
('0440', 'Reyes', 'Choque', 'Darlenne Lucia', 'F', '2013-04-28', 187, 'activo'),
('0441', 'Cardenas', 'Estrada', 'Dafnee Madisson', 'F', '2010-11-05', 31, 'activo'),
('0442', 'Mamani', 'Huanca', 'Anaflori', 'F', '2010-10-26', 133, 'activo'),
('0443', 'Huanca', 'Hinojosa', 'Nayeli', 'F', '2010-12-14', 104, 'activo'),
('0444', 'Veizaga', 'Flores', 'Limberth', 'M', '2011-08-30', 217, 'activo'),
('0445', 'Chambi', 'Flores', 'Eugenia', 'F', '2011-12-07', 35, 'activo'),
('0446', 'Cruz', 'Chambi', 'Yandil Camila', 'F', '2012-12-13', 70, 'activo'),
('0447', 'Andia', 'Caceres', 'Maria Fernanda', 'F', '2012-02-16', 14, 'activo'),
('0448', 'Mendoza', 'Mamani', 'Josue', 'M', '2010-03-29', 160, 'activo'),
('0449', 'Ramos', 'Rocha', 'Oshin', 'F', '2010-01-21', 185, 'activo'),
('0451', 'Yave', 'Taquichiri', 'Angela', 'F', '2010-11-11', 229, 'activo'),
('0452', 'Almanza', 'Huanca', 'Caleb', 'M', '2011-08-31', 12, 'activo'),
('0454', 'Quintana', '', 'Israel', 'M', '2012-12-27', 180, 'activo'),
('0456', 'Cardozo', 'Chumacero', 'Sheyla Mishel', 'F', '2010-01-24', 32, 'activo'),
('0457', 'Ortiz', '', 'Abigail', 'F', '2011-08-23', 65, 'activo'),
('0458', 'Choque', 'Flores', 'Maribel', 'F', '2014-06-12', 48, 'activo'),
('0459', 'Hinojosa', 'Mamani', 'Ramiro', 'M', '2014-10-11', 94, 'activo'),
('0460', 'Hinojosa', 'Mamani', 'Gilberto', 'M', '2011-10-23', 94, 'activo'),
('0461', 'Mamani', 'Mamani', 'Sayranara', 'F', '2012-08-10', 150, 'activo'),
('0462', 'Mamani', 'Mamani', 'Wandanara', 'F', '2012-08-10', 150, 'activo'),
('0463', 'Cantuta', '', 'Ismael', 'M', '2014-08-21', 28, 'activo'),
('0464', 'Villca', 'Quelali', 'Matias William', 'M', '2015-01-07', 224, 'activo'),
('0465', 'Gomez', 'Huarachi', 'Pauliñho Ronald', 'M', '2014-12-20', 89, 'activo'),
('0466', 'Colque', 'Aycahuara', 'Jhoel', 'M', '2014-08-08', 57, 'activo'),
('0467', 'Rodriguez', 'Huarachi', 'Yuvinka Mayra', 'F', '2015-01-10', 105, 'activo'),
('0468', 'Choquerive', 'Huallpa', 'Dayanara', 'F', '2015-03-05', 52, 'activo'),
('0469', 'Leon', 'Rivas', 'Jhosua Emanuel', 'M', '2014-02-21', 188, 'activo'),
('0470', 'Chura', 'Aguilar', 'Ronald', 'M', '2015-01-18', 53, 'activo'),
('0471', 'Torrez', 'Llanque', 'Anahi Aurora', 'F', '2014-09-16', 210, 'activo'),
('0472', 'Bustos', 'Cespedes', 'Santiago Elias', 'M', '2014-11-24', 21, 'activo'),
('0473', 'Alvarez', 'Limachi', 'Jhandi Eunin', 'F', '2014-11-16', 13, 'activo'),
('0474', 'Gomez', 'Estalla', 'Saul Gustavo', 'M', '2014-04-01', 88, 'activo'),
('0475', 'Flores', 'Flores', 'Briana Arlet', 'F', '2015-03-03', 80, 'activo'),
('0476', 'Fernandez', 'Simon', 'Jhonatan', 'M', '2014-05-17', 75, 'activo'),
('0478', 'Barrionuevo', 'Lopez', 'Jesus Brayan', 'M', '2014-07-06', 19, 'activo'),
('0479', 'Calizaya', 'Arroyo', 'Guido Adiel', 'M', '2014-08-07', 23, 'activo'),
('0481', 'Rodriguez', 'Geronimo', 'Jheimy', 'F', '2014-05-01', 191, 'activo'),
('0482', 'Viscarra', 'Mamani', 'Israel Maiquel', 'M', '2013-05-09', 227, 'activo'),
('0483', 'Marzana', 'Mollo', 'Claudia', 'F', '2006-05-20', 157, 'activo'),
('0484', 'Choque', 'Puri', 'Jhasmin Eliana', 'F', '2014-11-28', 47, 'activo'),
('0485', 'Fernandez', 'Vicente', 'Nicol', 'F', '2015-05-05', 78, 'activo'),
('0486', 'Sanga', 'Huanca', 'Cristian', 'M', '2015-02-20', 201, 'activo'),
('0487', 'Lopez', 'Rodriguez', 'Alonso Mateo', 'M', '2013-08-03', 130, 'activo'),
('0488', 'Garnica', 'Rodriguez', 'Alyn Anabel', 'F', '2015-01-11', 86, 'activo'),
('0489', 'Vargas', 'Mamani', 'Luis Emanuel', 'M', '2014-03-28', 214, 'activo'),
('0490', 'Quispe', 'Torrez', 'Saul Jhondris', 'M', '2014-12-12', 184, 'activo'),
('0491', 'Hurtado', 'Ticona', 'Jhon Carlos', 'M', '2014-09-19', 106, 'activo'),
('0492', 'Chocamani', 'Calizaya', 'Keyla', 'F', '2012-02-08', 38, 'activo'),
('0493', 'Marcos', 'Fernandez', 'Isaac Andres', 'M', '2013-12-13', 153, 'activo'),
('0496', 'Mendoza', 'Alanis', 'Noemi Any', 'F', '2015-01-31', 162, 'activo'),
('0497', 'Alanes', 'Mendoza', 'Mishel Damaris', 'F', '2015-04-06', 8, 'activo'),
('0498', 'Choque', 'Aguilar', 'Ulises', 'M', '2015-04-06', 50, 'activo'),
('0500', 'Escobar', '', 'Joel', 'M', '2001-11-01', 72, 'activo'),
('0501', 'Huanca', 'Huanca', 'Abigail Caterin', 'F', '2009-04-28', 201, 'activo'),
('0502', 'Choque', 'Vicente', 'Ever Tiago', 'M', '2008-09-24', 49, 'activo'),
('0503', 'Huallpa', 'Lia', 'Abdias', 'M', '2009-03-27', 100, 'activo'),
('0504', 'Olivares', 'Yergo', 'Diego Armando', 'M', '2007-02-04', 167, 'activo'),
('0505', 'Flores', 'Flores', 'Randy', 'M', '2011-10-31', 82, 'activo'),
('0506', 'Siquita', 'Laime', 'Yolanda', 'F', '2012-12-15', 204, 'activo'),
('0507', 'Huallpa', 'Toroya', 'Jose', 'M', '2008-05-08', 99, 'activo'),
('0508', 'Lia', 'Rivera', 'Megan', 'F', '2014-03-23', 124, 'activo'),
('0509', 'Montaño', 'Yucra', 'Pablo', 'M', '2013-11-30', 163, 'activo'),
('0510', 'Lopez', 'Yucra', 'Dayana Belen', 'F', '2007-11-12', 163, 'activo'),
('0511', 'Colque', 'Rodriguez', 'Rosalia', 'F', '2007-07-09', 130, 'activo'),
('0512', 'Colque', 'Rodriguez', 'Marco Antonio', 'M', '2009-06-05', 130, 'activo'),
('0513', 'Colque', 'Aycahuara', 'David', 'M', '2012-03-11', 57, 'activo'),
('0514', 'Chocamani', 'Calizaya', 'Heidy', 'F', '2009-03-18', 38, 'activo'),
('0515', 'Choque', 'Flores', 'Gladys', 'F', '2009-06-22', 48, 'activo'),
('0516', 'Choque', 'Flores', 'Luis', 'M', '2007-10-11', 48, 'activo'),
('0517', 'Acapa', 'Perez', 'Lizeth Nataly', 'F', '2012-03-01', 1, 'activo'),
('0518', 'Llampa', 'Choque', 'Alvaro', 'M', '2008-06-28', 126, 'activo'),
('0519', 'Fernandez', 'Choque', 'Kevin', 'M', '2007-10-31', 76, 'activo'),
('0521', 'Fernandez', 'Yucra', 'Jhoel Adrian', 'M', '2011-09-13', 74, 'activo'),
('0522', 'Alanes', 'Mendoza', 'Jhon Anderson', 'M', '2013-10-16', 8, 'activo'),
('0523', 'Heredia', 'Estrada', 'Ashley', 'F', '2007-07-22', 31, 'activo'),
('0524', 'Paco', 'Mirabal', 'Yesica', 'F', '2012-03-19', 175, 'activo'),
('0525', 'Gomez', 'Huarachi', 'Neymar Junior', 'M', '2011-05-22', 89, 'activo'),
('0526', 'Gutierrez', 'Tumiri', 'Maria Luz', 'F', '2008-12-03', 92, 'activo'),
('0527', 'Cossio', 'Gutierrez', 'Jhodith Ayelen', 'F', '2013-12-16', 64, 'activo'),
('0528', 'Cossio', 'Gutierrez', 'Luis Fernando', 'M', '2011-02-20', 64, 'activo'),
('0529', 'Colque', 'Cocha', 'Jhoel', 'M', '2014-06-23', 56, 'activo'),
('0530', 'Alvarez', 'Limachi', 'Richard Israel', 'M', '2006-11-23', 13, 'activo'),
('0531', 'Alvarez', 'Limachi', 'Soledad Oriana', 'F', '2009-12-08', 13, 'activo'),
('0532', 'Limachi', 'Alvarez', 'Jhessica', 'F', '2007-05-08', 125, 'activo'),
('0533', 'Huanca', 'Alanes', 'Mari Liz', 'F', '2009-07-13', 102, 'activo'),
('0534', 'Limachi', 'ALvarez', 'Jherson', 'M', '2014-09-14', 125, 'activo'),
('0535', 'Contreras', 'Limachi', 'Jhoan', 'M', '2015-03-09', 62, 'activo'),
('0536', 'Fernandez', 'Simon', 'Naida', 'F', '2010-12-30', 75, 'activo'),
('0537', 'Calizaya', 'Arroyo', 'Deyvid Daniel', 'M', '2013-02-25', 23, 'activo'),
('0538', 'Condori', 'Sipe', 'Cristian', 'M', '2010-03-14', 59, 'activo'),
('0539', 'Villca', 'Quelali', 'Victor Hugo', 'M', '2012-05-17', 224, 'activo'),
('0540', 'Condori', 'Sipe', 'Vladimir Ariel', 'M', '2013-05-14', 59, 'activo'),
('0542', 'Medrano', 'Vasquez', 'Wilber', 'M', '2006-10-18', 159, 'activo'),
('0543', 'Medrano', 'Vasquez', 'Brayan', 'M', '2011-07-08', 159, 'activo'),
('0544', 'Mamani', 'Estrada', 'Jhamil Jherko', 'M', '2013-08-23', 73, 'activo'),
('0545', 'Aquino', 'Lopez', 'Melani Nicol', 'F', '2009-01-23', 19, 'activo'),
('0546', 'Chambi', 'Medina', 'Leonel Edilson', 'M', '2008-05-10', 36, 'activo'),
('0547', 'Chambi', 'Medina', 'Alex Jhunior', 'M', '2010-09-26', 36, 'activo'),
('0548', 'Vasquez', 'Taquichiri', 'Jhonny', 'M', '2008-11-29', 215, 'activo'),
('0549', 'Chambi', 'Flores', 'Wilder', 'M', '2013-12-23', 35, 'activo'),
('0551', 'Lampa', 'Grabiel', 'Evelyn', 'F', '2010-08-01', 121, 'activo'),
('0552', 'Choque', 'Garcia', 'Benjhamin', 'M', '2013-12-13', 45, 'activo'),
('0553', 'Mamani', 'Jimenez', 'Ismael', 'M', '2009-02-04', 142, 'activo'),
('0555', 'Mamani', 'Torrez', 'Brenda', 'F', '2011-02-15', 136, 'activo'),
('0556', 'Mamani', 'Torrez', 'Luis Fernando', 'M', '2009-08-20', 136, 'activo'),
('0557', 'Cruz', 'Chambi', 'Dylan Lucas', 'M', '2009-07-27', 70, 'activo'),
('0558', 'Taquichiri', 'Janco', 'Maria Elena', 'F', '2008-11-02', 206, 'activo'),
('0559', 'Mancilla', 'Choque', 'Rodrigo', 'M', '2009-09-16', 152, 'activo'),
('0560', 'Mamani', 'Rios', 'Madeley', 'F', '2009-02-20', 144, 'activo'),
('0561', 'Rojas', 'Mamani', 'Jhanet', 'F', '2004-01-21', 192, 'activo'),
('0562', 'Rojas', 'Mamani', 'Noelia', 'F', '2006-01-25', 192, 'activo'),
('0563', 'Vela', 'Moisa', 'Benita', 'F', '2012-12-17', 218, 'activo'),
('0564', 'Lopez', 'Carata', 'Wilson Leonel', 'M', '2012-11-29', 131, 'activo'),
('0565', 'Simon', 'Jacinto', 'Jesus Moises', 'M', '2016-08-30', 203, 'activo'),
('0566', 'Ibarra', 'Lopez', 'Leonidas Santiago', 'M', '2016-07-11', 109, 'activo'),
('0567', 'Carbajal', 'Llalli', 'Maydelin', 'F', '2015-11-27', 30, 'activo'),
('0568', 'Llanque', 'Aguilar', 'Hans Jefferson', 'M', '2017-01-30', 128, 'activo'),
('0570', 'Rivera', 'Choque', 'Beatriz', 'F', '2016-01-06', 189, 'activo'),
('0571', 'Acarapi', 'Maldonado', 'Jhon Andy', 'M', '2015-11-04', 2, 'activo'),
('0572', 'Colque', 'Kally', 'Dinaldo', 'M', '2016-10-17', 55, 'activo'),
('0573', 'Huanaco', 'Choque', 'Micaela', 'F', '2015-05-28', 101, 'activo'),
('0574', 'Colque', 'Ayca', 'Alexander', 'M', '2013-11-21', 54, 'activo'),
('0575', 'Serrano', 'Uturunco', 'Daniela', 'F', '2003-12-12', 202, 'activo'),
('0576', 'Morales', 'Choque', 'Jheriel Caleb', 'M', '2015-10-31', 165, 'activo'),
('0577', 'Paulo', 'Ramos', 'Ariana Aylen', 'F', '2018-08-12', 176, 'activo'),
('0578', 'Ayra', 'Flores', 'Thalia', 'F', '2016-03-24', 17, 'activo'),
('0579', 'Ayra', 'Flores', 'Thais', 'F', '2016-03-24', 17, 'activo'),
('0580', 'Huanca', 'Alanes', 'Ruth Jelen', 'F', '2017-12-21', 102, 'activo'),
('0581', 'Condori', 'Mollo', 'Neithan Adrian', 'M', '2017-12-21', 61, 'activo'),
('0582', 'Ajhuacho', '', 'Gael Jeremy', 'M', '2017-03-01', 7, 'activo'),
('0583', 'Martinez', 'Llampa', 'Miguel Angel', 'M', '2017-07-02', 156, 'activo'),
('0584', 'Gutierrez', 'Iquize', 'Damaris', 'F', '2015-06-12', 91, 'activo'),
('0585', 'Otalora', 'Ramirez', 'Yuliana', 'F', '2017-12-21', 170, 'activo'),
('0586', 'Mamani', 'Martinez', 'Luz Esperanza', 'F', '2016-05-24', 143, 'activo'),
('0587', 'Carbajal', 'Llalli', 'Leydi', 'F', '2013-06-01', 30, 'activo'),
('0588', 'Romero', 'Maita', 'Karen Aurora', 'F', '2015-09-08', 195, 'activo'),
('0589', 'Mendoza', 'Alanis', 'Jheny Nayda', 'F', '2016-12-07', 162, 'activo'),
('0590', 'Alarcon', 'Mendez', 'Ana', 'F', '2015-05-10', 9, 'activo'),
('0591', 'Hurtado', 'Estrada', 'Matilda Cielo', 'F', '2004-04-23', 107, 'activo'),
('0592', 'Hurtado', 'Estrada', 'Noelia', 'F', '2006-11-11', 107, 'activo'),
('0593', 'Colque', 'Choque', 'Nadia', 'F', '2005-01-01', 231, 'activo');

-- --------------------------------------------------------

--
-- Table structure for table `beneficio`
--

CREATE TABLE `beneficio` (
  `idbeneficio` int(11) NOT NULL,
  `idbeneficiario` varchar(4) NOT NULL,
  `tipo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `gestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cobro`
--

CREATE TABLE `cobro` (
  `idbeneficiario` varchar(4) NOT NULL,
  `gestion` int(11) NOT NULL,
  `enero` varchar(1) NOT NULL,
  `febrero` varchar(1) NOT NULL,
  `marzo` varchar(1) NOT NULL,
  `abril` varchar(1) NOT NULL,
  `mayo` varchar(1) NOT NULL,
  `junio` varchar(1) NOT NULL,
  `julio` varchar(1) NOT NULL,
  `agosto` varchar(1) NOT NULL,
  `septiembre` varchar(1) NOT NULL,
  `octubre` varchar(1) NOT NULL,
  `noviembre` varchar(1) NOT NULL,
  `diciembre` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cobro`
--

INSERT INTO `cobro` (`idbeneficiario`, `gestion`, `enero`, `febrero`, `marzo`, `abril`, `mayo`, `junio`, `julio`, `agosto`, `septiembre`, `octubre`, `noviembre`, `diciembre`) VALUES
('0007', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0009', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0010', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0012', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0013', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0014', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0022', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0023', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0024', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0028', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0029', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0032', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0034', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0040', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0041', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0045', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0046', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0047', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0049', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0051', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0052', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0056', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0057', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0058', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0059', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0060', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0062', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0066', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0071', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0072', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0073', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0075', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0083', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0086', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0087', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0096', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0108', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0109', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0111', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0112', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0114', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0118', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0121', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0123', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0134', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0136', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0137', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0138', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0142', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0143', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0148', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0149', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0151', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0154', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0157', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0167', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0173', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0175', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0176', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0178', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0179', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0183', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0184', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0188', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0189', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0192', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0193', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0194', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0195', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0197', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0198', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0205', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0208', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0209', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0212', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0215', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0216', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0217', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0218', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0219', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0222', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0225', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0231', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0234', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0235', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0236', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0247', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0248', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0249', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0250', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0251', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0252', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0259', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0261', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0262', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0263', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0265', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0268', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0270', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0271', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0272', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0274', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0275', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0276', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0277', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0278', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0282', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0283', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0286', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0287', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0288', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0290', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0291', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0293', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0295', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0296', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0297', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0300', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0301', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0303', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0304', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0305', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0306', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0308', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0309', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0310', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0312', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0314', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0315', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0316', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0317', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0318', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0321', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0322', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0325', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0327', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0328', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0332', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0333', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0335', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0336', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0337', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0338', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0340', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0343', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0344', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0347', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0349', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0350', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0351', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0353', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0354', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0355', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0356', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0360', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0362', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0363', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0364', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0365', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0366', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0369', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0370', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0371', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0372', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0373', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0374', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0375', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0376', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0377', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0378', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0379', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0380', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0381', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0383', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0385', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0386', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0387', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0388', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0389', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0391', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0392', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0393', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0394', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0395', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0396', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0397', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0398', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0401', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0403', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0404', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0405', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0406', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0407', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0409', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0410', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0412', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0413', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0414', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0415', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0416', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0418', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0419', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0420', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0422', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0423', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0424', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0425', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0426', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0427', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0428', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0429', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0431', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0432', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0433', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0434', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0435', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0436', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0437', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0438', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0439', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0440', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0441', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0442', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0443', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0444', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0445', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0446', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0447', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0448', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0449', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0451', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0452', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0454', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0456', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0457', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0458', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0459', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0460', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0461', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0462', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0463', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0464', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0465', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0466', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0467', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0468', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0469', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0470', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0471', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0472', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0473', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0474', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0475', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0476', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0478', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0479', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0481', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0482', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0483', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0484', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0485', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0486', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0487', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0488', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0489', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0490', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0491', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0492', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0493', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0496', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0497', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0498', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0500', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0501', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0502', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0503', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0504', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0505', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0506', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0507', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0508', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0509', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0510', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0511', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0512', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0513', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0514', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0515', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0516', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0517', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0518', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0519', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0521', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0522', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0523', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0524', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0525', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0526', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0527', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0528', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0529', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0530', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0531', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0532', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0533', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0534', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0535', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0536', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0537', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0538', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0539', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0540', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0542', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0543', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0544', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0545', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0546', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0547', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0548', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0549', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0551', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0552', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0553', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0555', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0556', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0557', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0558', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0559', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0560', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0561', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0562', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0563', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0564', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0565', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0566', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0567', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0568', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0570', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0571', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0572', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0573', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0574', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0575', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0576', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0577', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0578', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0579', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0580', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0581', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0582', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0583', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0584', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0585', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0586', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0587', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0588', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0589', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0590', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0591', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0592', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f'),
('0593', 2020, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `hogar`
--

CREATE TABLE `hogar` (
  `idhogar` int(11) NOT NULL,
  `nom_hogar` varchar(30) NOT NULL,
  `madre` varchar(50) NOT NULL,
  `padre` varchar(50) NOT NULL,
  `telefono_a` varchar(8) NOT NULL,
  `telefono_b` varchar(8) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `hogar`
--

INSERT INTO `hogar` (`idhogar`, `nom_hogar`, `madre`, `padre`, `telefono_a`, `telefono_b`, `estado`) VALUES
(1, 'Acapa Hogar Nataly', 'Petronila Perez', '-', '-', '-', 'activo'),
(2, 'Acarapi Hogar Jhon', 'Elicia Maldonado Choque', '-', '-', '-', 'activo'),
(3, 'Acho Hogar Karina', 'Faviana Poma', '-', '-', '-', 'activo'),
(4, 'Aguayo Hogar Israel', 'Julia Laime', '-', '-', '-', 'activo'),
(5, 'Aguilar Hogar Ali', 'Rosa Ticona', '-', '-', '-', 'activo'),
(6, 'Aguilario Hogar Magaly', 'Zenobia Marca', '-', '-', '-', 'activo'),
(7, 'Ajhuacho Hogar Gael', 'Betzabe Ajhuacho Chinche', '-', '-', '-', 'activo'),
(8, 'Alanes Hogar Damaris', 'Estefania Mendoza', '-', '-', '-', 'activo'),
(9, 'Alarcon Hogar Ana', 'Julian Alarcon Jorge', '-', '-', '-', 'activo'),
(10, 'Alavi Hogar Cristian', 'Teodora Felipe', '-', '-', '-', 'activo'),
(11, 'Alcocer Hogar Lizeth', 'Benedicta Mamani', '-', '-', '-', 'activo'),
(12, 'Almanza Hogar Caleb', 'Francisca Huanca', '-', '-', '-', 'activo'),
(13, 'Alvarez Hogar Jhandi', 'Marcelina Limachi', '-', '-', '-', 'activo'),
(14, 'Andia Hogar Maria', 'Martha Tacuri Leon', '-', '-', '-', 'activo'),
(15, 'Apaza Hogar Anahi', 'Patricia Mamani', '-', '-', '-', 'activo'),
(16, 'Arratia Hogar Isidro', 'Felipa Falzo', '-', '-', '-', 'activo'),
(17, 'Ayra Hogar Sarai', 'Elena Flores', '-', '-', '-', 'activo'),
(18, 'Balderrama Hogar Karen', 'Sonia Aguayo', '-', '-', '-', 'activo'),
(19, 'Barrionuevo Hogar Jesus', 'Juliana Lopez', '-', '-', '-', 'activo'),
(20, 'Bautista Hogar Elena', 'Martha Condori', '-', '-', '-', 'activo'),
(21, 'Bustos hogar Adriana', 'Jeanneth Cespedes', '-', '-', '-', 'activo'),
(22, 'Caceres Hogar Edwin', 'Maria Tacuri', '-', '-', '-', 'activo'),
(23, 'Calizaya Hogar Adiel', 'Jhaneth Arroyo', '-', '-', '-', 'activo'),
(24, 'Calizaya Hogar Jacqueline', 'Saturdina Lampa', '-', '-', '-', 'activo'),
(25, 'Calizaya Hogar Ronal', 'Julia Zeballos', '-', '-', '-', 'activo'),
(26, 'Calle Hogar Diana', 'Senovia Suturi', '-', '-', '-', 'activo'),
(27, 'Calle Hogar Mariluz', 'Antonia Pancata', '-', '-', '-', 'activo'),
(28, 'Cantuta Hogar Ismael', 'Erlin Candi Cantuta', '-', '-', '-', 'activo'),
(29, 'Carata Hogar Joel', 'Santusa Mamani', '-', '-', '-', 'activo'),
(30, 'Carbajal Hogar Maydelin', 'Juana Llalli Soto', '-', '-', '-', 'activo'),
(31, 'Cardenas Hogar Dafnee', 'Shirley Estrada', '-', '-', '-', 'activo'),
(32, 'Cardozo Hogar Sheyla', 'Albina Chumacero', '-', '-', '-', 'activo'),
(33, 'Castillo Hogar Miguel', 'Cristina Cahuaya', '-', '-', '-', 'activo'),
(34, 'Castro Hogar Nataly', 'Matilde Hinojosa', '-', '-', '-', 'activo'),
(35, 'Chambi Hogar Crispin', 'Carmensa Flores', '-', '-', '-', 'activo'),
(36, 'Chambi Hogar Leonel', 'Tatiana Medina', '-', '-', '-', 'activo'),
(37, 'Chinche Hogar Joel', 'Maria Ajhuacho', '-', '-', '-', 'activo'),
(38, 'Chocamani Hogar Damaris', 'Felipe Chocamani', '-', '-', '-', 'activo'),
(39, 'Chocamani Hogar Henry', 'Fausta Cayzana', '-', '-', '-', 'activo'),
(40, 'Chocamani Hogar Javier', 'Basilia Marcos', '-', '-', '-', 'activo'),
(41, 'Chocamani Hogar Jhonatan', 'Luisa Huallpa', '-', '-', '-', 'activo'),
(42, 'Chocamani Hogar Pizarro', 'Maria Pizarro', '-', '-', '-', 'activo'),
(43, 'Choque Hogar Efrain', 'Francisca Huallpa', '-', '-', '-', 'activo'),
(44, 'Choque Hogar Grover', 'Vicenta Mamani', '-', '-', '-', 'activo'),
(45, 'Choque Hogar Haziel', 'Giovana Garcia', '-', '-', '-', 'activo'),
(46, 'Choque Hogar Ivan', 'Eulalia Serrano', '-', '-', '-', 'activo'),
(47, 'Choque Hogar kevin', 'Salome Puri', '-', '-', '-', 'activo'),
(48, 'Choque Hogar Maribel', 'Gregoria Flores', '-', '-', '-', 'activo'),
(49, 'Choque Hogar Tiago', 'Flaviana Vicente', '-', '-', '-', 'activo'),
(50, 'Choque Hogar Ulises', 'Greogoria Aguilar', '-', '-', '-', 'activo'),
(51, 'Choque Hogar Wilson', 'Segundina Falzo', '-', '-', '-', 'activo'),
(52, 'Choquerive Hogar Kevin', 'Celia Huallpa', '-', '-', '-', 'activo'),
(53, 'Chura Hogar Ronald', 'Delia Aguilar', '-', '-', '-', 'activo'),
(54, 'Colque Hogar Alexander', 'Eleuteria Ayca Choque', '-', '-', '-', 'activo'),
(55, 'Colque Hogar Dinaldo', 'Basilia Kally Vela', '-', '-', '-', 'activo'),
(56, 'Colque Hogar Jhoel', 'Silvia Cocha', '-', '-', '-', 'activo'),
(57, 'Colque Hogar Noemi', 'Daria Aycahuara', '-', '-', '-', 'activo'),
(58, 'Condori Hogar Abigail', 'Gregoria Lampa', '-', '-', '-', 'activo'),
(59, 'Condori Hogar Cristian', 'Basilia Sipe', '-', '-', '-', 'activo'),
(60, 'Condori Hogar Luis', 'Erika Condori', '-', '-', '-', 'activo'),
(61, 'Condori Hogar Neythan', 'Nardi Eliza Mollo Choque', '-', '-', '-', 'activo'),
(62, 'Contreras Hogar Jhoan', 'Sofia Limachi', '-', '-', '-', 'activo'),
(63, 'Cordova Hogar Celma', 'Elisa Villarroel', '-', '-', '-', 'activo'),
(64, 'Cossio Hogar Jhodith', 'Martha Gutierrez', '-', '-', '-', 'activo'),
(65, 'Cruz Hogar Carlos', 'Mary Ortiz', '-', '-', '-', 'activo'),
(66, 'Cruz Hogar Deysi', 'Gladys Tito', '-', '-', '-', 'activo'),
(67, 'Cruz Hogar Jhon', 'Lizeth Rios', '-', '-', '-', 'activo'),
(68, 'Cruz Hogar Jhuliana', 'Hilda Coria', '-', '-', '-', 'activo'),
(69, 'Cruz Hogar Laura', 'Ignacia Gutierrez', '-', '-', '-', 'activo'),
(70, 'Cruz Hogar Yandil', 'Sandra Chambi', '-', '-', '-', 'activo'),
(71, 'Escobar Hogar Brayan', 'Eveling Cabrera', '-', '-', '-', 'activo'),
(72, 'Escobar Hogar Joel', 'Teodosia Aspi Epejo', '-', '-', '-', 'activo'),
(73, 'Estrada Hogar Jhamil', 'Dannitza Karen Estrada Ortiz', '-', '-', '-', 'activo'),
(74, 'Fernandez Hogar Jhoel', 'Elsa Yucra', '-', '-', '-', 'activo'),
(75, 'Fernandez Hogar Jhonatan', 'Adela Simon', '-', '-', '-', 'activo'),
(76, 'Fernandez Hogar Kevin', 'Cirila Choque', '-', '-', '-', 'activo'),
(77, 'Fernandez Hogar Maria', 'Rosalia Chiquipa', '-', '-', '-', 'activo'),
(78, 'Fernandez Hogar Nicol', 'Esther Vicente', '-', '-', '-', 'activo'),
(79, 'Flores Hogar Ana', 'Micasia Jesus', '-', '-', '-', 'activo'),
(80, 'Flores Hogar Briana', 'Flora Flores Silvestre', '-', '-', '-', 'activo'),
(81, 'Flores Hogar Edwin', 'Luisa Caero', '-', '-', '-', 'activo'),
(82, 'Flores Hogar Joel', 'Daniela Flores', '-', '-', '-', 'activo'),
(83, 'Flores Hogar Jose', 'Rufina Huarachi', '-', '-', '-', 'activo'),
(84, 'Garcia Hogar Andi', 'Maria del Carmen Rodriguez', '-', '-', '-', 'activo'),
(85, 'Garcia Hogar Ayelen', 'Elia Vicente Mamani', '-', '-', '-', 'activo'),
(86, 'Garnica Hogar Alin', 'Zenaida Rodriguez', '-', '-', '-', 'activo'),
(87, 'Geronimo Hogar Leydi', 'Marta Marin', '-', '-', '-', 'activo'),
(88, 'Gomez Hogar Alexander', 'Cristina Estalla', '-', '-', '-', 'activo'),
(89, 'Gomez Hogar Ronald', 'Juana Huarachi', '-', '-', '-', 'activo'),
(90, 'Grabiel Hogar Dania', 'Teodoro Grabiel', '-', '-', '-', 'activo'),
(91, 'Gutierrez Hogar Diego', 'Zenaida Iquize', '-', '-', '-', 'activo'),
(92, 'Gutierrez Hogar Maria', 'Martha Gutierrez', '-', '-', '-', 'activo'),
(93, 'Gutierrez Hogar Zaida', 'Amalia Falzo', '-', '-', '-', 'activo'),
(94, 'Hinojosa Hogar Ramiro', 'Nicolasa Mamani', '-', '-', '-', 'activo'),
(95, 'Huacaña Hogar Raquel', 'Jacinta Mancilla', '-', '-', '-', 'activo'),
(96, 'Huallpa Hogar Alex', 'Elias Huallpa', '-', '-', '-', 'activo'),
(97, 'Huallpa Hogar Ana', 'Roberto Huallpa', '-', '-', '-', 'activo'),
(98, 'Huallpa Hogar Ariel', 'Juana Chocamani', '-', '-', '-', 'activo'),
(99, 'Huallpa Hogar Brayan', 'Elena Toroya', '-', '-', '-', 'activo'),
(100, 'Huallpa Hogar Jhoseline', 'Lucia Lia', '-', '-', '-', 'activo'),
(101, 'Huanaco Hogar Micaela', 'Nila Choque Ayma', '-', '-', '-', 'activo'),
(102, 'Huanca Hogar Jhon', 'Emiliana Alanes', '-', '-', '-', 'activo'),
(103, 'Huanca Hogar Lizeth', 'Elvira Choque', '-', '-', '-', 'activo'),
(104, 'Huanca Hogar Nayeli', 'Vilma Hinojosa', '-', '-', '-', 'activo'),
(105, 'Huarachi Hogar Yuvinka', 'Beatriz Huarachi', '-', '-', '-', 'activo'),
(106, 'Hurtado Hogar Jhon', 'Florinda Ticona', '-', '-', '-', 'activo'),
(107, 'Hurtado Hogar Noelia', 'Silvia Estrada', '-', '-', '-', 'activo'),
(108, 'Ibarra Hogar Brayan', 'Albertina Aguilar', '-', '-', '-', 'activo'),
(109, 'Ibarra Hogar Leonidas', 'Cristina Lopez Mamani', '-', '-', '-', 'activo'),
(110, 'Ignacio Hogar Kevin', 'Ariel Ignacio', '-', '-', '-', 'activo'),
(111, 'Isla Hogar Limber', 'Reina Salgueiro', '-', '-', '-', 'activo'),
(112, 'Izquierdo Hogar Anderson', 'Amalia Ilacio', '-', '-', '-', 'activo'),
(113, 'Jaldin Hogar Benito', 'Zenobia Rosas', '-', '-', '-', 'activo'),
(114, 'Jancko Hogar Andrea', 'Basilia Gutierres', '-', '-', '-', 'activo'),
(115, 'Janco Hogar Jesica', 'Juana Roque', '-', '-', '-', 'activo'),
(116, 'Janco Hogar Joel', 'Natividad Caceres', '-', '-', '-', 'activo'),
(117, 'Jimenez Hogar Brenda', 'Maria Eugenia Veramendi', '-', '-', '-', 'activo'),
(118, 'Jorje Hogar Sergio', 'Luisa Jorge', '-', '-', '-', 'activo'),
(119, 'Laime Hogar Leonel', 'Octavina Jalacori', '-', '-', '-', 'activo'),
(120, 'Laime Hogar Marcos', 'Marcelina Lezano', '-', '-', '-', 'activo'),
(121, 'Lampa Hogar Aidee', 'Ostacia Grabiel', '-', '-', '-', 'activo'),
(122, 'Lampa Hogar Ivan', 'Santusa Flores', '-', '-', '-', 'activo'),
(123, 'Lia Hogar Elmer', 'Adela Gaspar', '-', '-', '-', 'activo'),
(124, 'Lia Hogar Megan', 'Emiliana Rivera', '-', '-', '-', 'activo'),
(125, 'Limachi Hogar Jhessica', 'Rosalia Alvarez', '-', '-', '-', 'activo'),
(126, 'Llampa Hogar Jose', 'Santusa Choque', '-', '-', '-', 'activo'),
(127, 'Llanque Hogar David', 'Paulina Mamani', '-', '-', '-', 'activo'),
(128, 'Llanque Hogar Hans', 'Marisol Aguilar Tarqui', '-', '-', '-', 'activo'),
(129, 'Lopez Hogar Aaron', 'Daniela Mamani', '-', '-', '-', 'activo'),
(130, 'Lopez Hogar Alonso', 'Mercedez Rodriguez', '-', '-', '-', 'activo'),
(131, 'Lopez Hogar Ronald', 'Modesta Carata', '-', '-', '-', 'activo'),
(132, 'Luizaga Hogar Claudia', 'Jacinta Molina', '-', '-', '-', 'activo'),
(133, 'Mamani Hogar Anaflori', 'Antonia Huanca', '-', '-', '-', 'activo'),
(134, 'Mamani Hogar Angelina', 'Maria Mamani', '-', '-', '-', 'activo'),
(135, 'Mamani Hogar Betzabeth', 'Rosa Huarachi', '-', '-', '-', 'activo'),
(136, 'Mamani Hogar Brenda', 'Senovia Torrez', '-', '-', '-', 'activo'),
(137, 'Mamani Hogar Cesar', 'Martha Pintado', '-', '-', '-', 'activo'),
(138, 'Mamani Hogar Daniela', 'Sofia Cayo', '-', '-', '-', 'activo'),
(139, 'Mamani hogar Eddy', 'Cristina Pizarro', '-', '-', '-', 'activo'),
(140, 'Mamani Hogar Edson', 'Rene Mamani', '-', '-', '-', 'activo'),
(141, 'Mamani Hogar Isaias', 'Victoria Copali', '-', '-', '-', 'activo'),
(142, 'Mamani Hogar Jhassmin', 'Giovana Jimenez', '-', '-', '-', 'activo'),
(143, 'Mamani Hogar Luz', 'Rogelia Martinez Fabrica', '-', '-', '-', 'activo'),
(144, 'Mamani Hogar Madeley', 'Fabiola Rios', '-', '-', '-', 'activo'),
(145, 'Mamani Hogar Maria', 'Senovia Huallpa', '-', '-', '-', 'activo'),
(146, 'Mamani Hogar Mirian', 'Justina Janco', '-', '-', '-', 'activo'),
(147, 'Mamani Hogar Obed', 'Prudencia Albares', '-', '-', '-', 'activo'),
(148, 'Mamani Hogar Orlando', 'Nery Mamani', '-', '-', '-', 'activo'),
(149, 'Mamani Hogar Ruben', 'Nicolasa Fernandez', '-', '-', '-', 'activo'),
(150, 'Mamani Hogar Wandanara', 'Candelaria Mamani', '-', '-', '-', 'activo'),
(151, 'Manchani Hogar Roxana', 'Silvia Ferrel', '-', '-', '-', 'activo'),
(152, 'Mancilla Hogar Rodrigo', 'Felipa Choque', '-', '-', '-', 'activo'),
(153, 'Marcos Hogar Kevin', 'Rosmeri Fernandez', '-', '-', '-', 'activo'),
(154, 'Martinez Hogar Danner', 'Sonia Mondocorre', '-', '-', '-', 'activo'),
(155, 'Martinez Hogar Franklin', 'Florentina Fabrica', '-', '-', '-', 'activo'),
(156, 'Martinez Hogar Miguel', 'Veronica Llampa Choque', '-', '-', '-', 'activo'),
(157, 'Marzana Hogar Claudia', 'Luiza mollo Condori', '-', '-', '-', 'activo'),
(158, 'Matias Hogar Anthony', 'Felicidad Ojeda', '-', '-', '-', 'activo'),
(159, 'Medrano Hogar Wilber', 'Martina Vasquez', '-', '-', '-', 'activo'),
(160, 'Mendoza Hogar Elmer', 'Juana Mamani', '-', '-', '-', 'activo'),
(161, 'Mendoza Hogar Noelia', 'Maria Chura', '-', '-', '-', 'activo'),
(162, 'Mendoza Hogar Noemi', 'Faviana Alanis', '-', '-', '-', 'activo'),
(163, 'MontaÃ±o Hogar Pablo', 'Sandra Yucra', '-', '-', '-', 'activo'),
(164, 'Morales Hogar Gabriel', 'Lucia Alvarez', '-', '-', '-', 'activo'),
(165, 'Morales Hogar Jheriel', 'Yovana Eliana Choque Ventura', '-', '-', '-', 'activo'),
(166, 'Nina Hogar Elias', 'Segundina Crispin', '-', '-', '-', 'activo'),
(167, 'Olivares Hogar Julio', 'Justina Yergo', '-', '-', '-', 'activo'),
(168, 'Orellana Hogar Darla', 'Julia Quispe', '-', '-', '-', 'activo'),
(169, 'Otalora Hogar Elizabeth', 'Euloteria Otalora', '-', '-', '-', 'activo'),
(170, 'Otalora Hogar Yuliana', 'Maite Ramirez Chinche', '-', '-', '-', 'activo'),
(171, 'Ovando Hogar Jose', 'Ana Maria Ovando', '-', '-', '-', 'activo'),
(172, 'Pacco Hogar Cesia', 'Irma Callapa', '-', '-', '-', 'activo'),
(173, 'Pacheco Hogar Jherson', 'Hilaria Blanco', '-', '-', '-', 'activo'),
(174, 'Pacheco Hogar Naydelin', 'Amanda Cassia', '-', '-', '-', 'activo'),
(175, 'Paco Hogar Yesica', 'Victoria Mirabal', '-', '-', '-', 'activo'),
(176, 'Paulo Hogar Ariana', 'Roxana Blanca Ramos Huallpa', '-', '-', '-', 'activo'),
(177, 'Paulo Hogar Jhon', 'Luisa Condori', '-', '-', '-', 'activo'),
(178, 'Paulo Hogar Sarai', 'Betty Paulo', '-', '-', '-', 'activo'),
(179, 'Pintado Hogar Jhoselin', 'Viviana Aguayo', '-', '-', '-', 'activo'),
(180, 'Quintana Hogar Israel', 'Guadalupe Quintana', '-', '-', '-', 'activo'),
(181, 'Quintana Hogar Wilder', 'Prima Mora', '-', '-', '-', 'activo'),
(182, 'Quisberth Hogar Keyli', 'Hilda Toledo', '-', '-', '-', 'activo'),
(183, 'Quispe Hogar Maria', 'Fidelia Caceres', '-', '-', '-', 'activo'),
(184, 'Quispe Hogar Saul', 'Hermegilda', '-', '-', '-', 'activo'),
(185, 'Ramos Hogar Aldo', 'Francisca Rocha', '-', '-', '-', 'activo'),
(186, 'Ramos Hogar Ruben', 'Leonarda Huallpa', '-', '-', '-', 'activo'),
(187, 'Reyes Hogar Darlenne', 'Zenovia Choque', '-', '-', '-', 'activo'),
(188, 'Rivas Hogar Jhosua', 'Evangelina Rivas', '-', '-', '-', 'activo'),
(189, 'Rivera Hogar Beatriz', 'Emiliana Choque Pablo', '-', '-', '-', 'activo'),
(190, 'Rodriguez Hogar Daner', 'Salome Herrera', '-', '-', '-', 'activo'),
(191, 'Rodriguez Hogar Tamer', 'Julia Geronimo', '-', '-', '-', 'activo'),
(192, 'Rojas Hogar Jhanet', 'Florinda Mamani', '-', '-', '-', 'activo'),
(193, 'Rojas Hogar Luis', 'Valeriana Aguilar', '-', '-', '-', 'activo'),
(194, 'Rojas Hogar Selinda', 'Beatriz Mamani', '-', '-', '-', 'activo'),
(195, 'Romero Hogar Gabriel', 'Teofila Maita', '-', '-', '-', 'activo'),
(196, 'Rosas Hogar Reina', 'Claudia Camacho', '-', '-', '-', 'activo'),
(197, 'Salazar Hogar Diego', 'Guadalupe Huanco', '-', '-', '-', 'activo'),
(198, 'Salinas Hogar Diego', 'Lidia Mendoza', '-', '-', '-', 'activo'),
(199, 'Salvador Hogar Brandon', 'Aurelia Rodriguez', '-', '-', '-', 'activo'),
(200, 'Sanchez Hogar Gary', 'Demetria Condori', '-', '-', '-', 'activo'),
(201, 'Sanga Hogar Cristian', 'Maricruz Huanca', '-', '-', '-', 'activo'),
(202, 'Serrano Hogar Ivanna', 'Sinforiano Serrano', '-', '-', '-', 'activo'),
(203, 'Simon Hogar Jesus', 'Daysi Jacinto', '-', '-', '-', 'activo'),
(204, 'Siquita Hogar Yolanda', 'Enrrica Laime', '-', '-', '-', 'activo'),
(205, 'Suyo Hogar Jhonatan', 'Guillermina Canaviri', '-', '-', '-', 'activo'),
(206, 'Taquichiri Hogar Evelin', 'Francisca Janco', '-', '-', '-', 'activo'),
(207, 'Ticlla Hogar Belinda', 'Trifonia Rojas', '-', '-', '-', 'activo'),
(208, 'Ticollano Hogar Beimar', 'Teodora Canaviri', '-', '-', '-', 'activo'),
(209, 'Toroya Hogar Yessica', 'Margarita Mamani', '-', '-', '-', 'activo'),
(210, 'Torrez Hogar Jose', 'Gladys Llanque', '-', '-', '-', 'activo'),
(211, 'Torrez Hogar Olivia', 'Daria Omerique', '-', '-', '-', 'activo'),
(212, 'Torrico Hogar Litzie', 'Tereza Rojas', '-', '-', '-', 'activo'),
(213, 'Vallejos Hogar Ever', 'Cirila Choque', '-', '-', '-', 'activo'),
(214, 'Vargas Hogar Luis', 'Delia Mamani', '-', '-', '-', 'activo'),
(215, 'Vasquez Hogar Cristian', 'Nieves Taquichiri', '-', '-', '-', 'activo'),
(216, 'Vasquez Hogar Olga', 'Teodora Gonzales', '-', '-', '-', 'activo'),
(217, 'Veizaga Hogar Anahi', 'Maria Flores', '-', '-', '-', 'activo'),
(218, 'Vela Hogar Benita', 'Maribel Moisa', '-', '-', '-', 'activo'),
(219, 'Villanueva Hogar Luis', 'Natividad Taquichiri', '-', '-', '-', 'activo'),
(220, 'Villanueva Hogar Ronald', 'Bernardina Taquichiri', '-', '-', '-', 'activo'),
(221, 'Villapardo Hogar Jhuliet', 'Liliana Rios', '-', '-', '-', 'activo'),
(222, 'Villca Hogar Gabriel', 'Maxima Hinojosa', '-', '-', '-', 'activo'),
(223, 'Villca Hogar J. Gabriel', 'Rosa Vega', '-', '-', '-', 'activo'),
(224, 'Villca Hogar Matias', 'Miguel Villca', '-', '-', '-', 'activo'),
(225, 'Villca Hogar Nadia', 'Eva Zunagua', '-', '-', '-', 'activo'),
(226, 'Visalla Hogar Claudia', 'Valeriana Antonio', '-', '-', '-', 'activo'),
(227, 'Viscarra Hogar Israel', 'Beatriz Mamani', '-', '-', '-', 'activo'),
(228, 'Yapura Hogar Adelaida', 'Flora Estalla', '-', '-', '-', 'activo'),
(229, 'Yave Hogar Angela', 'Sandra Taquichiri Choque', '-', '-', '-', 'activo'),
(230, 'Yucra Hogar Maria', 'Damiana Jalacori', '-', '-', '-', 'activo'),
(231, 'Colque Hogar Nadia', 'Milton Colque', 'Senovia Choque', '12345678', '', 'activo');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `iditem` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`iditem`, `item`, `descripcion`) VALUES
(1, 'Material escolar', '2 lapices, 3 boligrafos, 1 tapa de carpeta, 1 paq. de hojas bond oficio, 1 paq. hojas carta, 1 pintura, 1 marcadores, 1 estuche geometrico, 1 borrador, 1 tajador'),
(2, 'Material de limpieza', '1 jabon, 1 cepillo dental, 1 crema dental, 1 toalla, 1 shamphoo'),
(3, 'Zapato escolar', 'De cuero marca MANACO'),
(4, 'Viveres', '1 Kilo arroz, 1 arroba de azucar, 1 aceite de 1L, 1 kilo api');

-- --------------------------------------------------------

--
-- Table structure for table `multa`
--

CREATE TABLE `multa` (
  `idmulta` int(11) NOT NULL,
  `idbeneficiario` varchar(4) NOT NULL,
  `monto` int(11) NOT NULL,
  `idactividad` varchar(30) NOT NULL,
  `mes` varchar(150) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recibo_aporte`
--

CREATE TABLE `recibo_aporte` (
  `idrecibo` int(11) NOT NULL,
  `idaporte` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recibo_beneficio`
--

CREATE TABLE `recibo_beneficio` (
  `idrecibo` int(11) NOT NULL,
  `idbeneficio` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recibo_multa`
--

CREATE TABLE `recibo_multa` (
  `idrecibo` int(11) NOT NULL,
  `idmulta` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recibo_regalo`
--

CREATE TABLE `recibo_regalo` (
  `idrecibo` int(11) NOT NULL,
  `idregalo` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regalo`
--

CREATE TABLE `regalo` (
  `idregalo` int(11) NOT NULL,
  `idbeneficiario` varchar(4) NOT NULL,
  `monto` float NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `gestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tarjeta`
--

CREATE TABLE `tarjeta` (
  `idtarjeta` int(11) NOT NULL,
  `idhogar` int(4) NOT NULL,
  `r1` varchar(1) NOT NULL,
  `r2` varchar(1) NOT NULL,
  `r3` varchar(1) NOT NULL,
  `r4` varchar(1) NOT NULL,
  `r5` varchar(1) NOT NULL,
  `r6` varchar(1) NOT NULL,
  `r7` varchar(1) NOT NULL,
  `r8` varchar(1) NOT NULL,
  `r9` varchar(1) NOT NULL,
  `r10` varchar(1) NOT NULL,
  `r11` varchar(1) NOT NULL,
  `r12` varchar(1) NOT NULL,
  `rm1` varchar(1) NOT NULL,
  `rm2` varchar(1) NOT NULL,
  `rm3` varchar(1) NOT NULL,
  `k1` varchar(1) NOT NULL,
  `k2` varchar(1) NOT NULL,
  `k3` varchar(1) NOT NULL,
  `gestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tarjeta`
--

INSERT INTO `tarjeta` (`idtarjeta`, `idhogar`, `r1`, `r2`, `r3`, `r4`, `r5`, `r6`, `r7`, `r8`, `r9`, `r10`, `r11`, `r12`, `rm1`, `rm2`, `rm3`, `k1`, `k2`, `k3`, `gestion`) VALUES
(1, 1, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(2, 2, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(3, 3, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(4, 4, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(5, 5, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(6, 6, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(7, 7, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(8, 8, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(9, 9, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(10, 10, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(11, 11, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(12, 12, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(13, 13, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(14, 14, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(15, 15, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(16, 16, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(17, 17, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(18, 18, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(19, 19, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(20, 20, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(21, 21, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(22, 22, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(23, 23, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(24, 24, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(25, 25, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(26, 26, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(27, 27, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(28, 28, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(29, 29, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(30, 30, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(31, 31, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(32, 32, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(33, 33, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(34, 34, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(35, 35, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(36, 36, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(37, 37, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(38, 38, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(39, 39, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(40, 40, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(41, 41, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(42, 42, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(43, 43, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(44, 44, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(45, 45, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(46, 46, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(47, 47, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(48, 48, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(49, 49, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(50, 50, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(51, 51, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(52, 52, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(53, 53, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(54, 54, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(55, 55, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(56, 56, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(57, 57, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(58, 58, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(59, 59, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(60, 60, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(61, 61, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(62, 62, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(63, 63, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(64, 64, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(65, 65, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(66, 66, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(67, 67, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(68, 68, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(69, 69, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(70, 70, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(71, 71, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(72, 72, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(73, 73, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(74, 74, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(75, 75, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(76, 76, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(77, 77, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(78, 78, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(79, 79, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(80, 80, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(81, 81, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(82, 82, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(83, 83, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(84, 84, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(85, 85, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(86, 86, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(87, 87, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(88, 88, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(89, 89, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(90, 90, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(91, 91, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(92, 92, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(93, 93, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(94, 94, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(95, 95, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(96, 96, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(97, 97, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(98, 98, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(99, 99, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(100, 100, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(101, 101, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(102, 102, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(103, 103, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(104, 104, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(105, 105, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(106, 106, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(107, 107, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(108, 108, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(109, 109, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(110, 110, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(111, 111, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(112, 112, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(113, 113, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(114, 114, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(115, 115, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(116, 116, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(117, 117, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(118, 118, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(119, 119, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(120, 120, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(121, 121, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(122, 122, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(123, 123, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(124, 124, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(125, 125, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(126, 126, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(127, 127, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(128, 128, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(129, 129, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(130, 130, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(131, 131, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(132, 132, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(133, 133, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(134, 134, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(135, 135, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(136, 136, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(137, 137, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(138, 138, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(139, 139, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(140, 140, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(141, 141, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(142, 142, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(143, 143, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(144, 144, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(145, 145, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(146, 146, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(147, 147, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(148, 148, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(149, 149, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(150, 150, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(151, 151, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(152, 152, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(153, 153, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(154, 154, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(155, 155, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(156, 156, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(157, 157, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(158, 158, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(159, 159, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(160, 160, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(161, 161, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(162, 162, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(163, 163, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(164, 164, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(165, 165, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(166, 166, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(167, 167, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(168, 168, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(169, 169, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(170, 170, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(171, 171, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(172, 172, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(173, 173, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(174, 174, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(175, 175, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(176, 176, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(177, 177, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(178, 178, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(179, 179, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(180, 180, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(181, 181, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(182, 182, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(183, 183, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(184, 184, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(185, 185, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(186, 186, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(187, 187, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(188, 188, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(189, 189, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(190, 190, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(191, 191, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(192, 192, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(193, 193, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(194, 194, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(195, 195, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(196, 196, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(197, 197, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(198, 198, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(199, 199, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(200, 200, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(201, 201, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(202, 202, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(203, 203, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(204, 204, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(205, 205, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(206, 206, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(207, 207, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(208, 208, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(209, 209, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(210, 210, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(211, 211, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(212, 212, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(213, 213, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(214, 214, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(215, 215, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(216, 216, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(217, 217, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(218, 218, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(219, 219, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(220, 220, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(221, 221, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(222, 222, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(223, 223, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(224, 224, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(225, 225, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(226, 226, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(227, 227, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(228, 228, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(229, 229, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(230, 230, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023),
(231, 231, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nom_usuario` varchar(15) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `nivel` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nom_usuario`, `pass`, `nivel`) VALUES
(2, 'Ismael', '81dc9bdb52d04dc20036dbd8313ed055', 'A'),
(3, 'Samuel', '81dc9bdb52d04dc20036dbd8313ed055', 'A'),
(4, 'Patricia', '81dc9bdb52d04dc20036dbd8313ed055', 'B'),
(5, 'Daysi', '81dc9bdb52d04dc20036dbd8313ed055', 'B'),
(6, 'Luz', '81dc9bdb52d04dc20036dbd8313ed055', 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aporte`
--
ALTER TABLE `aporte`
  ADD PRIMARY KEY (`idaporte`);

--
-- Indexes for table `beneficiario`
--
ALTER TABLE `beneficiario`
  ADD PRIMARY KEY (`idbeneficiario`);

--
-- Indexes for table `beneficio`
--
ALTER TABLE `beneficio`
  ADD PRIMARY KEY (`idbeneficio`);

--
-- Indexes for table `hogar`
--
ALTER TABLE `hogar`
  ADD PRIMARY KEY (`idhogar`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`iditem`);

--
-- Indexes for table `multa`
--
ALTER TABLE `multa`
  ADD PRIMARY KEY (`idmulta`);

--
-- Indexes for table `recibo_aporte`
--
ALTER TABLE `recibo_aporte`
  ADD PRIMARY KEY (`idrecibo`);

--
-- Indexes for table `recibo_beneficio`
--
ALTER TABLE `recibo_beneficio`
  ADD PRIMARY KEY (`idrecibo`);

--
-- Indexes for table `recibo_multa`
--
ALTER TABLE `recibo_multa`
  ADD PRIMARY KEY (`idrecibo`);

--
-- Indexes for table `recibo_regalo`
--
ALTER TABLE `recibo_regalo`
  ADD PRIMARY KEY (`idrecibo`);

--
-- Indexes for table `regalo`
--
ALTER TABLE `regalo`
  ADD PRIMARY KEY (`idregalo`);

--
-- Indexes for table `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`idtarjeta`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aporte`
--
ALTER TABLE `aporte`
  MODIFY `idaporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficio`
--
ALTER TABLE `beneficio`
  MODIFY `idbeneficio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hogar`
--
ALTER TABLE `hogar`
  MODIFY `idhogar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `iditem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `multa`
--
ALTER TABLE `multa`
  MODIFY `idmulta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recibo_aporte`
--
ALTER TABLE `recibo_aporte`
  MODIFY `idrecibo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recibo_beneficio`
--
ALTER TABLE `recibo_beneficio`
  MODIFY `idrecibo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recibo_multa`
--
ALTER TABLE `recibo_multa`
  MODIFY `idrecibo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recibo_regalo`
--
ALTER TABLE `recibo_regalo`
  MODIFY `idrecibo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regalo`
--
ALTER TABLE `regalo`
  MODIFY `idregalo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `idtarjeta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
