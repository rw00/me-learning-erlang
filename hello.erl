-module(hello). % The module name should match the filename.erl

-export([hello_world/0]). % The functions that are exported from this module

% The following line is a comment explaining the export format.
% -export([func1/numOfParams, func2/numOfParams, ...])

hello_world() ->
    io:fwrite("hey, world\n").
