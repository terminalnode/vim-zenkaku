# zenkaku.vim
Adds commands to find and replace zenkaku characters with normal character equivalents.

[wtf is a zenkaku?](https://en.wikipedia.org/wiki/Halfwidth_and_Fullwidth_Forms_\(Unicode_block\))

## Features
The plugin adds the following commands:

| Command              | Effect                                                                   |
| -------------------- | ------------------------------------------------------------------------ |
| `:FixZenkakuDigits`  | Replace all zenkaku digits with ascii equivalents                        |
| `:FixZenkakuUpper`   | Replace all zenkaku upper-case with ascii equivalents                    |
| `:FixZenkakuLower`   | Replace all zenkaku lower-case with ascii equivalents                    |
| `:FixZenkakuOthers`  | Replace all zenkaku special characters with ascii equivalents            |
| `:FixZenkakuLetters` | Combine `:FixZenkakuLower` and `:FixZenkakuUpper`                        |
| `:FixZenkaku`        | Combine `:FixZenkakuDigits`, `FixZenkakuLetters` and `:FixZenkakuOthers` |

## Installation
As with most vim plugins, [vim-plug](https://github.com/junegunn/vim-plug) is a handy way to
install it.
