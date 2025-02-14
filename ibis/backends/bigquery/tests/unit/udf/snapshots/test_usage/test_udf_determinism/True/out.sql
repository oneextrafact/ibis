CREATE TEMPORARY FUNCTION my_len_0(s STRING)
RETURNS FLOAT64
DETERMINISTIC
LANGUAGE js AS """
'use strict';
function my_len(s) {
    return s.length;
}
return my_len(s);
""";

SELECT my_len_0('abcd') AS `tmp`