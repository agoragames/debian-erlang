%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: TimeBase_UtcT
%% Source: /net/isildur/ldisk/daily_build/r16b03_prebuild_opu_o.2013-12-09_20/otp_src_R16B03/lib/cosTime/src/TimeBase.idl
%% IC vsn: 4.3.4
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('TimeBase_UtcT').
-ic_compiled("4_3_4").


-include("TimeBase.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:omg.org/TimeBase/UtcT:1.0","UtcT",
                   [{"time",tk_ulonglong},
                    {"inacclo",tk_ulong},
                    {"inacchi",tk_ushort},
                    {"tdf",tk_short}]}.

%% returns id
id() -> "IDL:omg.org/TimeBase/UtcT:1.0".

%% returns name
name() -> "TimeBase_UtcT".


