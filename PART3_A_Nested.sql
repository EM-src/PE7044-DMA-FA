SET SQLPROMPT "W21050558 > "

SET VERIFY ON

SET ECHO ON

CREATE TYPE BRANCH_TYPE_NEST AS OBJECT (
  BRANCH_ID           NUMBER(3),
  ADDRESS             VARCHAR(100),
  CONTACT_DETAILS     CHAR(13),
  MANAGER_ID          NUMBER(3)
)
/

CREATE TYPE BR_NEST_TYPE AS TABLE OF BRANCH_TYPE_NEST
/

CREATE TABLE AGENTS_AND_BRANCHES (
  AGENT_ID            NUMBER(3),
  BRANCH_DETAILS      BR_NEST_TYPE,
  HEADQUARTER         VARCHAR(25),
  FULL_NAME           VARCHAR(50),
  ADDRESS             VARCHAR(100),
  WEBSITE             VARCHAR(50),
  CONTACT_DETAILS     CHAR(13)
)
NESTED TABLE BRANCH_DETAILS STORE AS BR_DETS
/

INSERT INTO AGENTS_AND_BRANCHES VALUES (10, BR_NEST_TYPE(BRANCH_TYPE_NEST(1,'QUEENSWAY 5, FENHAM, NEWCASTLE','+441234567898',100),
                                      BRANCH_TYPE_NEST(2,'HEATON RD 12, HEATON, NEWCASTLE','+441234567899',150),
                                      BRANCH_TYPE_NEST(4,'RODSLEY AVE 77, GATESHEAD','+441234567811',103)),
                                      'NEWCASTLE','NEWCASTLE REAL ESTATE','GIBSON ST, 1','WWW.NCRE.CO.UK','+441234567890');
INSERT INTO AGENTS_AND_BRANCHES VALUES (12, BR_NEST_TYPE(BRANCH_TYPE_NEST(5,'NORA ST 5, SUNDERLAND','+441234567812',200)),
                                      'LONDON','LONDON REAL ESTATE','GOSSET ST, 3','WWW.LRE.CO.UK','+441234567892');
INSERT INTO AGENTS_AND_BRANCHES VALUES (13, BR_NEST_TYPE(BRANCH_TYPE_NEST(3,'MOUNT RD 34, SUNDERLAND','+441234567810',145)),
                                      'EDINBURGH','EDINBURGH REAL ESTATE','PRINCESS ST, 4','WWW.EDRE.CO.UK','+441234567893');
INSERT INTO AGENTS_AND_BRANCHES VALUES (14, BR_NEST_TYPE(BRANCH_TYPE_NEST(6,'NORTHUMBRIAN RD 85, CRAMLINGTON','+441234567813',333)),
                                      'WOKING','WOKING REAL ESTATE','GUILDFORD ST, 5','WWW.WRE.CO.UK','+441234567894');
INSERT INTO AGENTS_AND_BRANCHES VALUES (16, BR_NEST_TYPE(BRANCH_TYPE_NEST(8,'WINGROVE RD 45, FENHAM, NEWCASTLE','+441234567815',107)),
                                      'NEWCASTLE','BEST NEWCASTLE REAL ESTATE','NEWTON ST, 13','WWW.BNCRE.CO.UK','+441234567896');

/*
  DISPLAY DETAILS OF ALL BRANCHES REGISTERED IN AGENTS WITH FULL NAME 'NEWCASTLE REAL ESTATE'
  AND 'EDINBURGH REAL ESTATE' OR WITH BRANCH MANAGER_ID 107.
*/

SELECT AC.AGENT_ID, AC.FULL_NAME, BD.BRANCH_ID, BD.CONTACT_DETAILS AS "BRANCH_CD", BD.ADDRESS AS "BRANCH_AD", BD.MANAGER_ID
FROM AGENTS_AND_BRANCHES AC, TABLE(AC.BRANCH_DETAILS) BD
WHERE AC.FULL_NAME IN ('NEWCASTLE REAL ESTATE', 'EDINBURGH REAL ESTATE')
UNION
SELECT AC.AGENT_ID, AC.FULL_NAME, BD.BRANCH_ID, BD.CONTACT_DETAILS AS "BRANCH_CD", BD.ADDRESS AS "BRANCH_AD", BD.MANAGER_ID
FROM AGENTS_AND_BRANCHES AC, TABLE(AC.BRANCH_DETAILS) BD
WHERE BD.MANAGER_ID = 107
/
