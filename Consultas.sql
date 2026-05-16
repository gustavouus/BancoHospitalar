SELECT * FROM pacientes;

SELECT * FROM medicos;

SELECT * FROM consultas;

SELECT medico_id, COUNT(*) AS total_consultas
FROM consultas
GROUP BY medico_id;
