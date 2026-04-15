use MIST353_Group2;

--Insert Data
SET IDENTITY_INSERT USERS ON;

-- Insert data into the "Users" table
Insert into USERS (UID, UFName, ULName)
Values (100, 'John', 'Doe'),
       (101, 'Jane', 'Smith'),
       (102, 'Michael', 'Johnson'),
       (103, 'Emily', 'Davis'),
       (104, 'David', 'Wilson'),
       (105, 'Sarah', 'Miller'),
       (106, 'Robert', 'Brown'),
       (107, 'Jessica', 'Taylor'),
       (108, 'Daniel', 'Anderson'),
       (109, 'Laura', 'Thomas'),
       (110, 'James', 'Moore');
GO

-- Insert data into Civilian table
Insert into CIVILIAN (UID)
Values (100), (105),(106), (108), (102), (107);
GO

-- Insert data into Supervisor table
Insert into SUPERVISOR (UID)
Values (101), (103), (107);
GO

-- Insert data into Worker table
Insert into WORKER (UID, HourlyRate)
Values (102, 20.25), (104, 19.50), (108, 22.00);
GO

-- Insert data into Incident table
Insert into INCIDENT (ILocation, IType)
Values ('123 Main St', 'Fallen Tree'),
       ('456 Elm St', 'Water Leak'),
       ('789 Oak St', 'Power Outage'),
       ('321 Pine St', 'Pothole'),
       ('654 Maple St', 'Road Blockage');
GO

-- Insert data into Report table
Insert into REPORT (UID, IID, ReportedProblem, ReportTime)
Values (100, 1, 'A large tree has fallen and is blocking the road.', '10:30'),
    (101, 2, 'There is a water leak causing flooding in the area.', '11:00'),
    (106, 3, 'The power is out in the neighborhood.', '11:30'),
    (108, 4, 'There is a large pothole on the main street.', '12:00'),
    (102, 5, 'A road is blocked due to construction work.', '12:30');

GO

-- Insert data into Approves table
Insert into APPROVES (UID, IID, Decision)
Values (103, 1, 'Approved'),
       (101, 2, 'Approved'),
       (107, 3, 'Denied'),
       (103, 4, 'Approved'),
       (107, 5, 'Denied');
       GO 

-- Insert data into Worked_On table
Insert into WORKED_ON (UID, IID, TimeWorked)
Values (102, 1, 5.5),
       (104, 2, 3.0),
       (108, 3, 4.0),
       (102, 4, 2.5),
       (108, 5, 6.0),
       (108, 1, 8.0);
       GO
