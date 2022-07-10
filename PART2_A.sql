SET SQLPROMPT "W21050558 > "

SET VERIFY ON

/* Setup File for DML, DMA FINAL ASSIGNMENT PART2 Q.A */

SET ECHO ON

INSERT INTO AGENT VALUES (10,'NEWCASTLE','NEWCASTLE REAL ESTATE','GIBSON ST, 1','WWW.NCRE.CO.UK','+441234567890');
INSERT INTO AGENT VALUES (11,'COVENTRY','COVENTRY REAL ESTATE','BERRY ST, 2','WWW.CRE.CO.UK','+441234567891');
INSERT INTO AGENT VALUES (12,'LONDON','LONDON REAL ESTATE','GOSSET ST, 3','WWW.LRE.CO.UK','+441234567892');
INSERT INTO AGENT VALUES (13,'EDINBURGH','EDINBURGH REAL ESTATE','PRINCESS ST, 4','WWW.EDRE.CO.UK','+441234567893');
INSERT INTO AGENT VALUES (14,'WOKING','WOKING REAL ESTATE','GUILDFORD ST, 5','WWW.WRE.CO.UK','+441234567894');
INSERT INTO AGENT VALUES (15,'BRISTOL','BRISTOL REAL ESTATE','TEMPLE ST, 6','WWW.BRE.CO.UK','+441234567895');
INSERT INTO AGENT VALUES (16,'NEWCASTLE','BEST NEWCASTLE REAL ESTATE','NEWTON ST, 13','WWW.BNCRE.CO.UK','+441234567896');
INSERT INTO AGENT VALUES (17,'ESSEX','ESSEX REAL ESTATE','PALM ST, 7','WWW.ERE.CO.UK','+441234567897');

INSERT INTO BRANCH VALUES (1,10,'QUEENSWAY 5, FENHAM, NEWCASTLE','+441234567898',100);
INSERT INTO BRANCH VALUES (2,10,'HEATON RD 12, HEATON, NEWCASTLE','+441234567899',150);
INSERT INTO BRANCH VALUES (3,13,'MOUNT RD 34, SUNDERLAND','+441234567810',145);
INSERT INTO BRANCH VALUES (4,10,'RODSLEY AVE 77, GATESHEAD','+441234567811',112);
INSERT INTO BRANCH VALUES (5,12,'NORA ST 5, SUNDERLAND','+441234567812',200);
INSERT INTO BRANCH VALUES (6,14,'NORTHUMBRIAN RD 85, CRAMLINGTON','+441234567813',333);
INSERT INTO BRANCH VALUES (7,15,'BRISTOL ST 1, BRISTOL','+441234567814',334);
INSERT INTO BRANCH VALUES (8,16,'WINGROVE RD 45, FENHAM, NEWCASTLE','+441234567815',107);

INSERT INTO STAFF VALUES (100,1,'JOHN CARREW','NEWCASTLE RD 5, NEWCASTLE','+441234567816','S','Y');
INSERT INTO STAFF VALUES (101,1,'CYNTHIA MOORE','KINGS AVE 34, NEWCASTLE','+441234567817','M','N');
INSERT INTO STAFF VALUES (102,3,'MAXIME BELLUS','PORT ST 23, SUNDERLAND','+441234567818','M','N');
INSERT INTO STAFF VALUES (103,2,'BILBO BAGGINS','THE SHIRE 4, MIDDLE EARTH','+441234567819','S','N');
INSERT INTO STAFF VALUES (104,5,'MARTHA GUNNAR','OLD TOWN ST 15, SUNDERLAND','+441234567820','W','N');
INSERT INTO STAFF VALUES (105,6,'LENA ANDERSON','CASTLE NEW AVE 99 CRAMLINGTON','+441234567821','S','N');
INSERT INTO STAFF VALUES (106,7,'DANIEL WROE','CIRCUS RD 13, BRISTOL','+441234567822','M','N');
INSERT INTO STAFF VALUES (107,8,'NEIL MCBRIDE','ADAM SMITH AVE 55, NEWCASTLE','+441234567823','S','Y');
INSERT INTO STAFF VALUES (108,7,'EVITA RUSSEL','LORIEN 23, BRISTOL','+441234567824','S','N');
INSERT INTO STAFF VALUES (109,4,'LEWIS BALFE','GATESHEAD RD 1, GATESHEAD','+441234657842','W','N');

