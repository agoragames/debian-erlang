%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_CORBA
%% Source: /net/isildur/ldisk/daily_build/r16b03_prebuild_opu_o.2013-12-09_20/otp_src_R16B03/lib/orber/src/CORBA.idl
%% IC vsn: 4.3.4
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_CORBA).
-ic_compiled("4_3_4").


-include_lib("orber/include/ifr_types.hrl").

%% Interface functions

-export([oe_register/0, oe_unregister/0, oe_get_module/5]).
-export([oe_dependency/0]).



oe_register() ->
    OE_IFR = orber_ifr:find_repository(),

    register_tests(OE_IFR),

    _OE_1 = oe_get_top_module(OE_IFR, "IDL:omg.org/CORBA:1.0", "CORBA", "1.0"),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CORBA/PolicyType:1.0", "PolicyType", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulong)),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CORBA/Identifier:1.0", "Identifier", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CORBA/ScopedName:1.0", "ScopedName", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CORBA/RepositoryId:1.0", "RepositoryId", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})),

    ok.


%% General IFR registration checks.
register_tests(OE_IFR)->
  re_register_test(OE_IFR),
  include_reg_test(OE_IFR).


%% IFR type Re-registration checks.
re_register_test(OE_IFR)->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CORBA/PolicyType:1.0") of
    []  ->
      true;
    _ ->
      exit({allready_registered,"IDL:omg.org/CORBA/PolicyType:1.0"})
 end.


%% No included idl-files detected.
include_reg_test(_OE_IFR) -> true.


%% Fetch top module reference, register if unregistered.
oe_get_top_module(OE_IFR, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'Repository_create_module'(OE_IFR, ID, Name, Version);
    Mod  ->
      Mod
   end.

%% Fetch module reference, register if unregistered.
oe_get_module(OE_IFR, OE_Parent, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'ModuleDef_create_module'(OE_Parent, ID, Name, Version);
    Mod  ->
      Mod
   end.



oe_unregister() ->
    OE_IFR = orber_ifr:find_repository(),

    oe_destroy(OE_IFR, "IDL:omg.org/CORBA/RepositoryId:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CORBA/ScopedName:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CORBA/Identifier:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CORBA/PolicyType:1.0"),
    oe_destroy_if_empty(OE_IFR, "IDL:omg.org/CORBA:1.0"),
    ok.


oe_destroy_if_empty(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    case orber_ifr:contents(Ref, 'dk_All', 'true') of
		[] ->
		    orber_ifr:destroy(Ref),
		    ok;
		_ ->
		    ok
	    end
    end.

oe_destroy(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    orber_ifr:destroy(Ref),
	    ok
    end.



%% Idl file dependency list function
oe_dependency() ->

    [].

