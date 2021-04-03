-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.

-- Category
INSERT INTO category VALUES ('Health care worker', 1);
INSERT INTO category VALUES ('Elderly', 1);
INSERT INTO category VALUES ('Immunologically compromised', 1);
INSERT INTO category VALUES ('Teacher', 2);
INSERT INTO category VALUES ('Under 10', 2);
INSERT INTO category VALUES ('Physical proximity to 1st priority', 2);
INSERT INTO category VALUES ('Essential services worker', 3);
INSERT INTO category VALUES ('Physical proximity to 2nd priority', 3);
INSERT INTO category VALUES ('Other', 4);

-- Patient
INSERT INTO patient VALUES('MURT1234', 'Tris Murch', 'Spenser, 8', 'Laval', 'QC H7L 4E7', '651 970 3832', 'M', '1953-12-22', '2021-01-17', 'Elderly');
INSERT INTO patient VALUES('DOMB9376', 'Benedetto Dommersen', 'Oakridge, 15', 'Montreal', 'QC H3A 1E9', '922 563 8762', 'M', '1979-12-04', '2021-01-29', 'Health care worker');
INSERT INTO patient VALUES('MANR9287', 'Reeva Mansour', 'Katie, 21', 'Quebec', 'QC G1R 2J6', '422 178 0387', 'F', '1971-05-09', '2021-02-08', 'Teacher');
INSERT INTO patient VALUES('BECL9275', 'Lorin Beckhouse', 'Sutherland, 2', 'Quebec', 'QC G1R 2J2', '551 878 6794', 'M', '1940-05-09', '2021-01-05', 'Elderly');
INSERT INTO patient VALUES('DINS6254', 'Selene Dinneges', 'Quincy, 25', 'Sherbrooke', 'QC J1H 4M3', '508 578 4244', 'F', '2014-02-23', '2021-01-20', 'Under 10');
INSERT INTO patient VALUES('FUXO8265', 'Oren Fuxman', 'Nelson, 40', 'Longueuil', 'QC J4H 1J3', '822 260 0694', 'M', '2002-03-13', '2021-01-14', 'Other');
INSERT INTO patient VALUES('REAH6549', 'Hall Reace', 'Onsgard, 7', 'Saguenay', 'QC G7H 4V2', '352 643 3924', 'M', '1958-11-09', '2021-01-17', 'Elderly');
INSERT INTO patient VALUES('MOUP1538', 'Peggie Moulsdale', 'Russell, 50', 'Gatineau', 'QC J8T 3R2', '592 754 8455', 'F', '1976-09-10', '2021-02-07', 'Teacher');
INSERT INTO patient VALUES('HUSR8190', 'Rooney Hussey', 'Riverside, 43', 'Montreal', 'QC H3A 2E8', '865 892 7405', 'M', '1990-01-28', '2021-02-08', 'Physical proximity to 1st priority');
INSERT INTO patient VALUES('WARC5108', 'Corty Wardlaw', 'Delaware, 32', 'Quebec', 'QC G1R 2J9', '225 422 2529', 'M', '1987-11-13', '2021-01-08', 'Health care worker');
INSERT INTO patient VALUES('SHUE2416', 'Ema Shurlock', 'Stoughton, 56', 'Laval', 'QC H7L 4E9', '117 675 1540', 'F', '1997-08-06', '2021-01-10', 'Essential services worker');
INSERT INTO patient VALUES('CODH0987', 'Halsy Codi', 'Tony, 89', 'Montreal', 'QC H3A 1E5', '853 308 1598', 'M', '1990-04-29', '2021-02-06', 'Physical proximity to 2nd priority');
INSERT INTO patient VALUES('BALM1854', 'Mari Ballchin', 'Eggendart, 75', 'Montreal', 'QC H3A 1E2', '320 394 1288', 'F', '1977-02-22', '2021-01-22', 'Health care worker');
INSERT INTO patient VALUES('DOCJ0912', 'Jarvis Docwra', 'Monterrey, 45', 'Gatineau', 'QC J8T 3R6', '918 965 8123', 'M', '1960-10-09', '2021-02-19', 'Immunologically compromised');
INSERT INTO patient VALUES('LEMW0956', 'Winonah Lemerle', 'Lien, 1', 'Montreal', 'QC H3A 1E6', '382 938 6215', 'F', '1975-04-02', '2021-01-27', 'Immunologically compromised');
INSERT INTO patient VALUES('DOEJ0956', 'Jane Doe', 'Bourassa, 9', 'Montreal', 'QC H3A 3E6', '382 938 9872', 'F', '1968-07-02', '2021-01-27', 'Other');
INSERT INTO patient VALUES('ESCM0956', 'Manuel de las Casas', 'Parc, 21', 'Montreal', 'QC H3A 3E2', '382 765 9872', 'M', '2000-12-21', '2021-01-15', 'Other');
INSERT INTO patient VALUES('ESCG1914', 'Gabriel de las Casas', 'Parc, 20', 'Montreal', 'QC H3A 3E2', '123 765 9872', 'M', '2006-06-30', '2021-01-10', 'Other');
INSERT INTO patient VALUES('TAOY9824', 'Yun Tao', 'Lien, 8', 'Quebec', 'QC G1R 7J1', '382 654 6215', 'M', '1990-09-01', '2021-01-01', 'Teacher');
INSERT INTO patient VALUES('DLCE9876', 'Emma de las Casas', 'Parc, 19', 'Montreal', 'QC H3A 3E2', '134 765 9872', 'F', '2003-09-11', '2021-02-01', 'Other');

