-- Table: public.halls

-- DROP TABLE public.halls;

CREATE TABLE public.halls
(
    id bigint NOT NULL,
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    size integer NOT NULL,
    CONSTRAINT halls_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.halls
    OWNER to postgres;