.mode tabs
.header on
select strftime('%w',datetime(date_received,'unixepoch', 'localtime','-1 day'))+1 as day ,strftime('%H',datetime(date_received,'unixepoch', 'localtime'))+1 as hour, count(ROWID) as value from messages group by strftime('%w',datetime(date_received,'unixepoch','localtime','-1 day'))+1,strftime('%H',datetime(date_received,'unixepoch','localtime'))+1;
