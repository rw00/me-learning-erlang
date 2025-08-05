-module(rw_hello).

-export([say_hello/1]).

say_hello(Language) ->
    case Language of
        english -> io:format("Hello!~n");
        spanish -> io:format("¡Hola!~n");
        french -> io:format("Bonjour!~n");
        _ -> io:format("Language not supported.~n")
    end.
