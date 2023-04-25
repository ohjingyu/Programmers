SELECT
    a.animal_id ,
    a.name
FROM
    animal_ins a ,
    animal_outs b
WHERE
    (a.animal_id = b.animal_id) AND
    (b.datetime < a.datetime)
ORDER BY
    a.datetime asc