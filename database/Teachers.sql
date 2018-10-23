-- Table: public."Teachers"

-- DROP TABLE public."Teachers";

CREATE TABLE public."Teachers"
(
    id bigint NOT NULL DEFAULT nextval('"Teachers_id_seq"'::regclass),
    first_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    middle_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Teachers_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Teachers"
    OWNER to postgres;