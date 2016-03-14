%%
%% Application module
%%
%% File   : shoprite_app.erl
%% Created: 2014-04-20
%%
%% @author samaras <skomfi@obrerosoft.com>
%% @copyright 2014 samaras
%%
%% @doc TODO make nice description
%%

-module(shoprite_app).
-author('samaras <skomfi@obrerosoft.com>').

-behaviour(application).
 
-export([start/2, stop/1]).

%% @spec start(_Type, _StartArgs)  -> {ok, Pid}
%% @doc Application start callback shoprite
start(_Type, _StartArgs) ->
   case shoprite_sup:start_link() of
      {ok, Pid} ->
          alarm_handler:clear_alarm({application_stopped, ?MODULE}),
          {ok, Pid};
      Error ->
          alarm_handler:set_alarm({{application_stopped, ?MODULE}, []}),
          Error
   end.

%% @spec stop(_State) -> ok
%% @doc Application stop callback for shoprite
stop(_State) ->
   alarm_handler:set_alarm({{application_stopped, ?MODULE}, []}),
   ok.
