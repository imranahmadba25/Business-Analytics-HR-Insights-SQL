-- 1. Total number of candidates sourced
SELECT COUNT(*) AS Total_Candidates
FROM Candidates;

-- 2. Total profiles sourced by each Sourcer
SELECT Sourcer, COUNT(*) AS Profiles_Sourced
FROM Candidates
GROUP BY Sourcer;

-- 3. Candidate count by Gender
SELECT Gender, COUNT(*) AS Total
FROM Candidates
GROUP BY Gender;

-- 4. Candidates who have joined (Final_Status = 'Joined')
SELECT COUNT(*) AS Total_Joined
FROM Candidates
WHERE Final_Status = 'Joined';

-- 5. Candidates who dropped (Final_Status = 'Drop')
SELECT COUNT(*) AS Total_Dropped
FROM Candidates
WHERE Final_Status = 'Drop';

-- 6. Average current salary vs expected salary of all candidates
SELECT 
    AVG(Current_Salary) AS Avg_Current_Salary,
    AVG(Expected_Salary) AS Avg_Expected_Salary
FROM Candidates;

-- 7. List of candidates with more than 5 years of Total Experience
SELECT Candidate_Name, Total_Exp, Current_Company
FROM Candidates
WHERE Total_Exp > 5;

-- 8. Number of candidates by Preferred Location
SELECT Preferred_Location, COUNT(*) AS Candidate_Count
FROM Candidates
GROUP BY Preferred_Location;

-- 9. Candidates still in pipeline (Final_Status = 'In Progress')
SELECT Candidate_Name, Sourcer, L1_Status, L2_Status
FROM Candidates
WHERE Final_Status = 'In Progress';

-- 10. Shortlist of candidates who asked for less than 30 days notice period
SELECT Candidate_Name, Notice_Period, Current_Company
FROM Candidates
WHERE Notice_Period <= '30 Days';
