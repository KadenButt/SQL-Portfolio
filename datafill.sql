INSERT INTO Clients (OrganisationName,FirstName,LastName,Email, HomeAddress ,ContactMethod) VALUES ("Sony", "Dave", "Williams", "daveWilliams@email.com", "12 Victoria Street LEEDS LS17 7BS", "Email");
INSERT INTO Clients (OrganisationName,FirstName,LastName,Email, HomeAddress ,ContactMethod) VALUES ("Apple", "John", "Dolan", "johndolan@email.com", "9475 Park Avenue ST ALBANS AL43 7RD", "Post");


INSERT INTO Projects (Title, StartDate, EndDate, Budget, ProjectDescription, Phase, ClientID) VALUES ("Website", '2025-05-04', '2026-05-05', 40000, "The main website for Sony", "design" ,1);
INSERT INTO Projects (Title, StartDate, EndDate, Budget, ProjectDescription, Phase, ClientID) VALUES ("App Store", '2022-05-28', '2023-08-09', 500000, "Creating a new app store for apple", "complete", 2);

INSERT INTO Skills (SkillName, SkillType, SkillExerpence) VALUES ("JavaScript", "FrontEnd", "Experence");
INSERT INTO Skills (SkillName, SkillType, SkillExerpence) VALUES ("PHP", "BackEnd", "Intermediate");
INSERT INTO Skills (SkillName, SkillType, SkillExerpence) VALUES ("Node JS", "BackEnd", "Experence");
INSERT INTO Skills (SkillName, SkillType, SkillExerpence) VALUES ("PHP", "BackEnd", "Intermediate");
INSERT INTO Skills (SkillName, SkillType, SkillExerpence) VALUES ("JavaScript", "FrontEnd", "Beginner");
INSERT INTO Skills (SkillName, SkillType, SkillExerpence) VALUES ("C", "BackEnd", "Advanced");

INSERT INTO ProjectSkills(Title, SkillID) VALUES ("Website", 1);
INSERT INTO ProjectSkills(Title, SkillID) VALUES ("Website", 3);
INSERT INTO ProjectSkills(Title, SkillID) VALUES ("App Store", 4);
INSERT INTO ProjectSkills(Title, SkillID) VALUES ("App Store", 2);

INSERT INTO PoolMembers(FirstName, LastName, Email, Phone, WorkAddress, HomeAddress, ProjectTitle) VALUES ("Tanisha", "Nisha", "tanishanisha@email.com", "047874684730", "406 The Green EAST CENTRAL LONDON EC94 0UE", "74 Chester Road CLEVELAND TS74 9KB", "Website");
INSERT INTO PoolMembers(FirstName, LastName, Email, Phone, WorkAddress, HomeAddress, ProjectTitle) VALUES ("Kaden", "Batch", "kadenbatch@email.com", "047257684730", "67 Alexander Road ENFIELD EN94 0GW", "70 Mill Lane LANCASTER LA30 7BT", "App Store");

INSERT INTO PoolMemberSkills(PoolMemberID, SkillID) VALUES (1, 6);
INSERT INTO PoolMemberSkills(PoolMemberID, SkillID) VALUES (1, 3);


INSERT INTO PoolMemberSkills(PoolMemberID, SkillID) VALUES (2, 4);
INSERT INTO PoolMemberSkills(PoolMemberID, SkillID) VALUES (2, 1);

