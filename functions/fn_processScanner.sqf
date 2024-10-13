params["_caller","_scanner"];
private["_scannerGroupName","_scannersLeft"];
if (_scanner in scanners_tutorial) then {
    _scannerGroupName = "Mercenary base";
    scanners_tutorial = scanners_tutorial - [_scanner];
    _scannersLeft = count scanners_tutorial;
};
if (_scanner in scanners_1) then {
    _scannerGroupName = "Alpha";
    scanners_1 = scanners_1 - [_scanner];
    _scannersLeft = count scanners_1;
};
if (_scanner in scanners_2) then {
    _scannerGroupName = "Bravo";
    scanners_2 = scanners_2 - [_scanner];
    _scannersLeft = count scanners_2;
};
if (_scanner in scanners_3) then {
    _scannerGroupName = "Charlie";
    scanners_3 = scanners_3 - [_scanner];
    _scannersLeft = count scanners_3;
};
private "_message";
_message = format ["%1 collected data from a scanner (%2). %3 scanners left.", name _caller, _scannerGroupName, _scannersLeft];
[_message] remoteExec ["systemChat", 0];
_message;