--- Teste ---

select * from employees;

select * from clients;

select * from organisation;

select * from unfinished_games;

-----> 11. <-----

-- 1. Sa se afiseze numele si emailul PERSOANELOR care au litera 'k' in nume si care au finalizat o comanda ( order ), 
-- inclusiv cei care nu au email, si mentiunile clientilor dupa efectuarea platii. 

SELECT p.first_name, p.last_name, c.email, o.order_id, pm.mentions
FROM PERSON p JOIN CLIENTS c ON ( c.client_id = p.client_id )
              JOIN ORDERS o ON ( o.client_id = p.client_id )
              JOIN PAYMENT pm ON ( pm.payment_id = o.payment_id )
WHERE LOWER(p.first_name) LIKE '%k%' OR LOWER(p.last_name) LIKE '%k%'
ORDER BY p.first_name;

-- 2. Sa se afieze numele, salariul si anii vechime ai angajatiilor care au salariul mai mic decat media salariilor ,
-- , care au fost angajati dupa anul 2011, pozitia lor in companie, ordonati crescator dupa salariu.

WITH aux(average) AS
    (SELECT AVG(salary) FROM employees)
SELECT e.first_name, e.last_name, round(months_between(sysdate, e.hire_date)/12) seniority, e.salary
FROM employees e, aux
WHERE e.salary < aux.average
AND EXTRACT ( YEAR FROM e.hire_date ) > 2011
ORDER BY e.salary;

-- 3. Sa se afiseze toate numele jocurilor, id-ul lor si libraria in care se afla, 
-- pentru jocurile care fac parte din librarii ce contin jocuri de genul 'mmorpg'.

SELECT pr.name Game, gg.game_id, lib.library_id, lib.library_title
FROM LIBRARY lib JOIN GAMES_LIBRARY gamesl ON ( lib.library_id = gamesl.library_id )
                 JOIN GAMES gg ON ( gamesl.game_id = gg.game_id )
                 JOIN PRODUCT pr ON ( gg.product_id = pr.product_id )
    WHERE lib.library_title IN
        ( SELECT l.library_title Title
            FROM LIBRARY l JOIN GAMES_LIBRARY gl ON ( l.library_id = gl.library_id )
                           JOIN GAMES g ON ( gl.game_id = g.game_id )
            WHERE LOWER(g.genre) LIKE 'mmorpg');

-- 4. Sa se afiseze numele si prenumele angajatilor care sunt artisti si lucreaza in prezent la un joc neterminat,
-- impreuna cu anotimpul in care au fost angajati.

SELECT em.employee_id, em.first_name, em.last_name,
decode( extract(month from em.hire_date), 12, 'Winter', 1, 'Winter', 2, 'Winter',
                                          3, 'Spring', 4, 'Spring', 5, 'Spring',
                                          6, 'Summer', 7, 'Summer', 8, 'Summer',
                                          9, 'Autumn', 10, 'Autumn', 11, 'Autumn') Season
FROM EMPLOYEES em 
WHERE em.last_name IN 
(SELECT e.last_name
    FROM UNFINISHED_GAMES uf JOIN PROJECT_ARTIST pa ON ( uf.unfinished_game_id = pa.unfinished_game_id )
                             JOIN ARTIST a ON ( pa.artist_id = a.artist_id )
                             JOIN EMPLOYEES e ON ( a.employee_id = e.employee_id )
                             );

-- 5. Sa se afiseze id-ul clientilor si nr lor de comenzi, alaturi de mail-ul lor
-- , iar pentru clientii care au dat mai mult de o comanda, sa se afiseze statutul de "Active"

SELECT c.client_id, NVL(c.email, 'Not Specified'), 
CASE WHEN COUNT(*) > 1 THEN 'Active' ELSE 'Inactive' END Status
FROM CLIENTS c JOIN ORDERS o ON ( o.client_id = c.client_id )
GROUP BY c.client_id, c.email;


-----> 12. <-----

-- 1. Sa se adauge 10% in plus la salariul angajatilor care au vechimea de minim 10 ani.

UPDATE EMPLOYEES 
SET SALARY = SALARY + 0.1 * SALARY
WHERE employee_id IN
      (SELECT e.employee_id
       FROM EMPLOYEES e
       WHERE ROUND(EXTRACT( YEAR FROM sysdate ) - EXTRACT( YEAR FROM e.hire_date ) ) > 9 );

-- 2. Sa se reduca pretul jocurilor pentru copii ( age rating E ) cu 25%.

UPDATE PRODUCT
SET PRICE = PRICE - 0.25 * PRICE
WHERE product_id IN
      (SELECT p.product_id
      FROM PRODUCT p JOIN GAMES g ON ( g.product_id = p.product_id )
      WHERE g.age_rating like 'E');
      

-- 3. Sa se stearga din baza de date toate companiile la care nu se cunoaste valorea neta.

DELETE from ORGANISATION og
WHERE og.organisation_id IN 
         ( SELECT o.organisation_id 
           FROM ORGANISATION o 
           WHERE o.net_worth IS NULL);


-----> 13. <-----


create sequence PUBLISHER_SEQ increment by 1 start with 904;
drop sequence PUBLISHER_SEQ;

insert into PUBLISHER values(PUBLISHER_SEQ.NEXTVAL, 'Iron Gate Studios', 5, 'SE5729256165998787184373');
insert into PUBLISHER values(PUBLISHER_SEQ.NEXTVAL, 'EA', 60, 'XK551151817765264628');


-----> 14. <-----

-- 14. Crearea unei vizualizari compuse. Dati un exemplu de operatie LMD permisa pe
-- vizualizarea respectiva si un exemplu de operatie LMD nepermisa. 

SELECT l.library_title Title, l.library_id, g.game_id, g.genre, p.publisher_id, p.name 
            FROM LIBRARY l JOIN GAMES_LIBRARY gl ON ( l.library_id = gl.library_id )
                           JOIN GAMES g ON ( gl.game_id = g.game_id )
                           JOIN PUBLISHER p ON ( p.publisher_id = g.publisher_id );

CREATE TABLE clone_library AS SELECT * FROM LIBRARY;

CREATE TABLE clone_games_library AS SELECT * FROM GAMES_LIBRARY;

CREATE TABLE clone_games AS SELECT * FROM GAMES;

CREATE TABLE clone_publisher AS SELECT * FROM PUBLISHER;


CREATE OR REPLACE VIEW GAMES_VIEWS AS
SELECT cl.library_title Title, cl.library_id, cg.game_id, cg.genre, cp.publisher_id, cp.name 
            FROM clone_library cl JOIN clone_games_library cgl ON ( cl.library_id = cgl.library_id )
                           JOIN clone_games cg ON ( cgl.game_id = cg.game_id )
                           JOIN clone_publisher cp ON ( cp.publisher_id = cg.publisher_id );
                           

-- Sa se afiseze toate jocurile de genul RPG cu publisherul BETHESDA si sa se specifice in ce librarii se regasesc acestea.

-- Operatie posibila

SELECT gv.game_id, gv.title Library, gv.library_id ID
FROM GAMES_VIEWS gv 
WHERE gv.name like 'Bethesda';

-- Operatie imposibila       
                        
INSERT INTO GAMES_VIEWS 
VALUES ('Fake Library', 4211, 679, 'Fake', 911, 'Fake Publisher');                          
          
          
---> 15. <---

CREATE INDEX search_employees
ON EMPLOYEES(first_name, last_name);

SELECT first_name, last_name
FROM EMPLOYEES
WHERE last_name LIKE '%man' OR first_name LIKE '%y';

drop index search_employees;