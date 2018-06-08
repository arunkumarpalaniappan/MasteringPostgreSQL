begin;
select date,
  to_char(shares, '99G99G99G99G999') as shares,
  to_char(trades, '99G99G99G999') as trades,
  to_char(dollars, 'L99G99G99G99G999') as dollars
from factbook
where date >= '2018-02-01'
  and date < date '2018-02-01' + interval '1 month'
order by date;
end;