INSERT INTO patient VALUES('ABC1234', 'Rodolphe Restieaux', '1 Holmberg Hill', 'San Antonio', '9158', '186-392-9864', 'M', '1975-09-24', '2021-01-01', 'Other');
INSERT INTO patient VALUES('ABC1235', 'Harriot Dumini', '17537 Roxbury Park', 'La Roxas', '7265', '592-308-0256', 'F', '1967-05-13', '2021-02-20', 'Other');
INSERT INTO patient VALUES('ABC1236', 'Heywood Shallcrass', '51 Shelley Road', 'Uryupinsk', '4501', '387-609-9883', 'M', '1965-05-20', '2021-02-25', 'Other');
INSERT INTO patient VALUES('ABC1237', 'Leia Davenport', '837 Ridgeway Junction', 'Lazaro Cardenas', '1716', '250-562-0525', 'F', '1988-01-24', '2021-02-23', 'Other');
INSERT INTO patient VALUES('ABC1238', 'Barr Keasy', '1 Melody Avenue', 'Sajan', '5216', '177-432-2958', 'M', '1996-04-10', '2021-03-02', 'Other');
INSERT INTO patient VALUES('ABC1239', 'Hashim MacCarter', '6 Montana Alley', 'Rabig', '4413', '969-739-2916', 'M', '1997-03-26', '2021-02-17', 'Other');
INSERT INTO patient VALUES('ABC1240', 'Bridget Aubert', '8221 Lerdahl Parkway', 'Ashikaga', '3784', '173-208-7898', 'F', '1965-08-26', '2021-01-07', 'Other');
INSERT INTO patient VALUES('ABC1241', 'Hortense Kapelhoff', '87560 Straubel Park', 'Esperanza', '2682', '280-448-0797', 'F', '1958-11-12', '2021-02-28', 'Other');
INSERT INTO patient VALUES('ABC1242', 'Allen Dewire', '076 Manufacturers Hill', 'Baishi', '3643', '525-615-7229', 'M', '1966-01-10', '2021-01-28', 'Other');
INSERT INTO patient VALUES('ABC1243', 'Jayme Laight', '75904 David Junction', 'Tupiza', '1844', '635-588-8616', 'M', '1983-07-28', '2021-01-13', 'Other');
INSERT INTO patient VALUES('ABC1244', 'Filip Brunning', '968 Esch Parkway', 'Ystad', '4281', '273-884-8791', 'M', '1958-03-30', '2021-02-28', 'Other');
INSERT INTO patient VALUES('ABC1245', 'Rina Docwra', '82 Glacier Hill Plaza', 'Suruhan', '3744', '288-484-8367', 'F', '1988-12-22', '2021-01-10', 'Other');
INSERT INTO patient VALUES('ABC1246', 'Orelle Mac', '444 Northwestern', 'Fichē', '6516', '493-713-5285', 'F', '1983-09-09', '2021-03-12', 'Other');
INSERT INTO patient VALUES('ABC1247', 'Charlotte Denziloe', '98 Spohn Terrace', 'Anat al Qadīmah', '3236', '331-423-4565', 'F', '1953-03-14', '2021-02-28', 'Other');
INSERT INTO patient VALUES('ABC1248', 'Tomi Norvel', '12 Transport Circle', 'Verkhniye Oselki', '2491', '204-310-5650', 'F', '1980-03-28', '2021-02-18', 'Other');
INSERT INTO patient VALUES('ABC1249', 'Hermia Grosvenor', '318 Novick Way', 'Maubeuge', '9891', '799-170-7166', 'F', '1987-08-05', '2021-01-09', 'Other');
INSERT INTO patient VALUES('ABC1250', 'Ahmed Kearns', '6910 Scofield Lane', 'Azinhal', '7945', '163-336-1214', 'M', '1955-07-22', '2021-01-30', 'Other');
INSERT INTO patient VALUES('ABC1251', 'Aleece Sells', '7657 Hollow ', 'Honkajoki', '1770', '302-105-9435', 'F', '1951-01-13', '2021-02-03', 'Other');
INSERT INTO patient VALUES('ABC1252', 'Kerwin Brun', '33 Meadow Ridge Hill', 'Az Zuwaytīnah', '6778', '204-764-2532', 'M', '1983-11-06', '2021-03-04', 'Other');
INSERT INTO patient VALUES('ABC1253', 'Ronnie Royston', '984 3rd Point', 'Zhyrovichy', '3898', '845-532-3217', 'M', '1965-07-14', '2021-01-16', 'Other');
INSERT INTO patient VALUES('ABC1254', 'Chiquita Cortez', '946 1st Hill', 'Yŏnmu', '7426', '469-104-2849', 'F', '1968-09-10', '2021-01-08', 'Other');
INSERT INTO patient VALUES('ABC1255', 'Nonnah OMonahan', '981 Pleasure Lane', 'Putinci', '5230', '180-637-5365', 'F', '1976-06-26', '2021-01-14', 'Other');
INSERT INTO patient VALUES('ABC1256', 'Gabie Palphreyman', '9 Bunker Hill Road', 'Limoges', '2680', '479-971-2362', 'M', '1995-12-28', '2021-01-09', 'Other');
INSERT INTO patient VALUES('ABC1257', 'Baudoin Linham', '6772 Derek Crossing', 'Katsuyama', '4802', '498-821-3326', 'M', '1960-03-04', '2021-03-04', 'Other');
INSERT INTO patient VALUES('ABC1258', 'Camile Hydes', '015 Macpherson Trail', 'Kapchorwa', '3773', '640-721-6415', 'F', '1982-12-05', '2021-03-02', 'Other');
INSERT INTO patient VALUES('ABC1259', 'Francois Dwelling', '3069 Waubesa Terrace', 'Ganzi', '4674', '959-585-9681', 'M', '1987-01-02', '2021-03-12', 'Other');
INSERT INTO patient VALUES('ABC1260', 'Kirbie Verey', '19934 Kingsford Circle', 'Orlando', '6928', '407-773-6061', 'F', '1974-03-05', '2021-01-06', 'Other');
INSERT INTO patient VALUES('ABC1261', 'Ulrica Archbould', '6 Colorado Pass', 'Buk', '5372', '547-858-6965', 'F', '1961-03-10', '2021-02-17', 'Other');
INSERT INTO patient VALUES('ABC1262', 'Barry OGlessane', '0132 Veith Avenue', 'Guxian', '7307', '962-477-4277', 'F', '1999-02-11', '2021-02-06', 'Other');
INSERT INTO patient VALUES('ABC1263', 'Waverly Kelling', '48 Florence Drive', 'Dongba', '3039', '913-856-6963', 'M', '1958-11-12', '2021-03-02', 'Other');
INSERT INTO patient VALUES('ABC1264', 'Allina Cersey', '3 Dapin Junction', 'Guxian', '1532', '626-148-6277', 'F', '1965-04-21', '2021-01-29', 'Other');
INSERT INTO patient VALUES('ABC1265', 'Con Adamsky', '43745 Bluestem ', 'Daixi', '6667', '246-297-0213', 'M', '1980-11-06', '2021-01-03', 'Other');
INSERT INTO patient VALUES('ABC1266', 'Kort Nelle', '6606 Morningstar', 'Yampil', '5168', '209-212-9262', 'M', '1993-01-31', '2021-03-07', 'Other');
INSERT INTO patient VALUES('ABC1267', 'Ike Stoggles', '567 Eastwood Pass', 'Huating', '6896', '698-380-4552', 'M', '1992-02-20', '2021-02-17', 'Other');
INSERT INTO patient VALUES('ABC1268', 'Gabie Huws', '3469 Claremont Park', 'Huating', '7106', '576-529-2429', 'F', '1975-01-06', '2021-02-21', 'Other');
INSERT INTO patient VALUES('ABC1269', 'Brianna Blaxill', '14 Rowland Park', 'Cergy-Pontoise', '5032', '152-507-6431', 'F', '1973-04-29', '2021-01-17', 'Other');
INSERT INTO patient VALUES('ABC1270', 'Sonia Maestrini', '2711 Pierstorff Lane', 'Lagodekhi', '3558', '333-852-2312', 'F', '1961-03-15', '2021-02-14', 'Other');
INSERT INTO patient VALUES('ABC1271', 'Tanner Briskey', '65061 Debs Road', 'Aganan', '4411', '635-899-4882', 'M', '1953-05-02', '2021-02-06', 'Other');
INSERT INTO patient VALUES('ABC1272', 'Benito Martinez', '21 Union', 'San Juan', '1234', '635-333-4882', 'M', '1993-05-02', '2021-02-06', 'Other');
INSERT INTO patient VALUES('ABC1273', 'Yandel Ortiz', '21 Union', 'San Juan', '1234', '635-333-3333', 'M', '1993-05-02', '2021-02-06', 'Other');

