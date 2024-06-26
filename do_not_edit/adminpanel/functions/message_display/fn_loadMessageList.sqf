/*
	Author: TheTimidShade

	Description:
		Fills message list with messages that were sent/received previously

		Messages are stored in the format:
		[
			"SenderID", 	// Steam64 ID
			"SentAt",		// In game time in format HH:MM
			"SenderName",
			"ReceiverName",
			"Message text"
		]

	Parameters:
		NONE
		
	Returns:
		NOTHING
*/

disableSerialization;

// elements from ui\elements.hpp
#define IDC_ADMINMESSAGE_MESSAGE_VIEWER_HISTORY_LIST	8463
#define IDC_ADMINMESSAGE_PLAYER_SELECTOR				9063

// get display
private _message_display = uiNamespace getVariable ['admp_messageDisplayVar', displayNull];

// get controls
private _message_history_list = _message_display displayCtrl IDC_ADMINMESSAGE_MESSAGE_VIEWER_HISTORY_LIST;
private _recipient_combo = _message_display displayCtrl IDC_ADMINMESSAGE_PLAYER_SELECTOR;

private _uid = getPlayerUID player;

lbClear _message_history_list;
// iterate over messages in reverse order (recent first)
for [{_i = (count admp_message_display_history_local - 1)}, {_i >= 0}, {_i = _i - 1}] do {
	private _currentMessage = admp_message_display_history_local#_i;
	_currentMessage params ["_senderID", "_sentAt", "_senderName", "_receiverName", "_message"];
	private ["_prefix", "_nameShown"];

	// if player sent the message show "To: ReceiverName"
	// otherwise show "From: SenderName"
	if (_senderID == _uid) then {
		_prefix = "To";
		_nameShown = _receiverName;
	} else {
		_prefix = "From";
		_nameShown = _senderName;
	};
	private _messageLabel = format ["[%1] %2: %3", _sentAt, _prefix, _nameShown];

	private _entryIndex = _message_history_list lbAdd _messageLabel;
	_message_history_list lbSetValue [_entryIndex, _i];
};
_message_history_list lbSetCurSel 0; // select first valid option

// set the selected player to the sender of the most recently received message if found
if (count admp_message_display_history_local > 0) then {
	private _recentMessage = admp_message_display_history_local#(count admp_message_display_history_local - 1);
	_recentMessage params ["_senderID", "_sentAt", "_senderName", "_receiverName", "_message"];

	for "_i" from 0 to (lbSize _recipient_combo) - 1 do {
		private _playerIndex = _recipient_combo lbValue _i;
		if (_playerIndex == -1) then { continue; };
		private _player = (uiNamespace getVariable ["admp_messageDisplay_validRecipients", []])#_playerIndex;
		if (getPlayerUID _player  == _senderID) then {
			_recipient_combo lbSetCurSel _i;
		};
	};
};


