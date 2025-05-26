
USE PWB;
CREATE TABLE `AssignedB`
(
  `BoardID` int NOT NULL,
  `UserID` int NOT NULL,
  CONSTRAINT `fkB` FOREIGN KEY (`BoardID`) REFERENCES `Board` (`BoardID`),
  CONSTRAINT `fkU` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`)
);

CREATE TABLE `AssignedS`
(
  `SprintID` int NOT NULL,
  `UseID` int NOT NULL,
  CONSTRAINT `Ufk` FOREIGN KEY (`UseID`) REFERENCES `User` (`UserID`),
  CONSTRAINT `fk_S` FOREIGN KEY (`SprintID`) REFERENCES `Sprint` (`SprintID`)
);

CREATE TABLE `Granted`
(
  `UserID` int NOT NULL,
  `PermissionID` int NOT NULL,
  CONSTRAINT `Ur_fk` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`),
  CONSTRAINT `Per_fk` FOREIGN KEY (`PermissionID`) REFERENCES `Permission` (`PermissionID`)
);

CREATE TABLE `Associated`
(
  `ProjectID` int NOT NULL,
  `CustomerID` int NOT NULL,
  CONSTRAINT `fk_PJ` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ProjectID`),
  CONSTRAINT `fk_cust` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`)
);

-- AssignedB table
INSERT INTO AssignedB (BoardID, UserID)
VALUES (1, 1),(2, 2),(3, 3),(4, 4),(5, 5),
(6, 6),(7, 7),(8, 8),(9, 9),(10, 10);

-- AssignedS table
INSERT INTO AssignedS (SprintID, UseID)
VALUES (1, 1),(2, 2),(3, 3),(4, 4),(5, 5),
(6, 6),(7, 7),(8, 8),(9, 9),(10, 10);

-- Granted table
INSERT INTO Granted (UserID, PermissionID)
VALUES (1, 1),(2, 2),(3, 3),(4, 4),(5, 5),
(6, 6),(7, 7),(8, 8),(9, 9),(10, 10);

-- Associated table
INSERT INTO Associated (ProjectID, CustomerID)
VALUES (1, 1),(2, 2),(3, 3),(4, 4),(5, 5),
(6, 6),(7, 7),(8, 8),(9, 9),(10, 10);
