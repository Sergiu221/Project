-- Table: public."Students"

-- DROP TABLE public."Students";

CREATE TABLE public."Students"
(
    id bigint NOT NULL DEFAULT nextval('"Students_id_seq"'::regclass),
    first_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    middle_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Students_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Students"
    OWNER to postgres;