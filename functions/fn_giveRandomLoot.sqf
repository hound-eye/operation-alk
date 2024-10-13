params["_unit","_grenade","_mri"];
_debug=true;
private "_itemChance";
if (_unit isKindOf "Man") then {
    _itemChance = random 1;
    if (_itemChance > 0.3) then {
        private["_item"];
        _item = selectRandom HNDM_ITEM_LIST;
        _unit addItem _item;
        if (_debug==true) then {
            systemChat format ["added ITEM %1", _item];
        };
    };
    if (_itemChance > 0.9) then {
        _unit addItem "rhs_mag_f1";
        systemChat format ["added NADE"];
    };
};
_itemChance;
