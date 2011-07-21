#!/bin/bash
#Remember to change the $STIRFRY_DIR first
$STIRFRY_DIR='/path/to/sitrfry/'

if [ -n "$STIRFRY_DIR" ]; then
   cd $STIRFRY_DIR
   wget -O gracies-weekly.cfm http://finweb.rit.edu/diningservices/forms/webmenus/gracies-weekly.cfm
   perl stir-fry.pl > ~/public_html/stirfry/index.htm
else
   echo "Could not change directory - did you export \$STIRFRY_DIR?"
fi
