CREATE OR REPLACE TRIGGER tsu_T_EXEMPLAR_SeqExemplar AFTER UPDATE OF exemplar_id
ON T_EXEMPLAR FOR EACH ROW
BEGIN
	RAISE_APPLICATION_ERROR(-20010,'Cannot update column exemplar_id in table T_EXEMPLAR as it uses sequence.');
END;