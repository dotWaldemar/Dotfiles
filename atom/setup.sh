#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.atom/)"

info "Setting up Atom..."

if [ ! -d "~/.atom" ]; then
	mkdir ~/.atom
fi

find . -name "packages-list.txt" | while read fn; do
    fn=$(basename $fn)
    apm install --packages-file "$SOURCE/$fn"
done

array=(
		"keymap.cson"
		"styles.less"
		"config.cson"
	)

for element in ${array[@]}
do
	find . -name $element | while read fn; do
	    fn=$(basename $fn)
	    # mv "$DESTINATION/$fn" "$SOURCE/$fn"
	    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
	done

done

success "Finished setting up Atom."
