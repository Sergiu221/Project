-- Table: public.teachers

-- DROP TABLE public.teachers;

CREATE TABLE public.teachers
(
    id bigint NOT NULL,
    first_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    middle_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT teachers_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.teachers
    OWNER to postgres;