-- Vaccination Location
INSERT INTO vaccLocation VALUES('Elgar', 'Toban, 78', 'Laval', 'QC H7L 4E6');
INSERT INTO vaccLocation VALUES('Vera', 'Waubesa, 63', 'Montreal', 'QC H3A 1E8');
INSERT INTO vaccLocation VALUES('Esch', 'Sutteridge, 89', 'Quebec', 'QC G1R 2J5');
INSERT INTO vaccLocation VALUES('Bay', 'Toban, 98', 'Quebec', 'QC G1R 2J1');
INSERT INTO vaccLocation VALUES('Mifflin', 'Aberg, 12', 'Sherbrooke', 'QC J1H 4M2');
INSERT INTO vaccLocation VALUES('Shoshone', 'Portage, 66', 'Longueuil', 'QC J4H 1J2');
INSERT INTO vaccLocation VALUES('Moland', 'Schiller, 69', 'Saguenay', 'QC G7H 4V1');
INSERT INTO vaccLocation VALUES('Fallview', 'Grayhawk, 21', 'Gatineau', 'QC J8T 3R1');
INSERT INTO vaccLocation VALUES('Reinke', 'Eagan, 55', 'Montreal', 'QC H3A 2E7');
INSERT INTO vaccLocation VALUES('Novick', 'Jenifer, 78', 'Quebec', 'QC G1R 2J8');
INSERT INTO vaccLocation VALUES('Hanson', 'Reinke, 420', 'Laval', 'QC H7L 4E8');
INSERT INTO vaccLocation VALUES('Sunfield', 'Eastlawn, 21', 'Montreal', 'QC H3A 1E4');
INSERT INTO vaccLocation VALUES('Clove', 'Nelson, 32', 'Montreal', 'QC H3A 1E3');
INSERT INTO vaccLocation VALUES('Boyd', 'Welch, 1', 'Gatineau', 'QC J8T 3R5');
INSERT INTO vaccLocation VALUES('Jewish General', 'Sunfield, 9', 'Montreal', 'QC H3A 1E5');


