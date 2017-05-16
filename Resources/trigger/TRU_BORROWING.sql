CREATE OR REPLACE TRIGGER tru_BORROWING
  BEFORE UPDATE
  ON T_BORROWING
 FOR EACH ROW
  declare
    price number(10,2);
    total_price_old number(10,2);
    end_d date;
    start_d date;
begin
    select e.price_per_day
    into price
    from T_EXEMPLAR e
    where e.exemplar_id = :new.exemplar_id;
    total_price_old := :new.total_price.price;
    end_d := :new.end_date;
    start_d := :new.start_date;
    if (total_price_old is null) then
        total_price_old := 0;
    end if;
    if ((end_d-start_d)*price != total_price_old) then
        :new.total_price := Price_Type((end_d-start_d)*price);
    end if;
end;