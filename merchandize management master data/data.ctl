import data
into table "POS"."REDALLI_MM_TYPES"
from 'data.csv'
    record delimited by '\n'
    field delimited by ','
    optionally enclosed by '"'
error log 'data.err'
