%%% This file was automatically generated by snmpc_mib_to_hrl version 4.25
%%% Date: 09-Dec-2013::20:25:02
-ifndef('SNMP-VIEW-BASED-ACM-MIB').
-define('SNMP-VIEW-BASED-ACM-MIB', true).

%% Oids

-define(snmpVacmMIB, [1,3,6,1,6,3,16]).

-define(vacmMIBObjects, [1,3,6,1,6,3,16,1]).

-define(vacmContextTable, [1,3,6,1,6,3,16,1,1]).

-define(vacmContextEntry, [1,3,6,1,6,3,16,1,1,1]).
-define(vacmContextName, 1).

-define(vacmSecurityToGroupTable, [1,3,6,1,6,3,16,1,2]).

-define(vacmSecurityToGroupEntry, [1,3,6,1,6,3,16,1,2,1]).
-define(vacmSecurityModel, 1).
-define(vacmSecurityName, 2).
-define(vacmGroupName, 3).
-define(vacmSecurityToGroupStorageType, 4).
-define(vacmSecurityToGroupStatus, 5).

-define(vacmAccessTable, [1,3,6,1,6,3,16,1,4]).

-define(vacmAccessEntry, [1,3,6,1,6,3,16,1,4,1]).
-define(vacmAccessContextPrefix, 1).
-define(vacmAccessSecurityModel, 2).
-define(vacmAccessSecurityLevel, 3).
-define(vacmAccessContextMatch, 4).
-define(vacmAccessReadViewName, 5).
-define(vacmAccessWriteViewName, 6).
-define(vacmAccessNotifyViewName, 7).
-define(vacmAccessStorageType, 8).
-define(vacmAccessStatus, 9).

-define(vacmMIBViews, [1,3,6,1,6,3,16,1,5]).
-define(vacmViewSpinLock, [1,3,6,1,6,3,16,1,5,1]).
-define(vacmViewSpinLock_instance, [1,3,6,1,6,3,16,1,5,1,0]).

-define(vacmViewTreeFamilyTable, [1,3,6,1,6,3,16,1,5,2]).

-define(vacmViewTreeFamilyEntry, [1,3,6,1,6,3,16,1,5,2,1]).
-define(vacmViewTreeFamilyViewName, 1).
-define(vacmViewTreeFamilySubtree, 2).
-define(vacmViewTreeFamilyMask, 3).
-define(vacmViewTreeFamilyType, 4).
-define(vacmViewTreeFamilyStorageType, 5).
-define(vacmViewTreeFamilyStatus, 6).

-define(vacmMIBConformance, [1,3,6,1,6,3,16,2]).

-define(vacmMIBCompliances, [1,3,6,1,6,3,16,2,1]).

-define(vacmMIBGroups, [1,3,6,1,6,3,16,2,2]).

-define(vacmBasicGroup, [1,3,6,1,6,3,16,2,2,1]).


%% Range values
-define(low_vacmContextName, 0).
-define(high_vacmContextName, 32).
-define(low_vacmSecurityModel, 1).
-define(high_vacmSecurityModel, 2147483647).
-define(low_vacmSecurityName, 1).
-define(high_vacmSecurityName, 32).
-define(low_vacmGroupName, 1).
-define(high_vacmGroupName, 32).
-define(low_vacmAccessContextPrefix, 0).
-define(high_vacmAccessContextPrefix, 32).
-define(low_vacmAccessSecurityModel, 0).
-define(high_vacmAccessSecurityModel, 2147483647).
-define(low_vacmAccessReadViewName, 0).
-define(high_vacmAccessReadViewName, 32).
-define(low_vacmAccessWriteViewName, 0).
-define(high_vacmAccessWriteViewName, 32).
-define(low_vacmAccessNotifyViewName, 0).
-define(high_vacmAccessNotifyViewName, 32).
-define(low_vacmViewSpinLock, 0).
-define(high_vacmViewSpinLock, 2147483647).
-define(low_vacmViewTreeFamilyViewName, 1).
-define(high_vacmViewTreeFamilyViewName, 32).
-define(low_vacmViewTreeFamilyMask, 0).
-define(high_vacmViewTreeFamilyMask, 16).


