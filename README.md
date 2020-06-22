# Homebrew tools

## Naming:

According to [brew
tap](https://github.com/Homebrew/brew/blob/master/docs/Taps.md), this repo should be
named as `fwang2/homebrew-tools` on github.

To tap this repo:

    brew tap fwang2/tools

homebrew clone the github repo into
`/usr/local/Homebrew/Library/Taps/fwang2/homebrew-tools`. For external users,
it doesn't matter. For local developer, I make a sym link to make it easier to
access. And since brew will use general `http://`, you can really push, so it is necessary to modify `.git/config` and change it to `git@` for push.

## Set `CFLAGS` for the build

This is done through

    ENV['CFLAGS] = "-std=c99 -I.."


## Generate sha256 checksum

    shasum -a 256 /path/to/file

## Debug a formula

    brew install --debug --verbose darshan-util.rb

to have a formula with -

    DarshanUtil < Formula:

see `darshan-util.rb` for example.

