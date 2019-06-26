define _version     = &1
define _table_name  = &2
define _column_name = resourcesetid
define _value       = sld_ch_b2c_cm

declare
  v_cnt number;
begin
  select count(*) into v_cnt 
  from user_tab_columns 
  where nullable='Y' 
  and
  (
   table_name= staging.get_shadow_table_name(upper('&_table_name')) OR
   table_name= staging.get_live_table_name(upper('&_table_name'))
  )
  and column_name = upper('&_column_name');
  if v_cnt > 0 then
    -- ....
    staging.update_table('&_table_name', 'SET &_column_name = ''&_value'' where &_column_name is null');
  end if;
  commit;
end;
/
show errors;