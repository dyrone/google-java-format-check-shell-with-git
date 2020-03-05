#!/bin/bash

echo "Java files needs to format:"
git show --diff-filter=AM --name-only --pretty= HEAD |  grep 'java$' | xargs  java -jar ./google-java-format-1.7-all-deps.jar -n --set-exit-if-changed
echo "Formating: "
git show --diff-filter=AM --name-only --pretty= HEAD |  grep 'java$' | xargs  java -jar  ./google-java-format-1.7-all-deps.jar -i --set-exit-if-changed
echo "Format works done!"
