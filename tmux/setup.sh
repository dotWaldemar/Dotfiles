#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Setting up Tmux..."

find . -name ".tmux.conf" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

find . -name ".tmux-themepack" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done


success "Finished setting up Tmux."
