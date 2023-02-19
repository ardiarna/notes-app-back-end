CREATE DATABASE notesapp
    WITH
    OWNER = artoviris
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Indonesia.1252'
    LC_CTYPE = 'English_Indonesia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE TABLE IF NOT EXISTS public.notes
(
    id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    title text COLLATE pg_catalog."default" NOT NULL,
    body text COLLATE pg_catalog."default" NOT NULL,
    tags text[] COLLATE pg_catalog."default" NOT NULL,
    created_at text COLLATE pg_catalog."default" NOT NULL,
    updated_at text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT notes_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.notes
    OWNER to artoviris;