import data
into table "POS"."REDALLI_POINTS"
from 'data.csv'
    record delimited by '\n'
    field delimited by ','
    optionally enclosed by '"'
error log 'data.err'
