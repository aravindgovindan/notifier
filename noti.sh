# !/bin/bash
SUCCESS="display notification \"$@ completed successfully\"with title \"Success!\"sound name \"Glass\""
FAIL="display notification \"$@ failed\" with title \"Failed!!\" sound name \"Sosumi\""

$@

if [ $? -eq 0 ]
then
osascript -e "$SUCCESS"
else
osascript -e "$FAIL"
fi
