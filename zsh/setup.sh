#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
touch ~/.hushlogin
. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Setting up oh-my-zsh..."

find . -name ".zshrc" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

find . -name "waldemar.zsh-theme" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/.oh-my-zsh/themes/$fn"
done

success "Finished setting up oh-my-zsh."
