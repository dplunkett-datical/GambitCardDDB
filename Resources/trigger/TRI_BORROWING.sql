CREATE OR REPLACE TRIGGER tri_BORROWING
  BEFORE INSERT
  ON T_BORROWING
 FOR EACH ROW
      declare price number(10,2);
begin
    select price_per_day
    into price
    from T_EXEMPLAR
    where T_EXEMPLAR.exemplar_id = :new.exemplar_id;
    :new.total_price := Price_Type((:new.end_date-:new.start_date)*price);
end;