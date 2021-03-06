select sysdate from dual;

ALTER session set NLS_DATE_FORMAT='DD/MM/YYYY';

--- EMPLOYEE INSERTION ---

INSERT INTO EMPLOYEES 
VALUES (1, 'Jake', 'Peralta', 60000, '18/03/2001');
INSERT INTO EMPLOYEES 
VALUES (2, 'Bojack', 'Horseman', 55000, '26/05/2009');
INSERT INTO EMPLOYEES 
VALUES (3, 'Ragnar', 'Lothbrok', 45000, '14/02/2020');
INSERT INTO EMPLOYEES 
VALUES (4, 'Charles', 'White', 69000, '13/03/1999');
INSERT INTO EMPLOYEES 
VALUES (5, 'Mia', 'Malkova', 47000, '01/07/2007');

INSERT INTO EMPLOYEES 
VALUES (6, 'Itachi', 'Uchicha', 34500, '19/10/2007');
INSERT INTO EMPLOYEES 
VALUES (7, 'Levi', 'Ackerman', 33000, '30/08/2013');
INSERT INTO EMPLOYEES 
VALUES (8, 'Michael', 'Scott', 32500, '05/06/2016');
INSERT INTO EMPLOYEES 
VALUES (9, 'Rosa', 'Diaz', 31000, '24/06/2012');
INSERT INTO EMPLOYEES 
VALUES (10, 'Octavia', 'Blake', 34000, '03/09/2010');

INSERT INTO EMPLOYEES 
VALUES (11, 'Thomas', 'Shelby', 42000, '17/07/2004');
INSERT INTO EMPLOYEES 
VALUES (12, 'Eren', 'Yeager', 38500, '22/12/2018');
INSERT INTO EMPLOYEES 
VALUES (13, 'Saul', 'Goodman', 40000, '17/07/2004');
INSERT INTO EMPLOYEES 
VALUES (14, 'Polly', 'Gray', 39000, '23/04/2006');
INSERT INTO EMPLOYEES 
VALUES (15, 'Asuna', 'Yuuki', 37000, '09/01/2019');

INSERT INTO EMPLOYEES 
VALUES (16, 'Walter', 'White', 41500, '10/09/2008');
INSERT INTO EMPLOYEES 
VALUES (17, 'Marty', 'Byrde', 43250, '01/11/2012');
INSERT INTO EMPLOYEES 
VALUES (18, 'Barney', 'Stinson', 48000, '06/05/2005');
INSERT INTO EMPLOYEES 
VALUES (19, 'Jeese', 'Pinkman', 42000, '16/02/2011');
INSERT INTO EMPLOYEES 
VALUES (20, 'Gia', 'Paige', 39000, '02/05/2017');

INSERT INTO DEVELOPER
VALUES ( 1, 101, 'Senior');
INSERT INTO DEVELOPER
VALUES ( 2, 102, 'Junior');
INSERT INTO DEVELOPER
VALUES ( 3, 103, 'Junior');
INSERT INTO DEVELOPER
VALUES ( 4, 104, 'Senior');
INSERT INTO DEVELOPER
VALUES ( 5, 105, 'Intern');

INSERT INTO ARTIST
VALUES ( 6, 206, 10);
INSERT INTO ARTIST
VALUES ( 7, 207, 7);
INSERT INTO ARTIST
VALUES ( 8, 208, 9);
INSERT INTO ARTIST
VALUES ( 9, 209, 6);
INSERT INTO ARTIST
VALUES ( 10, 210, 8);

INSERT INTO TESTER
VALUES ( 11, 311, 5, 20);
INSERT INTO TESTER
VALUES ( 12, 312, 8, 16);
INSERT INTO TESTER
VALUES ( 13, 313, 2, 35);
INSERT INTO TESTER
VALUES ( 14, 314, 3, 30);
INSERT INTO TESTER
VALUES ( 15, 315, 11, 10);

INSERT INTO ANALYST
VALUES ( 16, 416, 2, 38);
INSERT INTO ANALYST
VALUES ( 17, 417, 7, 89);
INSERT INTO ANALYST
VALUES ( 18, 418, 5, 72);
INSERT INTO ANALYST
VALUES ( 19, 419, 3, 46);
INSERT INTO ANALYST
VALUES ( 20, 420, 1, 24);

--- CLIENT INSERTION ---


