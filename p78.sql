CREATE TABLE Manages (  ssn	CHAR(11),
			did	INTEGER,
			since	DATE,
			PRIMARY KEY  (did), 
			FOREIGN KEY (ssn) REFERENCES Employees,
			FOREIGN KEY (did) REFERENCES Departments)