-- Hospital
INSERT INTO hospital VALUES('Reinke');
INSERT INTO hospital VALUES('Novick');
INSERT INTO hospital VALUES('Sunfield');
INSERT INTO hospital VALUES('Hanson');
INSERT INTO hospital VALUES('Jewish General');
INSERT INTO hospital VALUES('Clove');
INSERT INTO hospital VALUES('Boyd');


-- Nurse
INSERT INTO nurse VALUES('1625CHIZ','Zacharie Chittey','Reinke');
INSERT INTO nurse VALUES('4006COGC','Candi Coggings','Novick');
INSERT INTO nurse VALUES('7463HARA','Alisun Hardacre','Sunfield');
INSERT INTO nurse VALUES('7464GARK','Kingsly Garnett','Hanson');
INSERT INTO nurse VALUES('9485ICZC','Chrisse Iczokvitz','Reinke');
INSERT INTO nurse VALUES('2399TOBA','Antonina Toby','Jewish General');
INSERT INTO nurse VALUES('6425REIE','Etheline Reicherz','Hanson');
INSERT INTO nurse VALUES('1969MACC','Clarance MacKain','Reinke');
INSERT INTO nurse VALUES('4192PHIS','Solomon Philippeaux','Clove');
INSERT INTO nurse VALUES('3414BAYI','Isak Baybutt','Novick');
INSERT INTO nurse VALUES('5659OLIM','Morty Olivetta','Jewish General');
INSERT INTO nurse VALUES('2688FYFT','Tina Fyfe','Hanson');
INSERT INTO nurse VALUES('3515LUML','Loree Lummus','Boyd');
INSERT INTO nurse VALUES('4126FREC','Catherine Freemantle','Reinke');
INSERT INTO nurse VALUES('6055CAUK','Koo Caudwell','Jewish General');



-- Deputation
INSERT INTO deputation VALUES('2021-01-23', '1625CHIZ', 'Esch');
INSERT INTO deputation VALUES('2021-01-31', '4006COGC', 'Sunfield');
INSERT INTO deputation VALUES('2021-02-27', '7463HARA', 'Shoshone');
INSERT INTO deputation VALUES('2021-02-10', '7464GARK', 'Jewish General');
INSERT INTO deputation VALUES('2021-01-30', '9485ICZC', 'Sunfield');
INSERT INTO deputation VALUES('2021-02-17', '2399TOBA', 'Esch');
INSERT INTO deputation VALUES('2021-01-10', '6425REIE', 'Sunfield');
INSERT INTO deputation VALUES('2021-02-13', '1969MACC', 'Jewish General');
INSERT INTO deputation VALUES('2021-02-16', '4192PHIS', 'Shoshone');
INSERT INTO deputation VALUES('2021-02-21', '3414BAYI', 'Jewish General');
INSERT INTO deputation VALUES('2021-01-13', '5659OLIM', 'Sunfield');
INSERT INTO deputation VALUES('2021-02-14', '2688FYFT', 'Jewish General');
INSERT INTO deputation VALUES('2021-01-27', '3515LUML', 'Esch');
INSERT INTO deputation VALUES('2021-02-26', '4126FREC', 'Sunfield');
INSERT INTO deputation VALUES('2021-02-03', '6055CAUK', 'Shoshone');
INSERT INTO deputation VALUES('2021-02-06', '1625CHIZ', 'Jewish General');
INSERT INTO deputation VALUES('2021-02-20', '4192PHIS', 'Sunfield');
INSERT INTO deputation VALUES('2021-02-03', '5659OLIM', 'Sunfield');
INSERT INTO deputation VALUES('2021-02-25', '7464GARK', 'Jewish General');
INSERT INTO deputation VALUES('2021-01-03', '3515LUML', 'Shoshone');
INSERT INTO deputation VALUES('2021-01-20', '3515LUML', 'Shoshone');


