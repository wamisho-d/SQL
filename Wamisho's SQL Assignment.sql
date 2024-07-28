use fitness_center;
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);
# Question 1 Task 1: SQL Data Insertion.alter

INSERT INTO members (id, name, age) VALUES (1, 'Jhon Smith', 47);
INSERT INTO members (id, name, age) VALUES (2, 'Jane Doe', 38);
INSERT INTO members (id, name, age) VALUES (3, 'Alice Johnson', 29);

SELECT * FROM Members;

INSERT INTO workoutsessions ( session_id, member_id, session_date, session_time, activity)
VALUES (1, 1, '2024-09-02', '09:00 AM', 'Yoga');
INSERT INTO workoutsessions ( session_id, member_id, session_date, session_time, activity)
VALUES (2, 2, '2024-09-02', '08:00 AM', 'Cardio');
INSERT INTO workoutsessions ( session_id, member_id, session_date, session_time, activity)
VALUES (3, 3, '2024-09-02', '07:00 AM', 'weightlifting');

SELECT * FROM Workoutsessions;

 # Question 1 Task 2: SQL Data Update.
 UPDATE Workoutsessions
 SET session_time = '07:00 PM'
 WHERE memeber_id = 2 AND session_date = '2024-09-02';
 
# Question 1 Task 3: SQL Data Deletion.
DELETE FROM Workoutsessions
WHERE member_id = 1;

DELETE FROM Members
WHERE id = 1;



