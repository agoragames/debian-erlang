%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_CosEventComm_Event
%% Source: /net/isildur/ldisk/daily_build/r16b03_prebuild_opu_o.2013-12-09_20/otp_src_R16B03/lib/cosEvent/src/cosEventApp.idl
%% IC vsn: 4.3.4
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_CosEventComm_Event).
-ic_compiled("4_3_4").


%% Interface functions
-export([send/2, send/3, send_sync/2]).
-export([send_sync/3]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: send
%% 
%%   Returns: RetVal
%%
send(OE_THIS, Event) ->
    corba:cast(OE_THIS, send, [Event], ?MODULE).

send(OE_THIS, OE_Options, Event) ->
    corba:cast(OE_THIS, send, [Event], ?MODULE, OE_Options).

%%%% Operation: send_sync
%% 
%%   Returns: RetVal
%%
send_sync(OE_THIS, Event) ->
    corba:call(OE_THIS, send_sync, [Event], ?MODULE).

send_sync(OE_THIS, OE_Options, Event) ->
    corba:call(OE_THIS, send_sync, [Event], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:oe_CosEventComm/Event:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(send) -> 
	{tk_void,[tk_any],[]};
oe_tc(send_sync) -> 
	{tk_void,[tk_any],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"send_sync", oe_tc(send_sync)},
	{"send", oe_tc(send)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:oe_CosEventComm/Event:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:oe_CosEventComm/Event:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:oe_CosEventComm/Event:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:oe_CosEventComm/Event:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:oe_CosEventComm/Event:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:oe_CosEventComm/Event:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:oe_CosEventComm/Event:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init(oe_CosEventComm_Event_impl, Env).

terminate(Reason, State) ->
    corba:handle_terminate(oe_CosEventComm_Event_impl, Reason, State).


%%%% Operation: send_sync
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, send_sync, [Event]}, OE_From, OE_State) ->
  corba:handle_call(oe_CosEventComm_Event_impl, send_sync, [Event], OE_State, OE_Context, OE_THIS, OE_From);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.
%%%% Operation: send
%% 
%%   Returns: RetVal
%%
handle_cast({OE_THIS, OE_Context, send, [Event]}, OE_State) ->
    corba:handle_cast(oe_CosEventComm_Event_impl, send, [Event], OE_State, OE_Context, OE_THIS);



%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(Info, State) ->
    corba:handle_info(oe_CosEventComm_Event_impl, Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change(oe_CosEventComm_Event_impl, OldVsn, State, Extra).