-- Slot
INSERT INTO slot VALUES('Esch', 993, '2021-02-01', '19:56:00', 'MURT1234', '2021-01-22');
INSERT INTO slot VALUES('Sunfield', 709, '2021-02-01', '11:33:00', 'DOMB9376', '2021-01-30');
INSERT INTO slot VALUES('Shoshone', 628, '2021-02-01', '11:08:00', 'MANR9287', '2021-02-12');
INSERT INTO slot VALUES('Jewish General', 467, '2021-02-01', '16:40:00', 'BECL9275', '2021-01-08');
INSERT INTO slot VALUES('Sunfield', 637, '2021-02-01', '9:04:00', 'DINS6254', '2021-01-21');
INSERT INTO slot VALUES('Esch', 582, '2021-02-01', '15:50:00', 'FUXO8265', '2021-01-16');
INSERT INTO slot VALUES('Sunfield', 120, '2021-02-01', '15:18:00', 'REAH6549', '2021-01-08');
INSERT INTO slot VALUES('Jewish General', 776, '2021-02-01', '19:23:00', 'MOUP1538', '2021-02-10');
INSERT INTO slot VALUES('Shoshone', 510, '2021-02-01', '9:09:00', 'HUSR8190', '2021-02-09');
INSERT INTO slot VALUES('Jewish General', 433, '2021-02-02', '11:25:00', 'WARC5108', '2021-01-08');
INSERT INTO slot VALUES('Sunfield', 988, '2021-02-02', '16:24:00', 'SHUE2416', '2021-01-11');
INSERT INTO slot VALUES('Jewish General', 206, '2021-02-02', '17:07:00', 'CODH0987', '2021-02-13');
INSERT INTO slot VALUES('Esch', 815, '2021-02-02', '8:25:00', 'BALM1854', '2021-01-24');
INSERT INTO slot VALUES('Sunfield', 742, '2021-02-02', '8:29:00', 'DOCJ0912', '2021-02-20');
INSERT INTO slot VALUES('Shoshone', 651, '2021-02-02', '13:57:00', 'LEMW0956', '2021-01-30');
INSERT INTO slot VALUES('Jewish General', 420, '2021-02-03', '12:00:00', 'DOEJ0956', '2021-01-31');
INSERT INTO slot VALUES('Sunfield', 12, '2021-02-03', '13:00:00', 'REAH6549', '2021-02-15');
INSERT INTO slot VALUES('Sunfield', 21, '2021-02-03', '18:24:00', 'SHUE2416', '2021-02-01');
INSERT INTO slot VALUES('Jewish General', 211, '2021-02-03', '13:40:00', 'BECL9275', '2021-02-15');
INSERT INTO slot VALUES('Jewish General', 206, '2021-02-03', '17:07:00', NULL, NULL);
INSERT INTO slot VALUES('Esch', 815, '2021-02-03', '8:25:00', NULL, NULL);
INSERT INTO slot VALUES('Sunfield', 742, '2021-02-03', '8:29:00', NULL, NULL);
INSERT INTO slot VALUES('Shoshone', 651, '2021-02-03', '13:57:00', NULL, NULL);
INSERT INTO slot VALUES('Jewish General', 420, '2021-02-04', '12:00:00', NULL, NULL);
INSERT INTO slot VALUES('Sunfield', 12, '2021-02-04', '13:00:00', NULL, NULL);
INSERT INTO slot VALUES('Sunfield', 21, '2021-02-04', '18:24:00', NULL, NULL);
INSERT INTO slot VALUES('Jewish General', 211, '2021-02-04', '13:40:00', NULL, NULL);
INSERT INTO slot VALUES('Jewish General', 212, '2021-02-04', '13:40:00', 'DLCE9876', '2021-02-20');
INSERT INTO slot VALUES('Shoshone', 1, '2021-02-03', '12:00:00', 'TAOY9824', '2021-01-02');
INSERT INTO slot VALUES('Shoshone', 2, '2021-02-03', '12:01:00', 'TAOY9824', '2021-01-19');