INSERT INTO CLIENTS
VALUES (1001, 0724581259, 'rick.grimes@gmail.com');
INSERT INTO CLIENTS 
VALUES (1002, 0745819426, 'kazuto.kirigaya@gmail.com');
INSERT INTO CLIENTS 
VALUES (1003, 0720015826, 'gregory.house@yahoo.com');
INSERT INTO CLIENTS 
VALUES (1004, 0735176052, 'michael.corleone@gmail.com');
INSERT INTO CLIENTS 
VALUES (1005, 0335807516, 'gamers.pub@outlook.com');
INSERT INTO CLIENTS 
VALUES (1006, 0764158202, 'patrick.bateman@outlook.com');
INSERT INTO CLIENTS 
VALUES (1007, 0335175291, 'starnet@yahoo.com');
INSERT INTO CLIENTS 
VALUES (1008, 0742175291, 'bilbo.baggins@yahoo.com');
INSERT INTO CLIENTS 
VALUES (1009, 0746175215, 'jack.sparrow@gmail.com');
INSERT INTO CLIENTS 
VALUES (1010, 0765180947, 'cdprojektred@gmail.com');
INSERT INTO CLIENTS 
VALUES (1011, 0735178245, 'hercules.caffe@gmail.com');
INSERT INTO CLIENTS 
VALUES (1012, 0335697127, 'garage.studios@outlook.com');

INSERT INTO ORGANISATION
VALUES(1005, 2005, 'Gamers Pub', 5051980, 95750 );
INSERT INTO ORGANISATION
VALUES(1007, 2007, 'Starnet', 6195260, 325000 );
INSERT INTO ORGANISATION
VALUES(1010, 2010, 'CD Projekt Red', 7189045, 1453000 );
INSERT INTO ORGANISATION
VALUES(1011, 2011, 'Hercules Caffe', 8159215, 680000 );
INSERT INTO ORGANISATION
VALUES(1012, 2012, 'Garage Studios', 3189252, 45000 );

    ---auxiliary needed: LIBRARY INSERTION ---

INSERT INTO LIBRARY
VALUES (4001, 'ricky157s Library');
INSERT INTO LIBRARY 
VALUES (4002, 'kirito/s Library');
INSERT INTO LIBRARY 
VALUES (4003, 'gregory/s Library');
INSERT INTO LIBRARY 
VALUES (4004, 'donvitoc/s Library');
INSERT INTO LIBRARY 
VALUES (4005, 'gamerspub/s Library');
INSERT INTO LIBRARY 
VALUES (4006, 'patrick_bmoney27/s Library');
INSERT INTO LIBRARY 
VALUES (4007, 'starnet/s Library');
INSERT INTO LIBRARY 
VALUES (4008, 'bbagins_ring/s Library');
INSERT INTO LIBRARY 
VALUES (4009, 'black_pearl69/s Library');
INSERT INTO LIBRARY 
VALUES (4010, 'cdprojektred/s Library');
INSERT INTO LIBRARY 
VALUES (4011, 'herculecaffe/s Library');
INSERT INTO LIBRARY 
VALUES (4012, 'garagestudio/s Library');


INSERT INTO PERSON
VALUES(1001, 4001, 3001, 'Rick', 'Grimes', 30, 6, 'ricky157');
INSERT INTO PERSON
VALUES(1002, 4002, 3002, 'Kirigaya', 'Kazuto', 17, 4, 'kirito');
INSERT INTO PERSON
VALUES(1003, 4003, 3003, 'Gregory', 'House', 49, 2, 'housexvicodin');
INSERT INTO PERSON
VALUES(1004, 4004, 3004, 'Michael', 'Corleone', 31, 8, 'donvitoc');
INSERT INTO PERSON
VALUES(1006, 4006, 3006, 'Patrick', 'Bateman', 27, 12, 'patrick_bmoney27');
INSERT INTO PERSON
VALUES(1008, 4008, 3008, 'Bilbo', 'Baggins', 83, 17, 'bbaggins_ring' );
INSERT INTO PERSON
VALUES(1009, 4009, 3009, 'Jack', 'Sparrow', 60, 23, 'black_pearl69');


--- PUBLISHER INSERTION ---


INSERT INTO PUBLISHER 
VALUES (901, 'Bethesda', 20, 'DE27500105175781197381' );
INSERT INTO PUBLISHER 
VALUES (902, 'Valve', 30, 'SE7696727179866746311342');
INSERT INTO PUBLISHER 
VALUES (903, 'Gameloft', 15, 'NL86INGB4521202713');


