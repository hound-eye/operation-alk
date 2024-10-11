params["_caller","_scanner"];
private["_scannerGroup","_scannerGroupName"];
if (_scanner in scanners_tutorial) then {
    _scannerGroup = scanners_tutorial;
    _scannerGroupName = "(Mercenary base)";
};
if (_scanner in scanners_1) then {
    _scannerGroup = scanners_1;
    _scannerGroupName = "Alpha";
};
if (_scanner in scanners_2) then {
    _scannerGroup = scanners_2;
    _scannerGroupName = "Bravo";
};
if (_scanner in scanners_3) then {
    _scannerGroup = scanners_3;
    _scannerGroupName = "Charlie";
};
_scannerGroup = _scannerGroup - [_scanner];
_scannersLeft = count _scannerGroup;
private "_message";
_message = format ["%1 collected data from a scanner (%2). %3 scanners left.", _caller, _scannerGroupName, _scannersLeft];
[_message] remoteExec ["systemChat", 0];
_message;