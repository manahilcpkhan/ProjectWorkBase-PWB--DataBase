-- CREATION
CREATE DATABASE PWB;
USE PWB;

CREATE TABLE `User`
(
  `UserID` int NOT NULL,
  `FName` char(25) NOT NULL,
  `LName` char(25) NOT NULL,
  `Role` char(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  PRIMARY KEY (`UserID`)
);
CREATE TABLE `UEmail`
(
  `UserID` int NOT NULL,
  `UEmail` varchar(25) NOT NULL,
  PRIMARY KEY (`UserID`),
  CONSTRAINT `FK_U` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`)
);

CREATE TABLE `Project`
(
  `ProjectID` int NOT NULL,
  `PJName` char(25) NOT NULL,
  `SDate` date NOT NULL,
  `EDate` date NOT NULL,
  `Descrpt` char(50) NOT NULL,
  PRIMARY KEY (`ProjectID`),
  CONSTRAINT `Pj_FK` FOREIGN KEY (`ProjectID`) REFERENCES `User` (`UserID`)
);

CREATE TABLE `Issue`
(
  `IssueID` int NOT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `Role` varchar(25) NOT NULL,
  `DueDate` date NOT NULL,
  `Type` char(25) NOT NULL,
  `Comments` varchar(50) NOT NULL,
  `Summary` varchar(50) NOT NULL,
  `CurrentState` char(25) NOT NULL,
  `Priority` int NOT NULL,
  PRIMARY KEY (`IssueID`),
  CONSTRAINT `I_FK` FOREIGN KEY (`IssueID`) REFERENCES `User` (`UserID`),
  CONSTRAINT `fk_P` FOREIGN KEY (`IssueID`) REFERENCES `Project` (`ProjectID`)
);

CREATE TABLE WorkFlow
(
  `WorkflowID` int NOT NULL,
  `WName` char(25) NOT NULL,
  `IssueID` int NOT NULL,
  PRIMARY KEY (`WorkflowID`),
  CONSTRAINT `FK_I` FOREIGN KEY (`WorkflowID`) REFERENCES `Issue` (`IssueID`)
);

CREATE TABLE `Permission`
(
  `PermissionID` int NOT NULL,
  `PName` char(25) NOT NULL,
  PRIMARY KEY (`PermissionID`)
);

CREATE TABLE `Customer`
(
  `CustomerID` int NOT NULL,
  `FName` char(25) NOT NULL,
  `LName` char(25) NOT NULL,
  `Type` char(25) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  CONSTRAINT `U_FK` FOREIGN KEY (`CustomerID`) REFERENCES `User` (`UserID`)
);
CREATE TABLE `CustomerEmail`
(
  `CustomerID` int NOT NULL,
  `CEmail` varchar(25) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  CONSTRAINT `CFK` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`)
);

CREATE TABLE `Sprint`
(
  `SprintID` int NOT NULL,
  `SName` char(25) NOT NULL,
  `SDate` date NOT NULL,
  `EDate` date NOT NULL,
  PRIMARY KEY (`SprintID`),
  CONSTRAINT `S_fk` FOREIGN KEY (`SprintID`) REFERENCES `Project` (`ProjectID`)
);

CREATE TABLE `Board`
(
  `BoardID` int NOT NULL,
  `BName` char(25) NOT NULL,
  PRIMARY KEY (`BoardID`),
  CONSTRAINT `B_fk` FOREIGN KEY (`BoardID`) REFERENCES `Project` (`ProjectID`)
);

CREATE TABLE `Artifact`
(
  `ArtifactID` int NOT NULL,
  `AName` char(25) NOT NULL,
  `Type` char(25) NOT NULL,
  PRIMARY KEY (`ArtifactID`),
  CONSTRAINT `A_FK` FOREIGN KEY (`ArtifactID`) REFERENCES `Project` (`ProjectID`)
);

Use PWB;
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

-- INSERTIONS