INSERT INTO slot VALUES('Sunfield', 1, '2021-02-01', '9:00:00', 'ABC1234', '2021-02-01');
INSERT INTO slot VALUES('Sunfield', 2, '2021-02-01', '9:30:00', 'ABC1235', '2021-02-01');
INSERT INTO slot VALUES('Sunfield', 3, '2021-02-01', '10:00:00', 'ABC1236', '2021-02-01');
INSERT INTO slot VALUES('Sunfield', 4, '2021-02-01', '10:30:00', 'ABC1237', '2021-02-01');
INSERT INTO slot VALUES('Sunfield', 5, '2021-02-01', '11:00:00', 'ABC1238', '2021-02-01');
INSERT INTO slot VALUES('Sunfield', 6, '2021-02-01', '11:30:00', 'ABC1239', '2021-02-01');
INSERT INTO slot VALUES('Sunfield', 7, '2021-02-01', '12:00:00', 'ABC1240', '2021-02-01');
INSERT INTO slot VALUES('Sunfield', 8, '2021-02-01', '12:30:00', 'ABC1241', '2021-02-01');
INSERT INTO slot VALUES('Sunfield', 9, '2021-02-01', '13:00:00', 'ABC1242', '2021-02-01');
INSERT INTO slot VALUES('Esch', 1, '2021-02-02', '9:00:00', 'ABC1243', '2021-02-02');
INSERT INTO slot VALUES('Esch', 2, '2021-02-02', '9:30:00', 'ABC1244', '2021-02-02');
INSERT INTO slot VALUES('Esch', 3, '2021-02-02', '10:00:00', 'ABC1245', '2021-02-02');
INSERT INTO slot VALUES('Esch', 4, '2021-02-02', '10:30:00', 'ABC1246', '2021-02-02');
INSERT INTO slot VALUES('Esch', 5, '2021-02-02', '11:00:00', 'ABC1247', '2021-02-02');
INSERT INTO slot VALUES('Esch', 6, '2021-02-02', '11:30:00', 'ABC1248', '2021-02-02');
INSERT INTO slot VALUES('Shoshone', 1, '2021-02-03', '9:00:00', 'ABC1249', '2021-02-03');
INSERT INTO slot VALUES('Shoshone', 2, '2021-02-03', '9:30:00', 'ABC1250', '2021-02-03');
INSERT INTO slot VALUES('Shoshone', 3, '2021-02-03', '10:00:00', 'ABC1251', '2021-02-03');
INSERT INTO slot VALUES('Shoshone', 4, '2021-02-03', '10:30:00', 'ABC1252', '2021-02-03');
INSERT INTO slot VALUES('Shoshone', 5, '2021-02-03', '11:00:00', 'ABC1253', '2021-02-03');
INSERT INTO slot VALUES('Shoshone', 6, '2021-02-03', '11:30:00', 'ABC1254', '2021-02-03');
INSERT INTO slot VALUES('Shoshone', 7, '2021-02-03', '12:00:00', 'ABC1255', '2021-02-03');
INSERT INTO slot VALUES('Shoshone', 8, '2021-02-03', '12:30:00', 'ABC1256', '2021-02-03');
INSERT INTO slot VALUES('Sunfield', 1, '2021-02-04', '9:00:00', 'ABC1257', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 2, '2021-02-04', '9:30:00', 'ABC1258', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 3, '2021-02-04', '10:00:00', 'ABC1259', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 4, '2021-02-04', '10:30:00', 'ABC1260', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 5, '2021-02-04', '11:00:00', 'ABC1261', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 6, '2021-02-04', '11:30:00', 'ABC1262', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 7, '2021-02-04', '12:00:00', 'ABC1263', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 8, '2021-02-04', '12:30:00', 'ABC1264', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 9, '2021-02-04', '13:00:00', 'ABC1265', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 10, '2021-02-04', '13:30:00', 'ABC1266', '2021-02-04');
INSERT INTO slot VALUES('Sunfield', 11, '2021-02-04', '14:00:00', 'ABC1267', '2021-02-04');
INSERT INTO slot VALUES('Jewish General', 1, '2021-02-05', '9:00:00', 'ABC1268', '2021-02-05');
INSERT INTO slot VALUES('Jewish General', 2, '2021-02-05', '9:30:00', 'ABC1269', '2021-02-05');
INSERT INTO slot VALUES('Jewish General', 3, '2021-02-05', '10:00:00', 'ABC1270', '2021-02-05');
INSERT INTO slot VALUES('Jewish General', 4, '2021-02-05', '10:30:00', 'ABC1271', '2021-02-05');
INSERT INTO slot VALUES('Jewish General', 5, '2021-02-05', '11:00:00', 'ABC1272', '2021-02-05');
INSERT INTO slot VALUES('Jewish General', 6, '2021-02-05', '11:30:00', 'ABC1273', '2021-02-05');

-- Vaccine
INSERT INTO vaccine VALUES ('Pfizer-BioNTech', 2, 14);
INSERT INTO vaccine VALUES ('Moderna', 2, 16);
INSERT INTO vaccine VALUES ('Vaccine 1', 2, 16);
INSERT INTO vaccine VALUES ('Vaccine 2', 2, 16);
INSERT INTO vaccine VALUES ('Vaccine 3', 2, 16);
INSERT INTO vaccine VALUES ('Vaccine 4', 2, 16);