INSERT INTO CUSTOMER VALUES (200,'BRENNAN LAWSON','SPRINGFIELD RD 97, TAUNTON','16-JUN-1988','M','+441234567825');
INSERT INTO CUSTOMER VALUES (201,'KAISHA MILNE','MANCHESTER RD 53, LLANDRINDOD WELLS','28-SEP-1978','F','+441234567826');
INSERT INTO CUSTOMER VALUES (202,'SKYLA WARDLE','MAIN ROAD 46, BRIGHTON','23-APR-1990','F','+441234567827');
INSERT INTO CUSTOMER VALUES (203,'TOMMIE DRISCOLL','ALMOND VILLAS 13, WOKING','23-JUN-1965','M','+441234567828');
INSERT INTO CUSTOMER VALUES (204,'RENAE BELTRAN','MERRION STRAND 88, DUBLIN','09-JUL-2002','F','+441234567829');
INSERT INTO CUSTOMER VALUES (205,'NEAL MCGEE','SEAVIEW RD 9, NEWRY','01-AUG-1976','M','+441234567830');
INSERT INTO CUSTOMER VALUES (206,'LIAM PATERSON','NEW ROAD 34, BELFAST','30-OCT-1994','M','+441234567831');
INSERT INTO CUSTOMER VALUES (207,'ANNA WEBSTER','LONDON RD 115, LONDON','09-DEC-1999','F','+441234567832');
INSERT INTO CUSTOMER VALUES (208,'THOMAS MILLER','BLUEBERRY RD 115, MANCHESTER','09-DEC-1980','M','+441234567833');
INSERT INTO CUSTOMER VALUES (209,'ANNA WEBSTER','LIVERPOOL AVE 115, LIVERPOOL','09-AUG-1976','F','+441234567834');

INSERT INTO CUST_TO_BRANCH VALUES (200,1);
INSERT INTO CUST_TO_BRANCH VALUES (201,2);
INSERT INTO CUST_TO_BRANCH VALUES (201,1);
INSERT INTO CUST_TO_BRANCH VALUES (201,5);
INSERT INTO CUST_TO_BRANCH VALUES (202,8);
INSERT INTO CUST_TO_BRANCH VALUES (203,7);
INSERT INTO CUST_TO_BRANCH VALUES (204,4);
INSERT INTO CUST_TO_BRANCH VALUES (204,5);
INSERT INTO CUST_TO_BRANCH VALUES (205,2);
INSERT INTO CUST_TO_BRANCH VALUES (206,2);
INSERT INTO CUST_TO_BRANCH VALUES (207,3);
INSERT INTO CUST_TO_BRANCH VALUES (208,1);
INSERT INTO CUST_TO_BRANCH VALUES (209,5);

INSERT INTO CUSTOMER_INTENTION VALUES (200,'SELL');
INSERT INTO CUSTOMER_INTENTION VALUES (200,'BUY');
INSERT INTO CUSTOMER_INTENTION VALUES (201,'SELL');
INSERT INTO CUSTOMER_INTENTION VALUES (202,'SELL');
INSERT INTO CUSTOMER_INTENTION VALUES (203,'SELL');
INSERT INTO CUSTOMER_INTENTION VALUES (204,'LEASE');
INSERT INTO CUSTOMER_INTENTION VALUES (205,'RENT');
INSERT INTO CUSTOMER_INTENTION VALUES (206,'LEASE');
INSERT INTO CUSTOMER_INTENTION VALUES (207,'RENT');
INSERT INTO CUSTOMER_INTENTION VALUES (208,'BUY');
INSERT INTO CUSTOMER_INTENTION VALUES (209,'BUY');

