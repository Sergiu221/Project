-- Table: public.candidates

-- DROP TABLE public.candidates;

CREATE TABLE public.candidates
(
    id bigint NOT NULL,
    first_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    middle_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT candidates_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.candidates
    OWNER to postgres;