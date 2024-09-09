CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);
CREATE TABLE HealthCenters (
    CenterID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100)
);
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT,
    CenterID INT,
    Diagnosis VARCHAR(255),
    Treatment VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (CenterID) REFERENCES HealthCenters(CenterID)
);