%% Enum definitions from vacmSecurityToGroupStorageType
-define(vacmSecurityToGroupStorageType_readOnly, 5).
-define(vacmSecurityToGroupStorageType_permanent, 4).
-define(vacmSecurityToGroupStorageType_nonVolatile, 3).
-define(vacmSecurityToGroupStorageType_volatile, 2).
-define(vacmSecurityToGroupStorageType_other, 1).

%% Enum definitions from vacmSecurityToGroupStatus
-define(vacmSecurityToGroupStatus_destroy, 6).
-define(vacmSecurityToGroupStatus_createAndWait, 5).
-define(vacmSecurityToGroupStatus_createAndGo, 4).
-define(vacmSecurityToGroupStatus_notReady, 3).
-define(vacmSecurityToGroupStatus_notInService, 2).
-define(vacmSecurityToGroupStatus_active, 1).

%% Enum definitions from vacmAccessSecurityLevel
-define(vacmAccessSecurityLevel_authPriv, 3).
-define(vacmAccessSecurityLevel_authNoPriv, 2).
-define(vacmAccessSecurityLevel_noAuthNoPriv, 1).

%% Enum definitions from vacmAccessContextMatch
-define(vacmAccessContextMatch_prefix, 2).
-define(vacmAccessContextMatch_exact, 1).

%% Enum definitions from vacmAccessStorageType
-define(vacmAccessStorageType_readOnly, 5).
-define(vacmAccessStorageType_permanent, 4).
-define(vacmAccessStorageType_nonVolatile, 3).
-define(vacmAccessStorageType_volatile, 2).
-define(vacmAccessStorageType_other, 1).

%% Enum definitions from vacmAccessStatus
-define(vacmAccessStatus_destroy, 6).
-define(vacmAccessStatus_createAndWait, 5).
-define(vacmAccessStatus_createAndGo, 4).
-define(vacmAccessStatus_notReady, 3).
-define(vacmAccessStatus_notInService, 2).
-define(vacmAccessStatus_active, 1).

%% Enum definitions from vacmViewTreeFamilyType
-define(vacmViewTreeFamilyType_excluded, 2).
-define(vacmViewTreeFamilyType_included, 1).

%% Enum definitions from vacmViewTreeFamilyStorageType
-define(vacmViewTreeFamilyStorageType_readOnly, 5).
-define(vacmViewTreeFamilyStorageType_permanent, 4).
-define(vacmViewTreeFamilyStorageType_nonVolatile, 3).
-define(vacmViewTreeFamilyStorageType_volatile, 2).
-define(vacmViewTreeFamilyStorageType_other, 1).

%% Enum definitions from vacmViewTreeFamilyStatus
-define(vacmViewTreeFamilyStatus_destroy, 6).
-define(vacmViewTreeFamilyStatus_createAndWait, 5).
-define(vacmViewTreeFamilyStatus_createAndGo, 4).
-define(vacmViewTreeFamilyStatus_notReady, 3).
-define(vacmViewTreeFamilyStatus_notInService, 2).
-define(vacmViewTreeFamilyStatus_active, 1).

%% Default values
-define(default_vacmSecurityToGroupStorageType, 3).
-define(default_vacmAccessContextMatch, 1).
-define(default_vacmAccessReadViewName, []).
-define(default_vacmAccessWriteViewName, []).
-define(default_vacmAccessNotifyViewName, []).
-define(default_vacmAccessStorageType, 3).
-define(default_vacmViewSpinLock, 0).
-define(default_vacmViewTreeFamilyMask, []).
-define(default_vacmViewTreeFamilyType, 1).
-define(default_vacmViewTreeFamilyStorageType, 3).

-endif.
