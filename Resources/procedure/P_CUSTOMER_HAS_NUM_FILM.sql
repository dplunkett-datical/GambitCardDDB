CREATE OR REPLACE PROCEDURE p_Customer_Has_Num_Film(cid IN integer, num OUT integer)
AS
BEGIN
    SELECT count(*)
    INTO num
    FROM T_CUSTOMER c, T_BORROWING b, T_EXEMPLAR e, T_FILM f
    WHERE c.customer_id=cid
        and c.customer_id=b.customer_id
        and b.exemplar_id=e.exemplar_id
        and e.film_id=f.film_id;
END;