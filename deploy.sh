#!/bin/sh
#
# Deploy dotfiles
#

OPTS="--ignore=README\..*"

# Check for conflicts
echo "Checking for conflicts"
for dir in */; do
	dir="$(echo "$dir" | tr -d '/')"
	(test "$dir" = "firefox" || test "$dir" = "startpage") && continue

	conflicts="$(xstow $OPTS -c "${dir}" 2>&1 )"
	printf "%s" "- ${dir}:"
	if [ -z "$conflicts" ]; then
		printf " NONE"
	else
		echo " $conflicts" && exit 1
	fi
	echo
done