-- Batch
INSERT INTO batch VALUES('Pfizer-BioNTech', 134, '2022-12-20', '2021-01-04', 92, 'Esch');
INSERT INTO batch VALUES('Pfizer-BioNTech', 349, '2022-10-04', '2021-01-02', 82, 'Sunfield');
INSERT INTO batch VALUES('Pfizer-BioNTech', 625, '2022-04-23', '2021-01-01', 97, 'Shoshone');
INSERT INTO batch VALUES('Pfizer-BioNTech', 976, '2022-08-25', '2021-01-02', 99, 'Jewish General');
INSERT INTO batch VALUES('Pfizer-BioNTech', 668, '2022-10-11', '2021-01-04', 81, 'Sunfield');
INSERT INTO batch VALUES('Pfizer-BioNTech', 402, '2022-01-25', '2021-01-01', 90, 'Esch');
INSERT INTO batch VALUES('Pfizer-BioNTech', 223, '2022-05-01', '2021-01-03', 84, 'Sunfield');
INSERT INTO batch VALUES('Pfizer-BioNTech', 486, '2022-02-25', '2021-01-01', 81, 'Jewish General');
INSERT INTO batch VALUES('Moderna', 417, '2022-02-26', '2021-01-01', 98, 'Shoshone');
INSERT INTO batch VALUES('Moderna', 909, '2022-10-02', '2021-01-04', 94, 'Jewish General');
INSERT INTO batch VALUES('Moderna', 328, '2022-09-12', '2021-01-01', 92, 'Sunfield');
INSERT INTO batch VALUES('Moderna', 90, '2022-06-24', '2021-01-04', 100, 'Jewish General');
INSERT INTO batch VALUES('Moderna', 782, '2022-04-03', '2021-01-02', 84, 'Esch');
INSERT INTO batch VALUES('Moderna', 85, '2022-09-09', '2021-01-01', 90, 'Sunfield');
INSERT INTO batch VALUES('Moderna', 535, '2022-05-23', '2021-01-02', 99, 'Shoshone');
INSERT INTO batch VALUES('Pfizer-BioNTech', 300, '2022-05-25', '2021-01-03', 95, 'Jewish General');


