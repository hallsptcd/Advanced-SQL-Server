CREATE INDEX idx_class ON students_scr(class);
CREATE INDEX idx_score ON students_scr(score);

WITH RankedStudents AS (SELECT id, name, score, class, RANK() OVER (PARTITION BY class ORDER BY score DESC) AS rank FROM students_scr)
SELECT name, score, class FROM RankedStudents
WHERE rank = 1;