#!/bin/bash


firstnumber=34
secondnumber=56

expr $firstnumber + $secondnumber
expr $firstnumber - $secondnumber
expr $firstnumber \* $secondnumber
expr $firstnumber / $secondnumber

# and instead of 'expr' you can use this:

echo $(((5 + 10) * 5))

