SELECT COUNT(*), DAYNAME(CONCAT('2021-' ,SUBSTRING([имя столбца с датами рождения],6,5))) AS dayweek
from [название таблицы]
GROUP BY dayweek;