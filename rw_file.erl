-module(rw_file).

write_to_file(FileName, StrContent) ->
    % or `append`
    case file:open(FileName, [write]) of
        {ok, File} ->
            ok = file:write(File, StrContent),
            ok = file:close(File),
            {ok, written};
        {error, Reason} ->
            {error, Reason}
    end.
