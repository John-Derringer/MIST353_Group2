
-- User Table
Create table USERS(
    UID int identity(1,1) primary key,
    UFName varchar (50) not null,
    ULName varchar (50) not null,
);

GO

-- Civilian Table
Create table CIVILIAN (
    UID int primary key,
    FOREIGN KEY (UID) REFERENCES USERS(UID)
);

GO

-- Supervisor Table
Create table SUPERVISOR (
    UID int primary key,
    FOREIGN KEY (UID) REFERENCES USERS(UID)
);

GO

-- Worker Table
Create table WORKER (
    UID int primary key,
    HourlyRate decimal (10,2) not null,
    FOREIGN KEY (UID) REFERENCES USERS(UID)
);

GO

-- Incident Table
Create table INCIDENT (
    IID int identity(1,1) primary key,
    ILocation varchar (100) not null,
    IType varchar (50) not null
);

GO

-- Report Table
Create table REPORT (
    UID INT,
    IID INT,
    ReportedProblem TEXT NOT NULL,
    ReportTime datetime not null,
    PRIMARY KEY (UID, IID),
    FOREIGN KEY (UID) REFERENCES USERS(UID),
    FOREIGN KEY (IID) REFERENCES INCIDENT(IID)
);
GO

-- Approve / Deny Table
Create table APPROVES (
    UID int,
    IID int, 
    Decision varchar (10) not null,
    PRIMARY KEY (UID, IID),
    FOREIGN KEY (UID) REFERENCES SUPERVISOR(UID),
    FOREIGN KEY (IID) REFERENCES INCIDENT(IID)
);

GO

-- Worked_On Table
Create table WORKED_ON (
    UID int,
    IID int,
    TimeWorked decimal (10,2) not null,
    PRIMARY KEY (UID, IID),
    FOREIGN KEY (UID) REFERENCES WORKER(UID),
    FOREIGN KEY (IID) REFERENCES INCIDENT(IID)
);

GO






