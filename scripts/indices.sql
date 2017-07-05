-- Index: public.anio_mes

-- DROP INDEX public.anio_mes;

CREATE INDEX anio_mes
  ON public.tiempo
  USING btree
  (anio, nombre_mes COLLATE pg_catalog."default");

  
  -- Index: public.fecha

-- DROP INDEX public.fecha;

CREATE INDEX fecha
  ON public.tiempo
  USING btree
  (fecha);

  
  