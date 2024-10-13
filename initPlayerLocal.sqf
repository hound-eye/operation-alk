trader addAction[
    "Basic Gear" ,
    {player action ["GEAR",basic_crate]},
    [],
    0,
    false,
    false,
    "",
    "(_this distance _target)<4"
];
trader addAction[
    "Special Gear" ,
    {player action ["GEAR",special_crate]},
    [],
    0,
    false,
    false,
    "",
    "(_this distance _target)<4"
];
trader addAction[
    "Food" ,
    {player action ["GEAR",food_crate]},
    [],
    0,
    false,
    false,
    "",
    "(_this distance _target)<4"
];

trader addAction[
    "Uniforms/Facewear" ,
    {
        cutText ["", "Only Uniform/Facewear sections are available in this Arsenal"];
        [uniform_crate, player] call ace_arsenal_fnc_openBox
    },
    [],
    0,
    false,
    false,
    "",
    "(_this distance _target)<4"
];

trader addAction [
    "<t color='#00FF00'>Save Current Loadout</t>",
    {
        private _result = ["Update your ""Saved Loadout?""", "Confirm", true, true] call BIS_fnc_guiMessage;
        if (_result) then {
            _restricted_items=["rhs_weap_m249","rhsusf_200rnd_556x45_mixed_box","rhs_weap_m82a1","rhsusf_acc_premier","rhsusf_acc_premier_anpvs27","rhsusf_acc_ACOG_anpvs27","rhsusf_acc_anpvs27","ACE_10Rnd_127x99_API_Mag","rhs_weap_M320","rhs_mag_M433_HEDP","ACE_MX2A"];
            _found_items="";
            {
                if ([player, _x] call BIS_fnc_hasItem) then {
                    _found_items = _found_items + (getText ([_x] call CBA_fnc_getItemConfig >> "displayName")) + "<br/>";
                };
            } forEach _restricted_items;
            if (_found_items != "") exitWith {
                
                _message = "Cannot Save loadout! Restricted items detected:<br/>" + _found_items;
                cutText [_message, "PLAIN", 0.5, true, true];
            };
            player setVariable ["ENH_SavedLoadout", getUnitLoadout player];
            cutText ["Updated ""Saved Loadout""", "PLAIN", 0.5, true, true];
        };
    },
    [],
    0,
    false,
    false,
    "",
    "(_this distance _target)<4"
];

range_light_control addAction ["50m light ON", {  
        ["ace_interaction_setLight", [range_light_50, true], range_light_50] call CBA_fnc_targetEvent;  
    },  
    [],  
    0,  
    false,  
    false,  
    "",  
    "(_this distance _target)<4 && !(range_light_50 getVariable [""ace_interaction_isLightOn"", true])"  
];  
  
range_light_control addAction ["50m light OFF", {  
        ["ace_interaction_setLight", [range_light_50, false], range_light_50] call CBA_fnc_targetEvent;  
    },  
    [],  
    0,  
    false,  
    false,  
    "",  
    "(_this distance _target)<4 && range_light_50 getVariable [""ace_interaction_isLightOn"", true]"  
];  
  
range_light_control addAction ["100m light ON", {  
        ["ace_interaction_setLight", [range_light_100, true], range_light_100] call CBA_fnc_targetEvent;  
    },  
    [],  
    0,  
    false,  
    false,  
    "",  
    "(_this distance _target)<4 && !(range_light_100 getVariable [""ace_interaction_isLightOn"", true])"  
];  
  
range_light_control addAction ["100m light OFF", {  
        ["ace_interaction_setLight", [range_light_100, false], range_light_100] call CBA_fnc_targetEvent;  
    },  
    [],  
    0,  
    false,  
    false,  
    "",  
    "(_this distance _target)<4 && range_light_100 getVariable [""ace_interaction_isLightOn"", true]"  
];

// this addEventHandler ["CuratorObjectPlaced", {
// 	params ["_curator", "_entity"];
//     if (_entity typeOf "Man") then {
//         _loot = [_entity] call HNDM_fnc_giveRandomLoot;
//         systemChat
//     };
// }];

_missionInfo = loadFile "texts\info.html";
player createDiaryRecord ["Diary", ["Mission info",_missionInfo]];

execVM "configureZenModules.sqf";