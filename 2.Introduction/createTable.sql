begin;

create table factbook
(
  year text,
  date date,
  shares text,
  trades text,
  dollars text
);

copy factbook from 'C:/factbook.csv' WITH (FORMAT CSV, DELIMITER ',', ESCAPE '\');


alter table factbook
    alter shares
    type bigint
  using replace(shares, ',', '')::bigint;

alter table factbook
    alter trades
    type bigint
  using replace(trades,',','')::bigint;

alter table factbook
    alter dollars
    type bigint
  using substring(replace(dollars,',','') from 2)::numeric;

commit;