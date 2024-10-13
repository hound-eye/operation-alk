scanners_tutorial=[tutor_1,tutor_2];
scanners_1=[scanner_1_1,scanner_1_2,scanner_1_3];
scanners_2=[scanner_2_1,scanner_2_2,scanner_2_3];
scanners_3=[scanner_3_1,scanner_3_2,scanner_3_3];

HNDM_ITEM_LIST=["ACE_Banana", "ACE_Can_Franta", "ACE_Can_RedGull", "ACE_Can_Spirit", "ACE_Sunflower_Seeds"];
HNDM_ITEM_LIST_COUNT=count HNDM_ITEM_LIST;
publicVariable "HNDM_ITEM_LIST";
publicVariable "HNDM_ITEM_LIST_COUNT";

{
    {
        _x call HNDM_fnc_giveRandomLoot;
    } forEach units _x;
} forEach groups east + groups independent;
