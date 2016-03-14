%%
%% Supervisor module
%%
%% File   : shoprite_sup.erl
%% Created: 2014-04-20
%%
%% @author samaras <skomfi@obrerosoft.com>
%% @copyright 2014 samaras
%%
%% @doc TODO make nice description
%%

-module(shoprite_sup).
-author('samaras <skomfi@obrerosoft.com>').

-behaviour(supervisor).

%% operation & maintenance api
-export([start_link/0]).

%% supervisor callback
-export([init/1]).
 
-define(SERVER, ?MODULE).
 
%%
%% Operation & Maintenance API
%%

%% @spec start_link() -> {ok, Pid}
%% @doc Start the shoprite_sup for shoprite application
start_link() ->
   supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%
%% Supervisor callback function
%%
 
%% @spec init([]) -> {ok, {{RestartStrategy, MaxRestart, MaxTime}, [ChildSpec]}}
%% @doc Callback for initialize the shoprite_sup for shoprite application
init([]) ->
   %% shoprite_server is a supervisioned child process
   Server = {shoprite_server,
              {shoprite_server, start_link, []}, permanent, brutal_kill, worker, [shoprite_server]},
              
   %% Restart strategies for childs
   {ok, {{one_for_one, 10, 1}, [Server]}}.
