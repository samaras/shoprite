%%
%% Start application module
%%
%% File   : shoprite.erl
%% Created: 2014-04-20
%%
%% @author samaras <skomfi@obrerosoft.com>
%% @copyright 2014 samaras
%%
%% @doc TODO make nice description
%%

-module(shoprite).
-author('samaras <skomfi@obrerosoft.com>').

-export ([start/0, stop/0]).

%% @spec start() -> ok
%% @doc Start the shoprite application
start() ->
	application:start(shoprite).
	
%% @spec stop() -> ok
%% @doc Stop the shoprite application
stop() ->
	application:stop(shoprite).