--- PRODUCT INSERTION ---


INSERT INTO PRODUCT 
VALUES (501, 'Minecraft', 20, 'XBOX');
INSERT INTO PRODUCT 
VALUES (502, 'Skyrim', 15, 'Windows');
INSERT INTO PRODUCT 
VALUES (503, 'Witcher 3', 35, 'XBOX');
INSERT INTO PRODUCT 
VALUES (504, 'Rust', 30, 'PS');
INSERT INTO PRODUCT 
VALUES (505, 'Fallout IV', 50, 'PS');
INSERT INTO PRODUCT 
VALUES (506, 'Black Desert Online', 10, 'Windows');

INSERT INTO PRODUCT 
VALUES (507, 'OBS', 100, 'Windows');
INSERT INTO PRODUCT 
VALUES (508, 'Stream Labs', 250, 'PS');
INSERT INTO PRODUCT 
VALUES (509, 'XREC', 150, 'XBOX');
INSERT INTO PRODUCT 
VALUES (510, 'vMix', 75, 'PS');
INSERT INTO PRODUCT 
VALUES (511, 'Shadowplay', 200, 'Windows');

INSERT INTO PRODUCT 
VALUES (512, 'Unreal Engine 5', 1800, 'Windows');
INSERT INTO PRODUCT 
VALUES (513, 'Emulator v XBOX One/365', 1200, 'XBOX');
INSERT INTO PRODUCT 
VALUES (514, 'Unreal Engine 4', 900, 'Windows');
INSERT INTO PRODUCT 
VALUES (515, 'Ez DLL Configs', 500, 'PS');
INSERT INTO PRODUCT 
VALUES (516, 'Screen Engine', 1500, 'XBOX');


INSERT INTO GAMES 
VALUES (501, 903, 601, 'Survival', '09/08/2009', 'E', 'YES');
INSERT INTO GAMES 
VALUES (502, 901, 602, 'RPG', '04/03/2011', 'T', 'YES');
INSERT INTO GAMES 
VALUES (503, 902, 603, 'RPG', '15/06/2015', 'M', 'NO');
INSERT INTO GAMES 
VALUES (504, 903, 604, 'Survival', '10/10/2010', 'A', 'NO');
INSERT INTO GAMES 
VALUES (505, 901, 605, 'Shooter', '12/07/2016', 'T', 'YES');
INSERT INTO GAMES 
VALUES (506, 902, 606, 'MMORPG', '21/12/2018', 'E', 'NO');


INSERT INTO SOFTWARE 
VALUES (507, 707, '15.6.10');
INSERT INTO SOFTWARE 
VALUES (508, 708, '5.1.3');
INSERT INTO SOFTWARE 
VALUES (509, 709, '7.2.0');
INSERT INTO SOFTWARE 
VALUES (510, 710, '0.2.4');
INSERT INTO SOFTWARE 
VALUES (511, 711, '2.1.1');


INSERT INTO SOFTWARE 
VALUES (512, 712, '11.5.3'); 
INSERT INTO SOFTWARE 
VALUES (513, 713, '0.8.94'); 
INSERT INTO SOFTWARE 
VALUES (514, 714, '0.2');
INSERT INTO SOFTWARE 
VALUES (515, 715, '13.5.12');
INSERT INTO SOFTWARE 
VALUES (516, 716, '29.16.53');


INSERT INTO STREAMING_SOFTWARE
VALUES (707, 807, 'Twitch');
INSERT INTO STREAMING_SOFTWARE
VALUES (708, 808, 'Youtube');
INSERT INTO STREAMING_SOFTWARE
VALUES (709, 809, 'Azuba');
INSERT INTO STREAMING_SOFTWARE
VALUES (710, 810, 'Twitch');
INSERT INTO STREAMING_SOFTWARE
VALUES (711, 811, 'Twitch');


INSERT INTO DEV_UTILITIES
VALUES (712, 862, 'Premium');
INSERT INTO DEV_UTILITIES
VALUES (713, 863, 'Basic');
INSERT INTO DEV_UTILITIES
VALUES (714, 864, 'Creator');
INSERT INTO DEV_UTILITIES
VALUES (715, 865, 'Premium');
INSERT INTO DEV_UTILITIES
VALUES (716, 866, 'Basic');


--- PAYMENT INSERTION ---


