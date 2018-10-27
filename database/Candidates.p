-- Table: public."Candidates"

 DROP TABLE public."Candidates";

CREATE TABLE public."Candidates"
(
    id bigint NOT NULL,
    first_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    middle_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Candidates_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Candidates"
    OWNER to postgres;