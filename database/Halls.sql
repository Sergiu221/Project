-- Table: public."Halls"

-- DROP TABLE public."Halls";

CREATE TABLE public."Halls"
(
    id bigint NOT NULL DEFAULT nextval('"Halls_id_seq"'::regclass),
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    size integer NOT NULL,
    CONSTRAINT "Halls_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Halls"
    OWNER to postgres;