-- User table
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (1, 'John', 'Doe', 'Manager', 'password123');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (2, 'Jane', 'Doe', 'Developer', 'qwerty');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (3, 'Bob', 'Smith', 'Tester', 'testing123');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (4, 'Alice', 'Johnson', 'Designer', 'designer123');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (5, 'Tom', 'Wilson', 'Project Manager', 'pm123');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (6, 'Sara', 'Lee', 'Database Administrator', 'dbadmin');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (7, 'Mike', 'Brown', 'Business Analyst', 'ba123');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (8, 'Karen', 'Taylor', 'Technical Writer', 'techwriter');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (9, 'David', 'Chen', 'Developer', 'dev123');
INSERT INTO User (UserID, FName, LName, Role, Password)
VALUES (10, 'Amy', 'Wang', 'Tester', 'testing456');


-- UEmail table
INSERT INTO UEmail (UserID, UEmail)
VALUES (1, 'john.doe@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (2, 'jane.doe@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (3, 'bob.smith@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (4, 'alice.johnson@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (5, 'tom.wilson@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (6, 'sara.lee@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (7, 'mike.brown@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (8, 'karen.taylor@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (9, 'david.chen@example.com');
INSERT INTO UEmail (UserID, UEmail)
VALUES (10, 'amy.wang@example.com');

-- Project table
INSERT INTO Project (ProjectID, PJName, SDate, EDate, Descrpt)
VALUES (1, 'Project A', '2023-01-01', '2023-07-31', 'Project A description'),
(2, 'Project B', '2023-02-01', '2023-08-31', 'Project B description'),
(3, 'Project C', '2023-03-01', '2023-09-30', 'Project C description'),
(4, 'Project D', '2023-04-01', '2023-10-31', 'Project D description'),
(5, 'Project E', '2023-05-01', '2023-11-30', 'Project E description'),
(6, 'Project F', '2023-06-01', '2023-12-31', 'Project F description'),
(7, 'Project G', '2023-07-01', '2024-01-31', 'Project G description'),
(8, 'Project H', '2023-08-01', '2024-02-29', 'Project H description'),
(9, 'Project I', '2023-09-01', '2024-03-31', 'Project I description'),
(10, 'Project J', '2023-10-01', '2024-04-30', 'Project J description');

-- Issue table
INSERT INTO Issue (IssueID, FName, LName, Role, DueDate, Type, Comments, Summary, CurrentState, Priority)
VALUES (1, 'John', 'Doe', 'Developer', '2023-05-15', 'Bug', 'This is a comment', 'Summary of Issue 1', 'Open', 2),
(2, 'Jane', 'Doe', 'Tester', '2023-05-16', 'Feature', 'This is another comment', 'Summary of Issue 2', 'In Progress', 1),
(3, 'Bob', 'Smith', 'Developer', '2023-05-17', 'Bug', 'This is a third comment', 'Summary of Issue 3', 'Closed', 3),
(4, 'Alice', 'Johnson', 'Project Manager', '2023-05-18', 'Feature', 'This is a fourth comment', 'Summary of Issue 4', 'Open', 4),
(5, 'James', 'Davis', 'Developer', '2023-05-19', 'Bug', 'This is a fifth comment', 'Summary of Issue 5', 'In Progress', 2),
(6, 'Sarah', 'Wilson', 'Tester', '2023-05-20', 'Feature', 'This is a sixth comment', 'Summary of Issue 6', 'Open', 1),
(7, 'Mark', 'Brown', 'Developer', '2023-05-21', 'Bug', 'This is a seventh comment', 'Summary of Issue 7', 'Closed', 5),
(8, 'Emily', 'Jones', 'Tester', '2023-05-22', 'Feature', 'This is an eighth comment', 'Summary of Issue 8', 'In Progress', 3),
(9, 'David', 'Garcia', 'Developer', '2023-05-23', 'Bug', 'This is a ninth comment', 'Summary of Issue 9', 'Open', 4),
(10, 'Megan', 'Taylor', 'Project Manager', '2023-05-24', 'Feature', 'This is a tenth comment', 'Summary of Issue 10', 'In Progress', 3);

-- Workflow table
INSERT INTO Workflow (WorkflowID, WName, IssueID)
VALUES (1, 'Workflow 1', 1),
(2, 'Workflow 2', 2),
(3, 'Workflow 3', 3),
(4, 'Workflow 4', 4),
(5, 'Workflow 5', 5),
(6, 'Workflow 6', 3),
(7, 'Workflow 7', 8),
(8, 'Workflow 8', 1),
(9, 'Workflow 9', 9),
(10, 'Workflow 10', 10);

-- Permission table
INSERT INTO Permission (PermissionID, PName)
VALUES
(1, 'Permission 1'),
(2, 'Permission 2'),
(3, 'Permission 3'),
(4, 'Permission 4'),
(5, 'Permission 5'),
(6, 'Permission 6'),
(7, 'Permission 7'),
(8, 'Permission 8'),
(9, 'Permission 9'),
(10, 'Permission 10');

-- Customer table
INSERT INTO Customer (CustomerID, FName, LName, Type)
VALUES
(1, 'John', 'Smith', 'Individual'),
(2, 'Emily', 'Johnson', 'Individual'),
(3, 'Michael', 'Williams', 'Individual'),
(4, 'Sophia', 'Brown', 'Corporate'),
(5, 'Daniel', 'Garcia', 'Corporate'),
(6, 'Ava', 'Miller', 'Corporate'),
(7, 'Benjamin', 'Davis', 'Individual'),
(8, 'Isabella', 'Wilson', 'Individual'),
(9, 'David', 'Lee', 'Individual'),
(10, 'Emma', 'Moore', 'Corporate');

-- Email table
INSERT INTO CustomerEmail (CustomerID, CEmail)
VALUES
(1, 'john@example.com'),
(2, 'mary@example.com'),
(3, 'lee@example.com'),
(4, 'sim@example.com'),
(5, 'andrew@example.com'),
(6, 'olivia@example.com'),
(7, 'michael@example.com'),
(8, 'emily@example.com'),
(9, 'jacob.@example.com'),
(10, 'clark@example.com');

-- Sprint table
INSERT INTO Sprint (SprintID, SName, SDate, EDate)
VALUES (1, 'Sprint 1', '2023-05-01', '2023-05-31'),
(2, 'Sprint 2', '2023-06-01', '2023-06-30'),
(3, 'Sprint 3', '2023-07-01', '2023-07-31'),
(4, 'Sprint 4', '2023-08-01', '2023-08-31'),
(5, 'Sprint 5', '2023-09-01', '2023-09-30'),
(6, 'Sprint 6', '2023-10-01', '2023-10-31'),
(7, 'Sprint 7', '2023-11-01', '2023-11-30'),
(8, 'Sprint 8', '2023-12-01', '2023-12-31'),
(9, 'Sprint 9', '2024-01-01', '2024-01-31'),
(10, 'Sprint 10', '2024-02-01', '2024-02-29');

-- Board table
INSERT INTO Board (BoardID, BName)
VALUES (1, 'Board 1'),
(2, 'Board 2'),
(3, 'Board 3'),
(4, 'Board 4'),
(5, 'Board 5'),
(6, 'Board 6'),
(7, 'Board 7'),
(8, 'Board 8'),
(9, 'Board 9'),
(10, 'Board 10');

-- Artifact table
INSERT INTO Artifact (ArtifactID, AName, Type)
VALUES (2, 'Artifact 2', 'Code'),
(3, 'Artifact 3', 'Document'),
(4, 'Artifact 4', 'Code'),
(5, 'Artifact 5', 'Document'),
(6, 'Artifact 6', 'Code'),
(7, 'Artifact 7', 'Document'),
(8, 'Artifact 8', 'Code'),
(9, 'Artifact 9', 'Document'),
(10, 'Artifact 10', 'Code');

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
