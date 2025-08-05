-module(rw_str).

-import(string, [concat/2, to_upper/1, to_lower/1, str/2, find/2, at/2, substr/3]).
-export([concatenate/2, to_uppercase/1, to_lowercase/1, index_of_character/2, character_at_index/2, substring/3]).

concatenate(Str1, Str2) ->
    concat(Str1, Str2).

to_uppercase(Str) ->
    to_upper(Str).

to_lowercase(Str) ->
    to_lower(Str).

index_of_string(Str, SubStr) ->
    str(Str, SubStr).

index_of_character(Str, Char) ->
    find(Str, Char).

character_at_index(Str, Index) ->
    at(Str, Index).

substring(Str, Start, Length) ->
    substr(Str, Start, Length).