INSERT INTO PAYMENT 
VALUES (6001, 'Paypal', 8001, '16/03/2021', 'Great!'); 
INSERT INTO PAYMENT(payment_id, payment_type, receipt_id, receipt_date) 
VALUES (6002, 'VISA', 8002, '23/05/2021'); 
INSERT INTO PAYMENT 
VALUES (6003, 'Mastercard', 8003, '18/04/2021', 'I rate it 5/7'); 
INSERT INTO PAYMENT(payment_id, payment_type, receipt_id, receipt_date)  
VALUES (6004, 'Swift', 8004, '12/02/2021'); 
INSERT INTO PAYMENT 
VALUES (6005, 'Paysafe Card', 8005, '05/01/2021', 'I am angry !'); 
INSERT INTO PAYMENT(payment_id, payment_type, receipt_id, receipt_date)  
VALUES (6006, 'Revolut', 8006, '03/05/2021'); 
INSERT INTO PAYMENT 
VALUES (6007, 'VISA', 8007, '21/04/2021', 'The best, as expected xD'); 

--- ORDER INSERTION ---


INSERT INTO ORDERS
VALUES (10001, 6001, 1001, '19/04/2021', '44.35.142.73', 15);
INSERT INTO ORDERS(order_id, payment_id, client_id, order_date, user_ip)
VALUES (10002, 6002, 1003, '27/05/2021', '141.17.241.50');
INSERT INTO ORDERS
VALUES (10003, 6003, 1005, '01/05/2021', '83.196.223.229', 5);
INSERT INTO ORDERS(order_id, payment_id, client_id, order_date, user_ip)
VALUES (10004, 6004, 1009, '08/03/2021', '128.88.220.189');
INSERT INTO ORDERS
VALUES (10005, 6005, 1010, '22/02/2021', '56.26.41.219', 10);
INSERT INTO ORDERS(order_id, payment_id, client_id, order_date, user_ip)
VALUES (10006, 6006, 1001, '28/09/2020', '44.35.142.73');
INSERT INTO ORDERS
VALUES (10007, 6007, 1005, '14/02/2021', '83.196.223.229', 6);

--- PROJECT INSERTION ---

INSERT INTO PROJECT 
VALUES (5001, 'Elder Scrolls VI', 37);
INSERT INTO PROJECT 
VALUES (5002, 'GTA VI', 15);
INSERT INTO PROJECT 
VALUES (5003, 'Half-Life 3', 3);
INSERT INTO PROJECT 
VALUES (5004, 'Outlast 3', 75);
INSERT INTO PROJECT 
VALUES (5005, 'Hytale', 90);

INSERT INTO PROJECT 
VALUES (5006, 'Unreal Engine 6', 63);
INSERT INTO PROJECT 
VALUES (5007, 'OBS 2.0', 48);
INSERT INTO PROJECT 
VALUES (5008, 'Game Maker V8', 50);
INSERT INTO PROJECT 
VALUES (5009, 'Cross-Platform Emulator', 14);
INSERT INTO PROJECT 
VALUES (5010, 'Multi-Chat CTRL', 96);


INSERT INTO UNFINISHED_GAMES
VALUES (5201, 5001, '21/05/2026', 'NO' );
INSERT INTO UNFINISHED_GAMES
VALUES (5202, 5002, '14/02/2025', 'NO' );
INSERT INTO UNFINISHED_GAMES
VALUES (5203, 5003, '16/08/2028', 'NO' );
INSERT INTO UNFINISHED_GAMES
VALUES (5204, 5004, '30/06/2022', 'YES' );
INSERT INTO UNFINISHED_GAMES
VALUES (5205, 5005, '31/12/2021', 'YES' );


INSERT INTO UNFINISHED_SOFT
VALUES (5106, 5006, 416,'In Development' );
INSERT INTO UNFINISHED_SOFT
VALUES (5107, 5007, 417, 'In Development');
INSERT INTO UNFINISHED_SOFT
VALUES (5108, 5008, 418, 'First Stage Testing' );
INSERT INTO UNFINISHED_SOFT
VALUES (5109, 5009, 419, 'Starting' );
INSERT INTO UNFINISHED_SOFT
VALUES (5110, 5010, 420, 'Final Testing');


--- LIBRARY_GAMES INSERTION ---

