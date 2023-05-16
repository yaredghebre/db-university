1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `Iscritti`, YEAR (`enrolment_date`) AS `Anno`
FROM `students`
GROUP BY `enrolment_date`;

2. Contare gli insegnanti che hanno l_ufficio nello stesso edificio
SELECT COUNT(*) AS `Insegnanti`, `office_address`
FROM `teachers`
GROUP BY `office_address`

3. Calcolare la media dei voti di ogni appello d_esame
SELECT `exam_id`, AVG(`vote`)
FROM `exam_student`
GROUP BY `exam_id`

4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(*) AS `Corsi` 
FROM `degrees`
GROUP BY `department_id`
