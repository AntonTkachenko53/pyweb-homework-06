SELECT st.name, sm.mark, g.group_char, su.subject
FROM students st RIGHT JOIN student_marks sm ON st.id = sm.student_id
JOIN groups g ON st.group_char = g.group_char
JOIN subjects su ON su.id = sm.subject_id
WHERE g.group_char = 'A' AND su.id = 2
ORDER BY sm.mark DESC;