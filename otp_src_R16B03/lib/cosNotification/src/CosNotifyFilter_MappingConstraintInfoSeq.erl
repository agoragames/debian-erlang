%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotifyFilter_MappingConstraintInfoSeq
%% Source: /net/isildur/ldisk/daily_build/r16b03_prebuild_opu_o.2013-12-09_20/otp_src_R16B03/lib/cosNotification/src/CosNotifyFilter.idl
%% IC vsn: 4.3.4
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotifyFilter_MappingConstraintInfoSeq').
-ic_compiled("4_3_4").


-include("CosNotifyFilter.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_sequence,
            {tk_struct,
                "IDL:omg.org/CosNotifyFilter/MappingConstraintInfo:1.0",
                "MappingConstraintInfo",
                [{"constraint_expression",
                  {tk_struct,"IDL:omg.org/CosNotifyFilter/ConstraintExp:1.0",
                      "ConstraintExp",
                      [{"event_types",
                        {tk_sequence,
                            {tk_struct,
                                "IDL:omg.org/CosNotification/EventType:1.0",
                                "EventType",
                                [{"domain_name",{tk_string,0}},
                                 {"type_name",{tk_string,0}}]},
                            0}},
                       {"constraint_expr",{tk_string,0}}]}},
                 {"constraint_id",tk_long},
                 {"value",tk_any}]},
            0}.

%% returns id
id() -> "IDL:omg.org/CosNotifyFilter/MappingConstraintInfoSeq:1.0".

%% returns name
name() -> "CosNotifyFilter_MappingConstraintInfoSeq".



