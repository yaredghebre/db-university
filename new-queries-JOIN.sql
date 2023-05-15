1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `students`.`enrolment_date`, `degrees`.`name` AS `Corso`
FROM `degrees`
JOIN `students`
ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

-- [found = 68]

2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `degrees`.`id`, `degrees`.`name`, `departments`.`id`, `departments`.`name`
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

-- [found = 7]

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `course_teacher`.`teacher_id`, `teachers`.`name`, `teachers`.`surname`, `courses`.`name`, `courses`.`description`
FROM `courses`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `course_teacher`.`teacher_id`= 44;

-- [found = 11]

4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`, `departments`.`name`
FROM `students`
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id` 
ORDER BY `students`.`surname` ASC

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name`, `courses`.`name`, `teachers`.`name`, `teachers`.`surname`
FROM `degrees`
JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`

6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami