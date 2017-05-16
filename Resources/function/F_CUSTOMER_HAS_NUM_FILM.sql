CREATE OR REPLACE FUNCTION f_Customer_Has_Num_Film(cid IN integer)
RETURN integer
IS
sol integer;
BEGIN
    p_Customer_Has_Num_Film(cid,sol);
    RETURN (sol);
END;