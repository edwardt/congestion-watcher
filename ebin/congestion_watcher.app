%%%----------------------------------------------------------------------
%%% Copyright (c) 2007-2010 Gemini Mobile Technologies, Inc.  All rights reserved.
%%% 
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%% 
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%% 
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%%
%%% File    : congestion_watcher.app
%%% Purpose : congestion watcher application
%%%----------------------------------------------------------------------

%% For further documentation, see:
%%
%%   http://www.erlang.org/doc/doc-5.5/doc/system_principles/
%%     Section 1 for a big(ger) picture overview
%%
%%   http://www.erlang.org/doc/doc-5.5/doc/design_principles/
%%     Section 7 for description of an OTP "application", incl. the .app file

{application, congestion_watcher,
 [
  %% Description of this application
  {description, "Monitor high/low and issue restriction control messages"},

  %% Version number
  {vsn, "0.01"},

  %% List of modules ... used only for formal OTP packaging (not used yet)
  {modules, [
	     %% TODO: fill in this list, perhaps
            ]
  },

  %% List of registered process names ... used only for formal OTP
  %% packaging (not used yet)
  {registered, [
		%% TODO: fill in this list, perhaps
	       ]
  },

  %% Applications which must be started before this application starts.
  %% NOTE: do not list applications which are load-only!
  {applications, [ kernel, stdlib, sasl ] },

  %% How to run the top-level function to start this application.
  %% The function name inside ModuleName is assumed to be "start".
  %% {mod, {ModuleName, ArgList}}
  %%
  %% In this example, we don't pass any args here.  Instead, we get
  %% run-time config data from "central.conf" or from the "erl"
  %% command line.
  %%
  %% So, call congestion_watcher:start().
  {mod, {congestion_watcher, []} }
 ]
}.
