SELECT cs.date,
    sus.name,
    sus.attire,
    sus.scar,
    cs.type,
    cs.location,
    cs.description,
    inter.transcript
FROM suspects AS sus
    LEFT JOIN crime_scene AS cs ON sus.id = cs.id
    INNER JOIN interviews AS inter ON inter.suspect_id = sus.id
WHERE sus.scar = 'left cheek'
    AND sus.attire = 'trench coat'