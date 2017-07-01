
 CREATE EXTENSION postgis
  SCHEMA public;

  
-- Table: public.barrios

-- DROP TABLE public.barrios;

CREATE TABLE public.barrios
(
  nrobarrio double precision,
  barrio text,
  codba text,
  the_geom geometry
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.barrios
  OWNER TO postgres;

  
  
  -- Table: public.lineas

-- DROP TABLE public.lineas;

CREATE TABLE public.lineas
(
  gid double precision,
  cod_linea double precision,
  desc_linea text,
  ordinal_su double precision,
  cod_sublin double precision,
  desc_subli text,
  cod_varian double precision,
  desc_varia text,
  the_geom geometry
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.lineas
  OWNER TO postgres;
  
  
  -- Table: public.paradas

-- DROP TABLE public.paradas;

CREATE TABLE public.paradas
(
  cod_ubic_p double precision,
  desc_linea text,
  cod_varian double precision,
  ordinal double precision,
  calle text,
  esquina text,
  cod_calle1 double precision,
  cod_calle2 double precision,
  x double precision,
  y double precision,
  the_geom geometry
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.paradas
  OWNER TO postgres;

  -- Table: public.lineas_barrios

-- DROP TABLE public.lineas_barrios;

CREATE TABLE public.lineas_barrios
(
  nrobarrio double precision,
  gid character varying(8)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.lineas_barrios
  OWNER TO postgres;
