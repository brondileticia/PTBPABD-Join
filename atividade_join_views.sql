-- LETÍCIA BRONDI CARVALHEIRO
-- PT3037801

--================================
-- EXERCÍCIO 1: UNIÃO DAS TABELAS
--================================

SELECT * FROM student s
INNER JOIN takes t ON s.ID = t.ID 

--================================
-- EXERCÍCIO 2: CONTAR CURSOS
--================================

SELECT 
    s.ID,
    s.name,
    COUNT(t.course_id) AS QuantidadeCursos
FROM student s
INNER JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY QuantidadeCursos DESC;

--================================
-- EXERCÍCIO 3: CRIAR VIEW
--================================

CREATE VIEW civil_eng_students AS
SELECT 
    s.ID,
    s.name,
    s.dept_name,
    t.course_id,
    t.grade
FROM student s
INNER JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.';

SELECT * FROM civil_eng_students;

--================================