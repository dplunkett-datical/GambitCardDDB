CREATE OR REPLACE TRIGGER ts_T_EXEMPLAR_SeqExemplar BEFORE INSERT
ON T_EXEMPLAR FOR EACH ROW
BEGIN
	SELECT SeqExemplar.nextval INTO :new.exemplar_id FROM DUAL;
END;