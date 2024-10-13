["A_Mission_Utils", "Stamina: Reset stamina for unit", {
	_entity=_this select 1;
	if (isNull _entity ) exitWith {systemChat "no entity selected"};
	_code={
		ace_advanced_fatigue_ae1reserve=4000000;
		ace_advanced_fatigue_ae2reserve=84000;
		ace_advanced_fatigue_anreserve=2300;
		ace_advanced_fatigue_anfatigue=0;
		ace_advanced_fatigue_muscledamage=0;
	};
	["ZEN_common_execute", [_code, _entity], _entity] call CBA_fnc_targetEvent;
	systemChat format ["stamina reset for %1", _entity];
}] call zen_custom_modules_fnc_register;

["A_Mission_Utils", "Add loot to group", {
	systemChat "TODO";
}] call zen_custom_modules_fnc_register;

["A_Mission_Music", "Play Zaton Day", {
	["chz_zaton_day"] remoteExec ["playMusic", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["A_Mission_Music", "Play Zaton Night", {
	["chz_zaton_night"] remoteExec ["playMusic", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["A_Mission_Music", "Play Jupyter Day", {
	["chz_jupiter_day"] remoteExec ["playMusic", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["A_Mission_Music", "Play Jupyter Night", {
	["chz_jupyter_night"] remoteExec ["playMusic", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["A_Mission_Music", "Play Pripyat Day", {
	["chz_pripyat_day"] remoteExec ["playMusic", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["A_Mission_Music", "Play Pripyat Night", {
	["chz_pripyat_night"] remoteExec ["playMusic", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;
