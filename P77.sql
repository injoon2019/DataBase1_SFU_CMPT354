CREATE TABLE Reports_TO (
	supervisor_ssn CHAR(11),
	subordinate_ssn CHAR(11),
	PRIMARY KEY (supervisor_ssn, subordinate_ssn),
	FOREIGN KEY (supervisor_ssn) REFERENCES Employees(ssn),
	FOREIGN KEY (subordinate_ssn) REFERENCES Employees(ssn))