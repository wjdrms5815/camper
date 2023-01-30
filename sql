CREATE TABLE IF NOT EXISTS public.users
(
    "uId" character varying(30) ,
    "uPw" character varying(20) ,
    "uName" character varying(5) ,
    "uPostcode" integer ,
    "uAddr" character varying(30) ,
    "uWallet" character varying(30) ,
    "uRsTime" timestamp without time zone ,
    PRIMARY KEY ("uId")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE IF NOT EXISTS public.campinfo
(
    "cId" serial ,
    "cName" character varying(30) ,
    "cInfo" character varying(1500) ,
    "cTel" character varying(15) ,
    "cLocation" character varying(150) ,
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
    "uId" character varying(30) ,
    PRIMARY KEY ("rId")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE IF NOT EXISTS public.question
(
    "qQues" integer ,
    "qAns" character varying(15) 
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
