ALTER TABLE CLIENTES ADD CONSTRAINT ID_CLIENTES_PRODUCTO FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTO (ID);
ALTER TABLE CLIENTES ADD CONSTRAINT ID_CLIENTES_ASESOR FOREIGN KEY (ID_ASESOR) REFERENCES ASESOR (ID);

ALTER TABLE SUELDOS ADD CONSTRAINT FK_SUELDO_ASESOR FOREIGN KEY (ID_ASESOR) REFERENCES ASESOR (ID);
ALTER TABLE SUELDOS ADD CONSTRAINT FK_SUELDO_ENCARGADO FOREIGN KEY (ID_ENCARGADO_SECTOR) REFERENCES ENCARGADO_SECTOR (ID);
ALTER TABLE SUELDOS ADD CONSTRAINT FK_SUELDO_ADMINISTRACION FOREIGN KEY (ID_ADMINISTRACION) REFERENCES ADMINISTRACION (ID);

ALTER TABLE ASESOR ADD CONSTRAINT FK_ASESOR_SECTOR FOREIGN KEY (ID_SECTOR) REFERENCES SECTOR (ID);
ALTER TABLE ASESOR ADD CONSTRAINT FK_ASESOR_PRODUCTO FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTO (ID);

ALTER TABLE ADMINISTRACION ADD CONSTRAINT FK_ADMINISTRACION_ENCARGADO FOREIGN KEY (ID_ENCARGADO_SECTOR) REFERENCES ENCARGADO_SECTOR (ID);
ALTER TABLE ADMINISTRACION ADD CONSTRAINT FK_ADMINISTRACION_PROVEEDOR FOREIGN KEY (ID_PROVEEDOR) REFERENCES PROVEEDOR (ID);
ALTER TABLE ADMINISTRACION ADD CONSTRAINT FK_ADMINISTRACION_ASESOR FOREIGN KEY (ID_ASESOR) REFERENCES ASESOR (ID);

ALTER TABLE SECTOR ADD CONSTRAINT ID_SECTOR_ENCARGADO FOREIGN KEY (ID_ENCARGADO_SECTOR) REFERENCES ENCARGADO_SECTOR (ID);

ALTER TABLE PRODUCTO ADD CONSTRAINT ID_PRODUCTO_ASESOR FOREIGN KEY (ID_ASESOR) REFERENCES ASESOR (ID);
ALTER TABLE PRODUCTO ADD CONSTRAINT ID_PRODUCTO_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID);
ALTER TABLE PRODUCTO ADD CONSTRAINT ID_PRODUCTO_SECTOR FOREIGN KEY (ID_SECTOR) REFERENCES SECTOR (ID);