INSERT INTO PROPERTY VALUES(300,202,1,375000,NULL,'05-MAY-2022','ALDER AVE 3','FENHAM',NULL,'72 SQM','DETACHED',5,'SOLD');
INSERT INTO PROPERTY VALUES(301,201,2,400000,NULL,'28-APR-2022','MELDON TERRACE 24','HEATON','BEAUTIFUL LOCATION','84 SQM','SEMI DETACHED',4,'SOLD');
INSERT INTO PROPERTY VALUES(302,203,7,132000,NULL,'05-FEB-2018','BRIGSTOCKE RD 88','BRISTOL','NEAR THE CINEMA','50 SQM','SEMI DETACHED',2,'AVAILABLE');
INSERT INTO PROPERTY VALUES(303,200,4,250000,NULL,'15-DEC-2021','SPLIT CROW RD 56','GATESHEAD','CLOSE TO THE SHOPPING MALL','120 SQM','SEMI DETACHED',5,'SOLD');
INSERT INTO PROPERTY VALUES(304,202,8,120000,NULL,'12-MAR-2022','WILLOW AVE 15','FENHAM','FACING A QUIET ROAD','92 SQM','DETACHED',4,'AVAILABLE');
INSERT INTO PROPERTY VALUES(305,203,6,700000,NULL,'24-MAR-2019','NAIRN RD 1','CRAMLINGTON',NULL,'64 SQM','CONDO',2,'SOLD');
INSERT INTO PROPERTY VALUES(306,206,2,NULL,2100,'18-FEB-2019','LESBURY RD 67','HEATON','NEAR THE PARK','140 SQM','DETACHED',6,'RENTED');
INSERT INTO PROPERTY VALUES(307,204,5,NULL,1499,'07-NOV-2017','NEWLANDS AVE 17','SUNDERLAND','NEXT TO THE KINDERGARDEN','67 SQM','APARTMENT',3,'RENTED');
INSERT INTO PROPERTY VALUES(308,201,1,180000,NULL,'29-MAY-2022','PALM AVE 12','FENHAM',NULL,'200 SQM','APARTMENT',7,'SOLD');
INSERT INTO PROPERTY VALUES(309,201,5,200000,NULL,'07-SEP-2020','NEWLANDS AVE 44','SUNDERLAND',NULL,'60 SQM','CONDO',3,'SOLD');
INSERT INTO PROPERTY VALUES(310,203,2,200000,NULL,'30-MAY-2022','OLDLANDS RD 44','HEATON','SAFE NEIGHBOURHOOD','102 SQM','DETACHED',6,'AVAILABLE');
INSERT INTO PROPERTY VALUES(311,202,1,150000,NULL,'01-JUL-2022','HELDON AVE 2','FENHAM','WALKING DISTANCE FROM TRAIN STATION','99 SQM','SEMI DETACHED',5,'AVAILABLE');
INSERT INTO PROPERTY VALUES(312,201,8,300000,NULL,'16-JUN-2022','ERMOU 33','FENHAM',NULL,'78 SQM','DETACHED',4,'AVAILABLE');
INSERT INTO PROPERTY VALUES(313,203,2,350000,NULL,'02-JUL-2022','APOLLO ST 14','HEATON',NULL,'95 SQM','SEMI DETACHED',5,'AVAILABLE');

INSERT INTO PROPERTY_SOLD (BUYER_ID, PROPERTY_ID, SELLING_PRICE, TRANSACTION_DATE) VALUES (200,300,375000,'10-FEB-2022');
INSERT INTO PROPERTY_SOLD (BUYER_ID, PROPERTY_ID, SELLING_PRICE, TRANSACTION_DATE) VALUES (208,301,400000,'01-JAN-2018');
INSERT INTO PROPERTY_SOLD (BUYER_ID, PROPERTY_ID, SELLING_PRICE, TRANSACTION_DATE) VALUES (208,303,250000,'30-JUN-2019');
INSERT INTO PROPERTY_SOLD (BUYER_ID, PROPERTY_ID, SELLING_PRICE, TRANSACTION_DATE) VALUES (209,309,200000,'11-AUG-2021');
INSERT INTO PROPERTY_SOLD (BUYER_ID, PROPERTY_ID, SELLING_PRICE, TRANSACTION_DATE) VALUES (208,308,180000,'21-SEP-2020');
INSERT INTO PROPERTY_SOLD (BUYER_ID, PROPERTY_ID, SELLING_PRICE, TRANSACTION_DATE) VALUES (200,305,700000,'10-DEC-2017');

INSERT INTO PROPERTY_RENTED (TENANT_ID, PROPERTY_ID, LANDLORD_ID, RENT_PER_MONTH, START_DATE, END_DATE, SCHEME) VALUES (205,306,206,2100,'01-JAN-2020','01-JAN-2025','Top Tier Insurance Scheme');
INSERT INTO PROPERTY_RENTED (TENANT_ID, PROPERTY_ID, LANDLORD_ID, RENT_PER_MONTH, START_DATE, END_DATE, SCHEME) VALUES (207,307,204,1499,'15-MAR-2019','01-APR-2023','Mid Tier Insurance Scheme');

INSERT INTO VIEWINGS VALUES (304,208,'06-JUN-2022 10:00:00','REASONABLE PRICE, NICE VIEW');
INSERT INTO VIEWINGS VALUES (302,207,'25-MAR-2022 16:00:00', NULL);
