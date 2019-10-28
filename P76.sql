CREATE TABLE Works_in2( ssn CHAR(11),
			did INTEGER,
			address CHAR(20),
			since DATE, 
			PRIMARY KEY (ssn, did, address)
			FOREIGN KEY (ssn) REFERENCES Employees,
			FOREIGN KEY (address) REFERENCES Locations,
			FOREGIN KEY (did) REFERENCES Departments)