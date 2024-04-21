if exists("b:current_syntax")
    finish
endif

syn keyword keyword let fn return pub extern static if else for while break continue
syn keyword builtin bool u8 u16 u32 u64 u128 int i8 i16 i32 i64 i128 uint f32 f64 str char unit
syn match operator "\(+\|-\|*\|/\|%\|&\||\|^\|<<\|>>\)\(=\)\?"
syn match operator "\(<\|>\|!\|==\|!=\|<=\|>=\|&&\|||\|=\)"
syn match comment "\v//.*$"
syn region comment start="/\*" end="\*/"
syn match integer "\v([0-9_]+|0x[0-9a-fA-F_]+|0b[01_]+)"
syn match ident "\v[_a-zA-Z0-9]+"
syn match func "\v[_a-zA-Z0-9]+\(@="

hi def link keyword Statement
hi def link builtin Type
hi def link comment Comment
hi def link func Function
hi def link integer Number
hi def link operator Operator

let b:current_syntax = "krill"
