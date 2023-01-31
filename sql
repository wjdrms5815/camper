CREATE TABLE IF NOT EXISTS public.users
(
    "uId" varchar(30) ,
    "uPw" varcharg(20) ,
    "uName" varchar(10) ,
    "uPostcode" varchar(10) ,
    "uAddr" varchar(50) ,
    "uWallet" integer ,
    "uRsTime" timestamp without time zone ,
    PRIMARY KEY ("uId")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE IF NOT EXISTS public.campinfo
(
    "cId" serial ,
    "cName" varchar(30) ,
    "cInfo" varchar(1500) ,
    "cTel" varchar(15) ,
    "cLocation" varchar(150) ,
    "cStartDate" date ,
    "cEndDate" date ,
    "cMoney" integer ,
    PRIMARY KEY ("cId")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE IF NOT EXISTS public.reservation
(
    "rId" serial ,
    "cId" serial ,
    "uId" varchar(30) ,
    PRIMARY KEY ("rId")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE IF NOT EXISTS public.question
(
    "qQues" integer ,
    "qAns" varchar(15) 
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.reservation
    ADD CONSTRAINT "cId" FOREIGN KEY ("cId")
    REFERENCES public.campinfo ("cId") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.reservation
    ADD CONSTRAINT "uId" FOREIGN KEY ("uId")
    REFERENCES public.users ("uId") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