INSERT INTO GAMES_LIBRARY
VALUES (601, 4001);
INSERT INTO GAMES_LIBRARY
VALUES (602, 4001);
INSERT INTO GAMES_LIBRARY
VALUES (603, 4001);
INSERT INTO GAMES_LIBRARY
VALUES (604, 4005);
INSERT INTO GAMES_LIBRARY
VALUES (606, 4005);
INSERT INTO GAMES_LIBRARY
VALUES (602, 4008);
INSERT INTO GAMES_LIBRARY
VALUES (603, 4008);
INSERT INTO GAMES_LIBRARY
VALUES (604, 4008);
INSERT INTO GAMES_LIBRARY
VALUES (601, 4009);
INSERT INTO GAMES_LIBRARY
VALUES (602, 4009);
INSERT INTO GAMES_LIBRARY
VALUES (603, 4002);
INSERT INTO GAMES_LIBRARY
VALUES (606, 4002);
INSERT INTO GAMES_LIBRARY
VALUES (601, 4002);
INSERT INTO GAMES_LIBRARY
VALUES (602, 4002);
INSERT INTO GAMES_LIBRARY
VALUES (603, 4007);


--- PRODUCT_ORDER INSERTION ---


INSERT INTO PRODUCT_ORDER
VALUES (501, 10001);
INSERT INTO PRODUCT_ORDER
VALUES (504, 10001);
INSERT INTO PRODUCT_ORDER
VALUES (510, 10001);
INSERT INTO PRODUCT_ORDER
VALUES (508, 10002);
INSERT INTO PRODUCT_ORDER
VALUES (507, 10002);
INSERT INTO PRODUCT_ORDER
VALUES (506, 10003);
INSERT INTO PRODUCT_ORDER
VALUES (502, 10004);
INSERT INTO PRODUCT_ORDER
VALUES (503, 10004);
INSERT INTO PRODUCT_ORDER
VALUES (509, 10004);
INSERT INTO PRODUCT_ORDER
VALUES (508, 10005);


--- PROJECT_DEVELOPER INSERTION ---

INSERT INTO PROJECT_DEVELOPER
VALUES (5001, 101);
INSERT INTO PROJECT_DEVELOPER
VALUES (5001, 103);
INSERT INTO PROJECT_DEVELOPER
VALUES (5001, 104);
INSERT INTO PROJECT_DEVELOPER
VALUES (5002, 101);
INSERT INTO PROJECT_DEVELOPER
VALUES (5002, 105);
INSERT INTO PROJECT_DEVELOPER
VALUES (5003, 103);
INSERT INTO PROJECT_DEVELOPER
VALUES (5003, 105);
INSERT INTO PROJECT_DEVELOPER
VALUES (5004, 101);
INSERT INTO PROJECT_DEVELOPER
VALUES (5005, 102);
INSERT INTO PROJECT_DEVELOPER
VALUES (5005, 103);

--- PROJECT_TESTER INSERTION ---

INSERT INTO PROJECT_TESTER
VALUES (5001, 312);
INSERT INTO PROJECT_TESTER
VALUES (5001, 313);
INSERT INTO PROJECT_TESTER
VALUES (5002, 312);
INSERT INTO PROJECT_TESTER
VALUES (5002, 314);
INSERT INTO PROJECT_TESTER
VALUES (5002, 315);
INSERT INTO PROJECT_TESTER
VALUES (5003, 312);
INSERT INTO PROJECT_TESTER
VALUES (5003, 314);
INSERT INTO PROJECT_TESTER
VALUES (5004, 314);
INSERT INTO PROJECT_TESTER
VALUES (5004, 315);
INSERT INTO PROJECT_TESTER
VALUES (5005, 313);

--- PROJECT_ARTIST INSERTION ---

INSERT INTO PROJECT_ARTIST
VALUES (5201, 206);
INSERT INTO PROJECT_ARTIST
VALUES (5201, 207);
INSERT INTO PROJECT_ARTIST
VALUES (5201, 208);
INSERT INTO PROJECT_ARTIST
VALUES (5201, 209);
INSERT INTO PROJECT_ARTIST
VALUES (5202, 206);
INSERT INTO PROJECT_ARTIST
VALUES (5202, 208);
INSERT INTO PROJECT_ARTIST
VALUES (5203, 207);
INSERT INTO PROJECT_ARTIST
VALUES (5203, 209);
INSERT INTO PROJECT_ARTIST
VALUES (5204, 207);
INSERT INTO PROJECT_ARTIST
VALUES (5205, 209);