-- Vial
INSERT INTO vial VALUES('Pfizer-BioNTech', 134, 49, 'MURT1234', '1625CHIZ', 'Esch', 993, '2021-02-01', '19:56:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 349, 59, 'DOMB9376', '4006COGC', 'Sunfield', 709, '2021-02-01', '11:33:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 625, 66, 'MANR9287', '7463HARA', 'Shoshone', 628, '2021-02-01', '11:08:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 976, 7, 'BECL9275', '7464GARK', 'Jewish General', 467, '2021-02-01', '16:40:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 668, 96, 'DINS6254', '9485ICZC', 'Sunfield', 637, '2021-02-01', '9:04:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 402, 44, 'FUXO8265', '2399TOBA', 'Esch', 582, '2021-02-01', '15:50:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 223, 64, 'REAH6549', '6425REIE', 'Sunfield', 120, '2021-02-01', '15:18:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 91, 'MOUP1538', '1969MACC', 'Jewish General', 776, '2021-02-01', '19:23:00');
INSERT INTO vial VALUES('Moderna', 417, 26, 'HUSR8190', '4192PHIS', 'Shoshone', 510, '2021-02-01', '9:09:00');
INSERT INTO vial VALUES('Moderna', 909, 45, 'WARC5108', '3414BAYI', 'Jewish General', 433, '2021-02-02', '11:25:00');
INSERT INTO vial VALUES('Moderna', 328, 50, 'SHUE2416', '5659OLIM', 'Sunfield', 988, '2021-02-02', '16:24:00');
INSERT INTO vial VALUES('Moderna', 90, 42, 'CODH0987', '2688FYFT', 'Jewish General', 206, '2021-02-02', '17:07:00');
INSERT INTO vial VALUES('Moderna', 782, 85, 'BALM1854', '3515LUML', 'Esch', 815, '2021-02-02', '8:25:00');
INSERT INTO vial VALUES('Moderna', 85, 48, 'DOCJ0912', '4126FREC', 'Sunfield', 742, '2021-02-02', '8:29:00');
INSERT INTO vial VALUES('Moderna', 535, 7, 'LEMW0956', '6055CAUK', 'Shoshone', 651, '2021-02-02', '13:57:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 300, 50, 'DOEJ0956', '1625CHIZ', 'Jewish General', 420, '2021-02-03', '12:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 349, 21, 'REAH6549', '4192PHIS', 'Sunfield', 12, '2021-02-03', '13:00:00');
INSERT INTO vial VALUES('Moderna', 328, 99, 'SHUE2416', '5659OLIM', 'Sunfield', 21, '2021-02-03', '18:24:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 976, 1, 'BECL9275', '7464GARK', 'Jewish General', 211, '2021-02-03', '13:40:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 625, 1, 'TAOY9824', '3515LUML', 'Shoshone', 1, '2021-02-03', '12:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 625, 2, 'TAOY9824', '3515LUML', 'Shoshone', 2, '2021-02-03', '12:01:00');

INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 1, 'ABC1234', '3515LUML', 'Sunfield', 1, '2021-02-01', '9:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 2, 'ABC1235', '3515LUML', 'Sunfield', 2, '2021-02-01', '9:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 3, 'ABC1236', '3515LUML', 'Sunfield', 3, '2021-02-01', '10:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 4, 'ABC1237', '3515LUML', 'Sunfield', 4, '2021-02-01', '10:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 5, 'ABC1238', '3515LUML', 'Sunfield', 5, '2021-02-01', '11:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 6, 'ABC1239', '3515LUML', 'Sunfield', 6, '2021-02-01', '11:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 7, 'ABC1240', '3515LUML', 'Sunfield', 7, '2021-02-01', '12:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 8, 'ABC1241', '3515LUML', 'Sunfield', 8, '2021-02-01', '12:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 9, 'ABC1242', '3515LUML', 'Sunfield', 9, '2021-02-01', '13:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 10, 'ABC1243', '3515LUML', 'Esch', 1, '2021-02-02', '9:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 11, 'ABC1244', '3515LUML', 'Esch', 2, '2021-02-02', '9:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 12, 'ABC1245', '3515LUML', 'Esch', 3, '2021-02-02', '10:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 13, 'ABC1246', '3515LUML', 'Esch', 4, '2021-02-02', '10:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 14, 'ABC1247', '3515LUML', 'Esch', 5, '2021-02-02', '11:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 15, 'ABC1248', '3515LUML', 'Esch', 6, '2021-02-02', '11:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 16, 'ABC1249', '3515LUML', 'Shoshone', 1, '2021-02-03', '9:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 17, 'ABC1250', '3515LUML', 'Shoshone', 2, '2021-02-03', '9:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 18, 'ABC1251', '3515LUML', 'Shoshone', 3, '2021-02-03', '10:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 19, 'ABC1252', '3515LUML', 'Shoshone', 4, '2021-02-03', '10:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 20, 'ABC1253', '3515LUML', 'Shoshone', 5, '2021-02-03', '11:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 21, 'ABC1254', '3515LUML', 'Shoshone', 6, '2021-02-03', '11:30:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 22, 'ABC1255', '3515LUML', 'Shoshone', 7, '2021-02-03', '12:00:00');
INSERT INTO vial VALUES('Pfizer-BioNTech', 486, 23, 'ABC1256', '3515LUML', 'Shoshone', 8, '2021-02-03', '12:30:00');
INSERT INTO vial VALUES('Moderna', 90, 24, 'ABC1257', '3515LUML', 'Sunfield', 1, '2021-02-04', '9:00:00');
INSERT INTO vial VALUES('Moderna', 90, 25, 'ABC1258', '3515LUML', 'Sunfield', 2, '2021-02-04', '9:30:00');
INSERT INTO vial VALUES('Moderna', 90, 26, 'ABC1259', '3515LUML', 'Sunfield', 3, '2021-02-04', '10:00:00');
INSERT INTO vial VALUES('Moderna', 90, 27, 'ABC1260', '3515LUML', 'Sunfield', 4, '2021-02-04', '10:30:00');
INSERT INTO vial VALUES('Moderna', 90, 28, 'ABC1261', '3515LUML', 'Sunfield', 5, '2021-02-04', '11:00:00');
INSERT INTO vial VALUES('Moderna', 90, 29, 'ABC1262', '3515LUML', 'Sunfield', 6, '2021-02-04', '11:30:00');
INSERT INTO vial VALUES('Moderna', 90, 30, 'ABC1263', '3515LUML', 'Sunfield', 7, '2021-02-04', '12:00:00');
INSERT INTO vial VALUES('Moderna', 90, 31, 'ABC1264', '3515LUML', 'Sunfield', 8, '2021-02-04', '12:30:00');
INSERT INTO vial VALUES('Moderna', 90, 32, 'ABC1265', '3515LUML', 'Sunfield', 9, '2021-02-04', '13:00:00');
INSERT INTO vial VALUES('Moderna', 90, 33, 'ABC1266', '3515LUML', 'Sunfield', 10, '2021-02-04', '13:30:00');
INSERT INTO vial VALUES('Moderna', 90, 34, 'ABC1267', '3515LUML', 'Sunfield', 11, '2021-02-04', '14:00:00');
INSERT INTO vial VALUES('Moderna', 90, 35, 'ABC1268', '3515LUML', 'Jewish General', 1, '2021-02-05', '9:00:00');
INSERT INTO vial VALUES('Moderna', 90, 36, 'ABC1269', '3515LUML', 'Jewish General', 2, '2021-02-05', '9:30:00');
INSERT INTO vial VALUES('Moderna', 90, 37, 'ABC1270', '3515LUML', 'Jewish General', 3, '2021-02-05', '10:00:00');
INSERT INTO vial VALUES('Moderna', 90, 38, 'ABC1271', '3515LUML', 'Jewish General', 4, '2021-02-05', '10:30:00');
INSERT INTO vial VALUES('Moderna', 90, 39, 'ABC1272', '3515LUML', 'Jewish General', 5, '2021-02-05', '11:00:00');
INSERT INTO vial VALUES('Moderna', 90, 40, 'ABC1273', '3515LUML', 'Jewish General', 6, '2021-02-05', '11:30:00');

END