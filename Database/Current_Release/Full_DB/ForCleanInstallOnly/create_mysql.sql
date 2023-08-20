CREATE DATABASE `wcell_realm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE `wcell_characters` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE `wcell_auth` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE USER 'wcell'@'localhost' IDENTIFIED BY 'wcell';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES ON `wcell_realm`.* TO 'wcell'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES ON `wcell_characters`.* TO 'wcell'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES ON `wcell_auth`.* TO 'wcell'@'localhost';