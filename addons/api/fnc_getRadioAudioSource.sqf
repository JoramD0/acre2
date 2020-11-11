#include "script_component.hpp"
/*
 * Author: ACRE2Team
 * Gets the audio source currently selected on the provided radio ID.
 *
 * Arguments:
 * 0: Radio ID <STRING>
 *
 * Return Value:
 * Audio Source <STRING>
 *
 * Example:
 * _audioSource = ["ACRE_PRC148_ID_123"] call acre_api_fnc_getRadioAudioSource;
 *
 * Public: Yes
 */

params [
    ["_radioId", "", [""]]
];

if ( !(_radioId isEqualType "")) exitWith { -1 };

private _audioSource = [_radioId, "getState", "audioPath"] call EFUNC(sys_data,dataEvent);

_audioSource
