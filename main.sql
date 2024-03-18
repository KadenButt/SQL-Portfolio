
CREATE TABLE  Clients(
    ClientID INT NOT NULL AUTO_INCREMENT,
    OrganisationName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(40) NOT NULL,
    LastName VARCHAR(40) NOT NULL,
    Email VARCHAR (255) NOT NULl,
    HomeAddress VARCHAR (255)NOT NULL,
    ContactMethod ENUM('Post', 'Email') NOT NULL,
    PRIMARY KEY (ClientID)
);

CREATE TABLE Projects(
    Title VARCHAR(40) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    Budget decimal(12,2) NOT NULL,
    ProjectDescription VARCHAR(500),
    Phase ENUM('design', 'development', 'testing', 'deployment', 'complete') NOT NULL,
    ClientID INT,
    PRIMARY KEY (Title),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

CREATE TABLE Skills(
    SkillID INT NOT NULL AUTO_INCREMENT,
    SkillName VARCHAR(40) NOT NULL,
    SkillType VARCHAR(40) NOT NULL,
    SkillExerpence ENUM('Beginner', 'Intermediate', 'Advanced', 'Expert') NOT NULL,
    PRIMARY KEY (SkillID) 
);

CREATE TABLE ProjectSkills(
    Title VARCHAR(40) NOT NULL,
    SkillID INT,
    PRIMARY KEY (Title, SkillID),
    FOREIGN KEY (SkillID) REFERENCES Skills(SkillID),
    FOREIGN KEY (Title) REFERENCES Projects(Title)

);

CREATE TABLE PoolMembers(
    PoolMemberID INT NOT NULl AUTO_INCREMENT,
    FirstName VARCHAR(40) NOT NULL,
    LastName VARCHAR(40) NOT NULL,
    Email VARCHAR (255) NOT NULL,
    Phone VARCHAR(14) NOT NULL,
    WorkAddress VARCHAR (255) NOT NULL,
    HomeAddress VARCHAR (255) NOT NULL,
    ProjectTitle VARCHAR(40),
    PRIMARY KEY (PoolMemberID),
    FOREIGN KEY (ProjectTitle) REFERENCES Projects(Title)

);

CREATE TABLE PoolMemberSkills(
    PoolMemberID INT NOT NULL AUTO_INCREMENT,
    SkillID INT,
    PRIMARY KEY (PoolMemberID, SkillID),
    FOREIGN KEY (PoolMemberID) REFERENCES PoolMembers(PoolMemberID),
    FOREIGN KEY (SkillID) REFERENCES Skills(SkillID)
);