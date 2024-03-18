SELECT *
FROM PoolMembers
JOIN  PoolMemberSkills ON PoolMembers.PoolMemberID = PoolMemberSkills.PoolMemberID
JOIN ProjectSkills ON PoolMemberSkills.SkillID = ProjectSkills.SkillID
WHERE ProjectSkills.Title = PoolMembers.ProjectTitle;

UPDATE  PoolMembers, Projects, PoolMemberSkills, ProjectSkills
SET PoolMembers.ProjectTitle = Projects.Title
WHERE PoolMembers.PoolMemberID = PoolMemberSkills.PoolMemberID AND poolmemberskills.PoolMemberID = ProjectSkills.SkillID AND ProjectSkills.Title = PoolMembers.ProjectTitle;


--get project that are still being worked on
SELECT *
FROM Projects
WHERE EndDate > CURDATE();

--get finished Projects
SELECT *
FROM Projects
WHERE EndDate < CURDATE();

--get all pool member who is not currently working on a project
SELECT *
FROM PoolMembers
WHERE ProjectTitle = NULL;

--pool member who are working on one project
SELECT PoolMembers.*
FROM Projects
JOIN PoolMembers ON PoolMembers.ProjectTitle = Projects.Title
WHERE Projects.Title = "Website";

--select pool member with all their skills
SELECT *
FROM PoolMembers
JOIN PoolMemberSkills on PoolMembers.PoolMemberID = poolmemberskills.PoolMemberID
JOIN Skills ON PoolMemberSkills.SkillID = Skills.SkillID 
WHERE poolmemberskills.SkillID = Skills.SkillID;


--check status of a project
SElECT Projects.Phase
FROM Projects
WHERE Projects.Title = "Website";

