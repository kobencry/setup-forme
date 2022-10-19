"vim syntax file initial
" Maintainer: koben
" Author:     Garsec (Garuda Security)
" Update:     2022-6-10 13:59:48

"ketika file syntax sudah dimuat akan keluar
if exists('b:current_syntax')
	"pengguna java
	"-------------------------------------------------------------
	syntax keyword javaStatement System out println
	syntax keyword javaStatement String
	syntax keyword javaStatement new instanceof
	syntax keyword javaStatement public class static
	syntax keyword javaBoolean	true false
	syntax match javaClassDecl "\(\w\+\s\?{\@=\)\+"
	syntax match javaFuncDef "\(\s\w\+(\@=\)\+"
	syntax match javaFuncDef "\(\.\@!\w\+(\@=\)"
  syntax match pythonStorageClass "{\@!\w\+\.\w\+}\@="
	"syntax region javaFuncDef start=+^\s\+\(\(public\|protected\|private\|static\|abstract\|final\|native\|synchronized\)\s\+\)*\(\(void\|boolean\|char\|byte\|short\|int\|long\|float\|double\|\([A-Za-z_][A-Za-z0-9_$]*\.\)*[A-Z][A-Za-z0-9_$]*\)\(<[^>]*>\)\=\(\[\]\)*\s\+[a-z][A-Za-z0-9_$]*\|[A-Z][A-Za-z0-9_$]*\)\s*\ze(+ end=+\ze(+ contains=javaScopeDecl,javaType,javaStorageClass,javaComment,javaLineComment,@javaClasses
	"pengguna c
	"-------------------------------------------------------------
	
	"pengguna c++
	"-------------------------------------------------------------
	
	"pengguna javascript
	"-------------------------------------------------------------
	
	"pengguna potion
	finish
endif

hi link javaStatement Statement
hi link javaFuncDef	Function
hi link javaBoolean Boolean
hi link pythonStorageClass StorageClass

