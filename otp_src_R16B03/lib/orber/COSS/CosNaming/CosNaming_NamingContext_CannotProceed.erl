%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNaming_NamingContext_CannotProceed
%% Source: /net/isildur/ldisk/daily_build/r16b03_prebuild_opu_o.2013-12-09_20/otp_src_R16B03/lib/orber/COSS/CosNaming/cos_naming.idl
%% IC vsn: 4.3.4
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNaming_NamingContext_CannotProceed').
-ic_compiled("4_3_4").


-include("CosNaming_NamingContext.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_except,"IDL:omg.org/CosNaming/NamingContext/CannotProceed:1.0",
            "CannotProceed",
            [{"cxt",
              {tk_objref,"IDL:omg.org/CosNaming/NamingContext:1.0",
                  "NamingContext"}},
             {"rest_of_name",
              {tk_sequence,
                  {tk_struct,"IDL:omg.org/CosNaming/NameComponent:1.0",
                      "NameComponent",
                      [{"id",{tk_string,0}},{"kind",{tk_string,0}}]},
                  0}}]}.

%% returns id
id() -> "IDL:omg.org/CosNaming/NamingContext/CannotProceed:1.0".

%% returns name
name() -> "CosNaming_NamingContext_CannotProceed".



