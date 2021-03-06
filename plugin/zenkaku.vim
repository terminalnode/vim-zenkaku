" vim: ft=vim et sw=2
let s:digits = [
      \  ['０', '0'], ['１', '1'], ['２', '2'], ['３', '3'], ['４', '4'],
      \  ['５', '5'], ['６', '6'], ['７', '7'], ['８', '8'], ['９', '9'],
      \]

let s:upper = [
      \  ['Ａ', 'A'], ['Ｂ', 'B'], ['Ｃ', 'C'], ['Ｄ', 'D'], ['Ｅ', 'E'],
      \  ['Ｆ', 'F'], ['Ｇ', 'G'], ['Ｈ', 'H'], ['Ｉ', 'I'], ['Ｊ', 'J'],
      \  ['Ｋ', 'K'], ['Ｌ', 'L'], ['Ｍ', 'M'], ['Ｎ', 'N'], ['Ｏ', 'O'],
      \  ['Ｐ', 'P'], ['Ｑ', 'Q'], ['Ｒ', 'R'], ['Ｓ', 'S'], ['Ｔ', 'T'],
      \  ['Ｕ', 'U'], ['Ｖ', 'V'], ['Ｗ', 'W'], ['Ｘ', 'X'], ['Ｙ', 'Y'],
      \  ['Ｚ', 'Z'],
      \]

let s:lower = [
      \  ['ａ', 'a'], ['ｂ', 'b'], ['ｃ', 'c'], ['ｄ', 'd'], ['ｅ', 'e'],
      \  ['ｆ', 'f'], ['ｇ', 'g'], ['ｈ', 'h'], ['ｉ', 'i'], ['ｊ', 'j'],
      \  ['ｋ', 'k'], ['ｌ', 'l'], ['ｍ', 'm'], ['ｎ', 'n'], ['ｏ', 'o'],
      \  ['ｐ', 'p'], ['ｑ', 'q'], ['ｒ', 'r'], ['ｓ', 's'], ['ｔ', 't'],
      \  ['ｕ', 'u'], ['ｖ', 'v'], ['ｗ', 'w'], ['ｘ', 'x'], ['ｙ', 'y'],
      \  ['ｚ', 'z'],
      \]

let s:others = [
      \  ['！', '!'], ['＂', '"'], ['＃', '#'], ['＄', '$'], ['％', '%'],
      \  ['＆', '\&'], ["＇", "'"], ['（', '('], ['）', ')'], ['＊', '*'],
      \  ['＋', '+'], ['，', ','], ['－', '-'], ['．', '.'], ['／', '\/'],
      \  ['：', ':'], ['；', ';'], ['＜', '<'], ['＝', '='], ['＞', '>'],
      \  ['？', '?'], ['＠', '@'], ['［', '['], ['＼', '\'], ['］', ']'],
      \  ['＾', '^'], ['＿', '_'], ['｀', '`'], ['｛', '{'], ['｜', '|'],
      \  ['｝', '}'], ['～', '~'], ['｟', '«'], ['｠', '»'], ['｡ ', '.'],
      \  ['､ ', ','], ['ｰ ', '-'], ['] ', ']'], ['￠', '¢'], ['￡', '£'],
      \  ['￥', '¥'], ['￦', '₩'],
      \]

function s:ReplaceWithMap(replacementMap)
  for pair in a:replacementMap
    silent! execute '%s/\C' . pair[0] . '/' . pair[1] . '/g'
  endfor
endfunction

command FixZenkakuDigits call s:ReplaceWithMap(s:digits)
command FixZenkakuUpper call s:ReplaceWithMap(s:upper)
command FixZenkakuLower call s:ReplaceWithMap(s:lower)
command FixZenkakuOthers call s:ReplaceWithMap(s:others)

command FixZenkakuLetters
      \ execute 'FixZenkakuUpper'
      \ | execute 'FixZenkakuLower'

command FixZenkaku
      \ execute 'FixZenkakuDigits'
      \ | execute 'FixZenkakuLetters'
      \ | execute 'FixZenkakuOthers'
