-- sql island game queries

SELECT * FROM INHABITANT

SELECT * FROM INHABITANT WHERE state = 'friendly'

SELECT * FROM INHABITANT WHERE state = 'friendly' and job = 'weaponsmith'

SELECT * from inhabitant where state = 'friendly'and job LIKE '%smith'

SELECT personid from INHABITANT WHERE name='Stranger'

SELECT gold from INHABITANT WHERE personid = 20

SELECT item,owner from ITEM WHERE owner IS NULL 

UPDATE item SET owner = 20 WHERE owner IS NULL

SELECT * from ITEM WHERE owner=20

SELECT * FROM INHABITANT
WHERE (job='dealer' or job='merchant') and (state='friendly') 

update item set owner = 15 where item = 'ring'

update item set owner = 15 where item = 'teapot'

UPDATE INHABITANT set name='cem' where personid=20

SELECT * FROM INHABITANT Where job='baker' ORDER BY gold DESC

SELECT * FROM INHABITANT Where job='pilot'

SELECT inhabitant.name  FROM village, inhabitant 
WHERE inhabitant.personid = village.chief AND village.name = 'Onionville' 

SELECT COUNT(*) from inhabitant where villageid = 3 and gender = 'f'

SELECT name from inhabitant where villageid = 3 and gender = 'f'

SELECT SUM(inhabitant.gold) FROM inhabitant  WHERE job = 'baker' OR job = 'dealer'  OR job = 'merchant'

SELECT state, AVG(gold) FROM inhabitant GROUP BY state order by AVG(gold)
