--------------------------------------------------------
--  File created - Monday-May-04-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ACTID
--------------------------------------------------------

   CREATE SEQUENCE  "ACTID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "DEPARTMENT" 
   (	"DEP_ID" NUMBER, 
	"DEP_NAME" VARCHAR2(20 BYTE), 
	"LOCATION" VARCHAR2(30 BYTE), 
	"DEP_MANGER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "EMPLOYEE" 
   (	"EMP_ID" NUMBER, 
	"F_NAME" VARCHAR2(20 BYTE), 
	"L_NAME" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"EMP_PASSWORD" VARCHAR2(15 BYTE), 
	"ADDRESS" VARCHAR2(30 BYTE), 
	"MOBILE" VARCHAR2(11 BYTE), 
	"WORKING_HOURS" NUMBER(2,0), 
	"SALARY" NUMBER, 
	"DEP_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMP_MEETING
--------------------------------------------------------

  CREATE TABLE "EMP_MEETING" 
   (	"EMP_ID" NUMBER, 
	"MEETING_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVALUATION
--------------------------------------------------------

  CREATE TABLE "EVALUATION" 
   (	"EVAL_ID" NUMBER, 
	"EVAL_VALUE" NUMBER, 
	"FEEDBACK" VARCHAR2(50 BYTE), 
	"EMP_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INTERVIEW
--------------------------------------------------------

  CREATE TABLE "INTERVIEW" 
   (	"INTERVIEW_ID" NUMBER, 
	"INTERVIEW_DATE" DATE, 
	"INTERVIEW_RESULT" VARCHAR2(10 BYTE), 
	"INTERVIEWEE_ID" NUMBER, 
	"HR_EMP_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INTERVIEWEE
--------------------------------------------------------

  CREATE TABLE "INTERVIEWEE" 
   (	"INTERVIEWEE_ID" NUMBER, 
	"F_NAME" VARCHAR2(20 BYTE), 
	"L_NAME" VARCHAR2(20 BYTE), 
	"MOBILE" VARCHAR2(11 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE), 
	"ADDRESS" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEETING
--------------------------------------------------------

  CREATE TABLE "MEETING" 
   (	"MEETING_ID" NUMBER, 
	"MEETING_DATE" DATE, 
	"MEETING_DURATION" NUMBER, 
	"MEETING_LOCATION" VARCHAR2(30 BYTE), 
	"MEETING_LEADER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REWARD
--------------------------------------------------------

  CREATE TABLE "REWARD" 
   (	"REWARD_ID" NUMBER, 
	"BONUS" NUMBER, 
	"PUNISHMENT" NUMBER, 
	"VALUE" NUMBER, 
	"RESULT" NUMBER, 
	"REASON" VARCHAR2(20 BYTE), 
	"EMP_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TRAINING
--------------------------------------------------------

  CREATE TABLE "TRAINING" 
   (	"TRAINING_ID" NUMBER, 
	"TRAINING_TITLE" VARCHAR2(20 BYTE), 
	"TRAINING_DESCRIPTION" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TRAINING_TEAM
--------------------------------------------------------

  CREATE TABLE "TRAINING_TEAM" 
   (	"TRAINING_ID" NUMBER, 
	"EMP_ID" NUMBER, 
	"TEAM_OR_EMP" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

---------------------------------------------------
--   DATA FOR TABLE EMPLOYEE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPLOYEE
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (1,'mahmoud','nasr','nasr@gmail.com','12345*','Cairo','01024112607',8,800,1);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (2,'mostafa','abdalla','mostafa@gmail.com','02549n@','Giza','01020830146',8,600,2);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (3,'mohamed','yaser','mohamed@gmail.com','96741356#$','Cairo','01549732665',10,700,3);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (4,'ali','elthoqaby','ali@gmail.com','36987%1','Alexandria','01047829557',8,800,4);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (5,'zyad','ahmed','zyad@gmail.com','25964iu','Alexandria','01547320967',8,900,1);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (7,'Mahmoud','Emad','Emad@gmail.com','14789','Cairo','01003462963',10,1000,1);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (8,'Khaled','Mahmed','Khaled@gmail.com','1111','Alexandria','01003462541',7,800,2);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (9,'Ahmed','Magdy','Ahmed@gmail.com','2222','Cairo','01003468547',8,900,2);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (10,'Mostafa','Mahmed','Mahmed@gmail.com','3333','Alexandria','01112354789',10,1000,4);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (11,'Fares','Aymen','Fares@gmail.com','4444','Giza','01254874586',10,1000,3);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (12,'Karim','Ataf','Karim@gmail.com','5555','Giza','01524854796',12,1200,3);
Insert into EMPLOYEE (EMP_ID,F_NAME,L_NAME,EMAIL,EMP_PASSWORD,ADDRESS,MOBILE,WORKING_HOURS,SALARY,DEP_ID) values (6,'Nader','Waled','Nader@gmail.com','6666','Alexandria','02154854769',10,1300,4);

---------------------------------------------------
--   END DATA FOR TABLE EMPLOYEE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE INTERVIEW
--   FILTER = none used
---------------------------------------------------
REM INSERTING into INTERVIEW
Insert into INTERVIEW (INTERVIEW_ID,INTERVIEW_DATE,INTERVIEW_RESULT,INTERVIEWEE_ID,HR_EMP_ID) values (1,to_timestamp('02-FEB-20 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,1,1);
Insert into INTERVIEW (INTERVIEW_ID,INTERVIEW_DATE,INTERVIEW_RESULT,INTERVIEWEE_ID,HR_EMP_ID) values (5,to_timestamp('09-MAR-20 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,2,2);
Insert into INTERVIEW (INTERVIEW_ID,INTERVIEW_DATE,INTERVIEW_RESULT,INTERVIEWEE_ID,HR_EMP_ID) values (15,to_timestamp('02-MAR-20 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,2,2);

---------------------------------------------------
--   END DATA FOR TABLE INTERVIEW
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE MEETING
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MEETING
Insert into MEETING (MEETING_ID,MEETING_DATE,MEETING_DURATION,MEETING_LOCATION,MEETING_LEADER) values (1,to_timestamp('03-FEB-20 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,'alex',1);
Insert into MEETING (MEETING_ID,MEETING_DATE,MEETING_DURATION,MEETING_LOCATION,MEETING_LEADER) values (2,to_timestamp('13-FEB-20 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),3,'cairo',2);
Insert into MEETING (MEETING_ID,MEETING_DATE,MEETING_DURATION,MEETING_LOCATION,MEETING_LEADER) values (3,to_timestamp('20-JAN-20 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),2,'cairo',2);
Insert into MEETING (MEETING_ID,MEETING_DATE,MEETING_DURATION,MEETING_LOCATION,MEETING_LEADER) values (4,to_timestamp('30-DEC-20 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),2,'cairo',3);

---------------------------------------------------
--   END DATA FOR TABLE MEETING
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DEPARTMENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DEPARTMENT
Insert into DEPARTMENT (DEP_ID,DEP_NAME,LOCATION,DEP_MANGER) values (6,'FR','cairo',1);
Insert into DEPARTMENT (DEP_ID,DEP_NAME,LOCATION,DEP_MANGER) values (5,'BIO','Giza',5);
Insert into DEPARTMENT (DEP_ID,DEP_NAME,LOCATION,DEP_MANGER) values (1,'CS','Cairo',1);
Insert into DEPARTMENT (DEP_ID,DEP_NAME,LOCATION,DEP_MANGER) values (2,'IS','Alex',2);
Insert into DEPARTMENT (DEP_ID,DEP_NAME,LOCATION,DEP_MANGER) values (3,'IT','Giza',3);
Insert into DEPARTMENT (DEP_ID,DEP_NAME,LOCATION,DEP_MANGER) values (4,'SC','alex',4);

---------------------------------------------------
--   END DATA FOR TABLE DEPARTMENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE TRAINING
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TRAINING
Insert into TRAINING (TRAINING_ID,TRAINING_TITLE,TRAINING_DESCRIPTION) values (1,'Marketing ','attract customers');
Insert into TRAINING (TRAINING_ID,TRAINING_TITLE,TRAINING_DESCRIPTION) values (2,'business ','commerce');
Insert into TRAINING (TRAINING_ID,TRAINING_TITLE,TRAINING_DESCRIPTION) values (3,'management ','application of resources');

---------------------------------------------------
--   END DATA FOR TABLE TRAINING
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE EVALUATION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EVALUATION
Insert into EVALUATION (EVAL_ID,EVAL_VALUE,FEEDBACK,EMP_ID) values (1,7,'Friendly',1);
Insert into EVALUATION (EVAL_ID,EVAL_VALUE,FEEDBACK,EMP_ID) values (2,5,'Patient',5);
Insert into EVALUATION (EVAL_ID,EVAL_VALUE,FEEDBACK,EMP_ID) values (3,9,'Talkative',11);

---------------------------------------------------
--   END DATA FOR TABLE EVALUATION
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE REWARD
--   FILTER = none used
---------------------------------------------------
REM INSERTING into REWARD
Insert into REWARD (REWARD_ID,BONUS,PUNISHMENT,VALUE,RESULT,REASON,EMP_ID) values (1,1,null,100,null,null,1);
Insert into REWARD (REWARD_ID,BONUS,PUNISHMENT,VALUE,RESULT,REASON,EMP_ID) values (2,1,null,300,null,null,3);
Insert into REWARD (REWARD_ID,BONUS,PUNISHMENT,VALUE,RESULT,REASON,EMP_ID) values (3,null,1,300,null,null,9);
Insert into REWARD (REWARD_ID,BONUS,PUNISHMENT,VALUE,RESULT,REASON,EMP_ID) values (4,1,null,200,null,null,4);
Insert into REWARD (REWARD_ID,BONUS,PUNISHMENT,VALUE,RESULT,REASON,EMP_ID) values (5,null,1,500,null,null,2);
Insert into REWARD (REWARD_ID,BONUS,PUNISHMENT,VALUE,RESULT,REASON,EMP_ID) values (6,1,null,100,null,null,7);
Insert into REWARD (REWARD_ID,BONUS,PUNISHMENT,VALUE,RESULT,REASON,EMP_ID) values (7,null,1,200,null,null,8);
Insert into REWARD (REWARD_ID,BONUS,PUNISHMENT,VALUE,RESULT,REASON,EMP_ID) values (8,1,null,300,null,null,5);

---------------------------------------------------
--   END DATA FOR TABLE REWARD
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE EMP_MEETING
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMP_MEETING

---------------------------------------------------
--   END DATA FOR TABLE EMP_MEETING
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE TRAINING_TEAM
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TRAINING_TEAM
Insert into TRAINING_TEAM (TRAINING_ID,EMP_ID,TEAM_OR_EMP) values (1,3,20);
Insert into TRAINING_TEAM (TRAINING_ID,EMP_ID,TEAM_OR_EMP) values (2,1,15);
Insert into TRAINING_TEAM (TRAINING_ID,EMP_ID,TEAM_OR_EMP) values (3,3,10);
Insert into TRAINING_TEAM (TRAINING_ID,EMP_ID,TEAM_OR_EMP) values (1,1,20);

---------------------------------------------------
--   END DATA FOR TABLE TRAINING_TEAM
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE INTERVIEWEE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into INTERVIEWEE
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (2,'sami','ali','2316','ss','alex');
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (7,'kamal',null,'010245','dalia@yaho','cairo');
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (9,'omar','ali','0102','omar','cairo');
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (11,'lila','amed','0102','ahmed@','cairo');
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (3,'ola','ahmed','024','ola@yahoo.com','alex');
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (5,'yaser','omar','01022`','yaser@','cairo');
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (111,'ola','magdy','0102','olka@.','cairo');
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (22,'ola',null,null,'ola@',null);
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (33,'ss',null,null,null,null);
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (1,'ahmed','mohamed','010245','ahmed@yahoo.com','cairo');
Insert into INTERVIEWEE (INTERVIEWEE_ID,F_NAME,L_NAME,MOBILE,EMAIL,ADDRESS) values (13,'yasmen','io','02112','yasmen@','cairo');

---------------------------------------------------
--   END DATA FOR TABLE INTERVIEWEE
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "DEPARTMENT" ADD CONSTRAINT "DEPARTMENT_DEPID_PK" PRIMARY KEY ("DEP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_EMPID_PK" PRIMARY KEY ("EMP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "EMPLOYEE" MODIFY ("F_NAME" CONSTRAINT "EMPLOYEE_FNAME_CK" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_SALARY_CK" CHECK (Salary>0) ENABLE;
--------------------------------------------------------
--  Constraints for Table EMP_MEETING
--------------------------------------------------------

  ALTER TABLE "EMP_MEETING" ADD CONSTRAINT "EMPMEETING_COMPID_PK" PRIMARY KEY ("EMP_ID", "MEETING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVALUATION
--------------------------------------------------------

  ALTER TABLE "EVALUATION" ADD CONSTRAINT "EVALUATION_EVALID_PK" PRIMARY KEY ("EVAL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "EVALUATION" ADD CONSTRAINT "EVALUATION_EVALVAL_CK" CHECK (Eval_Value > 0) ENABLE;
--------------------------------------------------------
--  Constraints for Table INTERVIEW
--------------------------------------------------------

  ALTER TABLE "INTERVIEW" ADD CONSTRAINT "INTERVIEW_INTERVIEWID_PK" PRIMARY KEY ("INTERVIEW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INTERVIEWEE
--------------------------------------------------------

  ALTER TABLE "INTERVIEWEE" ADD CONSTRAINT "INTERVIEWEE_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "INTERVIEWEE" ADD CONSTRAINT "INTERVIEWEE_FNAME_CK" CHECK (F_Name is not Null) ENABLE;
 
  ALTER TABLE "INTERVIEWEE" ADD CONSTRAINT "INTERVIEWEE_INTERVIEWEEID_PK" PRIMARY KEY ("INTERVIEWEE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEETING
--------------------------------------------------------

  ALTER TABLE "MEETING" ADD CONSTRAINT "MEETING_MEETINGID_PK" PRIMARY KEY ("MEETING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REWARD
--------------------------------------------------------

  ALTER TABLE "REWARD" ADD CONSTRAINT "REWARD_BONUS_CK" CHECK (Bonus >= 0) ENABLE;
 
  ALTER TABLE "REWARD" ADD CONSTRAINT "REWARD_PUNISHMENT_CK" CHECK (Punishment >= 0) ENABLE;
 
  ALTER TABLE "REWARD" ADD CONSTRAINT "REWARD_REWARDID_PK" PRIMARY KEY ("REWARD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRAINING
--------------------------------------------------------

  ALTER TABLE "TRAINING" MODIFY ("TRAINING_TITLE" CONSTRAINT "TRAINING_TITLE_CK" NOT NULL ENABLE);
 
  ALTER TABLE "TRAINING" ADD CONSTRAINT "TRAINING_TRAININGID_PK" PRIMARY KEY ("TRAINING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRAINING_TEAM
--------------------------------------------------------

  ALTER TABLE "TRAINING_TEAM" ADD CONSTRAINT "TRAINTEAM_COMP_PK" PRIMARY KEY ("TRAINING_ID", "EMP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Index DEPARTMENT_DEPID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEPARTMENT_DEPID_PK" ON "DEPARTMENT" ("DEP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMPLOYEE_EMPID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMPLOYEE_EMPID_PK" ON "EMPLOYEE" ("EMP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMPMEETING_COMPID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMPMEETING_COMPID_PK" ON "EMP_MEETING" ("EMP_ID", "MEETING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EVALUATION_EVALID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVALUATION_EVALID_PK" ON "EVALUATION" ("EVAL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INTERVIEWEE_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INTERVIEWEE_EMAIL_UK" ON "INTERVIEWEE" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INTERVIEWEE_INTERVIEWEEID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INTERVIEWEE_INTERVIEWEEID_PK" ON "INTERVIEWEE" ("INTERVIEWEE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INTERVIEW_INTERVIEWID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INTERVIEW_INTERVIEWID_PK" ON "INTERVIEW" ("INTERVIEW_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MEETING_MEETINGID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEETING_MEETINGID_PK" ON "MEETING" ("MEETING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REWARD_REWARDID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REWARD_REWARDID_PK" ON "REWARD" ("REWARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TRAINING_TRAININGID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRAINING_TRAININGID_PK" ON "TRAINING" ("TRAINING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TRAINTEAM_COMP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRAINTEAM_COMP_PK" ON "TRAINING_TEAM" ("TRAINING_ID", "EMP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "DEPARTMENT" ADD CONSTRAINT "DEPEMP_DEPMANAGER_FK" FOREIGN KEY ("DEP_MANGER")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPDEP_DEPID_FK" FOREIGN KEY ("DEP_ID")
	  REFERENCES "DEPARTMENT" ("DEP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMP_MEETING
--------------------------------------------------------

  ALTER TABLE "EMP_MEETING" ADD CONSTRAINT "EMPMEETEMP_EMPID_FK" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ENABLE;
 
  ALTER TABLE "EMP_MEETING" ADD CONSTRAINT "EMPMEETINGMEETING_MEETID_FK" FOREIGN KEY ("MEETING_ID")
	  REFERENCES "MEETING" ("MEETING_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVALUATION
--------------------------------------------------------

  ALTER TABLE "EVALUATION" ADD CONSTRAINT "EVALEMP_EMPID_FK" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INTERVIEW
--------------------------------------------------------

  ALTER TABLE "INTERVIEW" ADD CONSTRAINT "INTERVIEWEE_INTERVIEWEEID_FK" FOREIGN KEY ("INTERVIEWEE_ID")
	  REFERENCES "INTERVIEWEE" ("INTERVIEWEE_ID") ENABLE;
 
  ALTER TABLE "INTERVIEW" ADD CONSTRAINT "INTERVIEWEMP_HRID_FK" FOREIGN KEY ("HR_EMP_ID")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table MEETING
--------------------------------------------------------

  ALTER TABLE "MEETING" ADD CONSTRAINT "MEETINGEMP_METLEADER_FK" FOREIGN KEY ("MEETING_LEADER")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REWARD
--------------------------------------------------------

  ALTER TABLE "REWARD" ADD CONSTRAINT "REWARDEMP_EMPID_FK" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table TRAINING_TEAM
--------------------------------------------------------

  ALTER TABLE "TRAINING_TEAM" ADD CONSTRAINT "TRAINTEAMEMP_EMPID_FK" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ENABLE;
 
  ALTER TABLE "TRAINING_TEAM" ADD CONSTRAINT "TRAINTEAMTRAIN_TRAINID_FK" FOREIGN KEY ("TRAINING_ID")
	  REFERENCES "TRAINING" ("TRAINING_ID") ENABLE;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY;
--------------------------------------------------------
--  DDL for Procedure DELETE_INTERVIEWEE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELETE_INTERVIEWEE" 
  (
    IID NUMBER)
AS
BEGIN
  DELETE FROM interviewee
  WHERE interviewee_id= iid;
END ;

/

--------------------------------------------------------
--  DDL for Procedure GETEMPLOYEESINDEP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GETEMPLOYEESINDEP" 
(dep_name in varchar2 ,  name_emp out sys_refcursor)
as
begin
open  name_emp  for
select  employee_name.f_name, employee_name.l_name
from   employee emp, department d , employee_name
where d.dep_id= emp.dep_id  and  emp.emp_id= employee_name.emp_id ;
end;

/

--------------------------------------------------------
--  DDL for Procedure GETMAXBONUS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GETMAXBONUS" 
(idd out NUMBER)
as
begin
select employee.emp_id
into idd
from reward , employee where bonus=1 and employee.emp_id= reward.emp_id and
value=(select MAX(value)from reward where bonus=1);
end;

/

--------------------------------------------------------
--  DDL for Procedure GETMAXSALARY_EMP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GETMAXSALARY_EMP" 
(maxsalary out number)
as
begin
select max(salary)
into maxsalary
from employee;
end;

/

--------------------------------------------------------
--  DDL for Procedure GETTRAININGEMP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GETTRAININGEMP" 
(training_name in varchar2 ,  name_emp out sys_refcursor)
as
begin
open  name_emp  for
select  emp.EMP_FNAME, emp.EMP_LNAME
from   employee emp, TRAINING_TEAM t , training
where t.EMP_ID= emp.EMP_ID and t.TRAINING_ID= training.TRAINING_ID and training.TRAINING_TITLE= training_name ;
end;

/

--------------------------------------------------------
--  DDL for Procedure GET_EVALUATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GET_EVALUATION" 
(idd in NUMBER,  res out sys_refcursor)
as
begin
open  res  for
select  e.EVAL_ID,e.EVAL_VALUE
,e.FEEDBACK,e.EMP_ID
from   EVALUATION e 
where   e.EMP_ID= idd ;
end;

/

--------------------------------------------------------
--  DDL for Procedure GET_REWARDED_EMPLOYEE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GET_REWARDED_EMPLOYEE" 
(dep_name in varchar2 ,  name_emp out sys_refcursor)
as
begin
open  name_emp  for
select  employee_name.f_name, employee_name.l_name
from   employee emp, reward r , employee_name
where r.bonus= 1  and r.emp_id=  emp.emp_id and  emp.emp_id= employee_name.emp_id ;
end;

/

--------------------------------------------------------
--  DDL for Procedure GET_TABLE_DEP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GET_TABLE_DEP" 
(name_table in varchar2 ,  res out sys_refcursor)
as
begin
open  res  for
select  *
from   department  ;
end;

/

--------------------------------------------------------
--  DDL for Procedure GET_TRAINING_EMP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GET_TRAINING_EMP" 
(training_name in varchar2 ,  name_emp out sys_refcursor)
as
begin
open  name_emp  for
select  emp.F_NAME, emp.L_NAME
from   employee emp, TRAINING_TEAM t , training
where t.EMP_ID= emp.EMP_ID and t.TRAINING_ID= training.TRAINING_ID and training.TRAINING_TITLE= training_name ;
end;

/

--------------------------------------------------------
--  DDL for Procedure INSERT_DEPARTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_DEPARTMENT" 
(Did NUMBER, Dname   VARCHAR2,Dlocation  VARCHAR2,Dmanager  NUMBER)
as
begin
insert  into  DEPARTMENT
Values (Did, Dname, Dlocation, Dmanager) ;
End ;

/

--------------------------------------------------------
--  DDL for Procedure INSERT_EMPLOYEE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_EMPLOYEE" 
(
iid NUMBER,
fname VARCHAR2,
lname VARCHAR2,
email VARCHAR2,
pass VARCHAR2,
address VARCHAR2,
mobile VARCHAR2,
workingHour employee.working_hours%type,
salary NUMBER,
dep_id NUMBER)
as
begin
insert  into  employee_name
Values (iid , fname ,lname) ;
insert  into  employee
Values (iid ,email ,pass,address ,mobile, workingHour,salary,dep_id) ;
End ;

/

--------------------------------------------------------
--  DDL for Procedure INSERT_INTERVIEW
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_INTERVIEW" 
(IID NUMBER,
Dateinterview DATE,
resultt VARCHAR2,
intervieweeid NUMBER,
HR_emp_id NUMBER)
as
begin
insert  into  interview
Values (IID ,Dateinterview ,resultt ,intervieweeid ,HR_emp_id );
End ;

/

--------------------------------------------------------
--  DDL for Procedure INSERT_INTERVIEWEE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_INTERVIEWEE" 
(
iid NUMBER,
fname VARCHAR2,
lname VARCHAR2,
mobile VARCHAR2,
email VARCHAR2,
address VARCHAR2)
as
begin
insert  into  interviewee(interviewee_id, f_name, l_name , mobile, email, address)
Values (iid ,fname, lname,mobile,email ,address ) ;
End ;

/

--------------------------------------------------------
--  DDL for Procedure INSERT_TRAINING
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_TRAINING" 
(IID NUMBER,title VARCHAR2,description VARCHAR2)
as
begin
insert  into  training
Values (IID ,title ,description);
End ;

/

--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/

--------------------------------------------------------
--  DDL for Procedure UPDATE_DEPARTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "UPDATE_DEPARTMENT" 
  (IID Number,namee VARCHAR2,l VARCHAR2,manager NUMBER)
as
begin
	update    department 
	set   location  =   l, dep_name= namee, dep_manger= manager
	where   dep_id  =   IID  ;
end;

/

--------------------------------------------------------
--  DDL for Procedure UPDATE_INTERVIEWEE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "UPDATE_INTERVIEWEE" 
(
iid NUMBER,
fname VARCHAR2,
lname VARCHAR2,
mobilee VARCHAR2,
emaill VARCHAR2,
addd VARCHAR2)
as
begin
update   interviewee
set   mobile= mobilee, email= emaill, address=addd, f_name= fname, l_name= lname
	where    interviewee_id  =  iid ;
End ;

/

