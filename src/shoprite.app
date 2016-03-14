%%
%% Resource application file
%%
%% File   : shoprite.app
%% Created: 2014-04-20
%%
%% @author samaras <skomfi@obrerosoft.com>
%% @copyright 2014 samaras
%%
%% @doc TODO make nice description
%%

{application, shoprite,
 [{description, "Shoprite application version 1.0"},
  {vsn, "1.0"},
  {modules, [shoprite_sup, shoprite_app, shoprite_server]},
  {registered, [shoprite_sup]},
  {applications, [kernel, stdlib, sasl]},
	{env, [{var1, "Value of environment variable 1"}]}
  {mod, {shoprite_app, []}}
 ]}.
