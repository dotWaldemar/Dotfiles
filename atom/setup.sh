#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Setting up Atom..."

find . -name "packages-list.txt" | while read fn; do
    fn=$(basename $fn)
    apm install --packages-file "$SOURCE/$fn"
done

mkdir ~/.atom

array=(
		"keymap.cson"
		"styles.less"
		"config.cson"
	)

for element in ${array[@]}
do
	find . -name "$element" | while read fn; do
	    fn=$(basename $fn)
	    symlink "$SOURCE/$fn" "$DESTINATION/.atom/$fn"
	done

done

success "Finished setting up Atom."
