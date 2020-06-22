# tools

## Naming:

According to [brew
tap](https://github.com/Homebrew/brew/blob/master/docs/Taps.md), this repo is
named as `fwang2/homebrew-tools` on github.


To tap this repo:

    brew tap fwang2/tools

homebrew clone the github repo into
`/usr/local/Homebrew/Library/Taps/fwang2/homebrew-tools`. For external users,
it doesn't matter. For local developer, I make a sym link to make it easier to
access.

generate sha256 checksum

    shasum -a 256 /path/to/file

to debug a formula

    brew install --debug --verbose darshan-util.rb

to have a formula with -

    DarshanUtil < Formula:

see `darshan-util.rb` for example.

