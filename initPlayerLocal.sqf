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

// this addEventHandler ["CuratorObjectPlaced", {
// 	params ["_curator", "_entity"];
//     if (_entity typeOf "Man") then {
//         _loot = [_entity] call HNDM_fnc_giveRandomLoot;
//         systemChat
//     };
// }];