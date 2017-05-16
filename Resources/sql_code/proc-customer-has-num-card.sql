CREATE OR REPLACE PROCEDURE p_Customer_Has_Num_Card(cid IN integer, num OUT integer)
AS
BEGIN
    SELECT count(*)
    INTO num
    FROM V_CUSTOMER_HAS_FILM x, T_CUSTOMER c, T_BORROWING b, T_FILM f
    WHERE c.customer_id=cid
        and c.customer_id=c.customer_id
        and b.exemplar_id=b.exemplar_id
        and f.film_id=f.film_id
		and f.min_age = f.min_age;
	BEGIN
		execute immediate 'GRANT SELECT ON T_CUSTOMER TO public';
	END;
END;