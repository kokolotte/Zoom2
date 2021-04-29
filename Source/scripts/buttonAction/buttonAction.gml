/// @function buttonAction(scriptRef, scriptArg)
/// @param {int} scriptRef	The reference number for which script to run
/// @param {int} scriptArg	Second argument passed onto function to use
/// @desc Take different actions depending on the scriptRef

function buttonAction(_scriptRef, _scriptArg) {
	switch (_scriptRef) {
		case 0:
			game_end();
			break;
		case 1:
			if (room_exists(_scriptArg)) {
				room_goto(_scriptArg);
			} /*else {
				room_goto(rm_Error);
			}*/
			break;
		case 2:
			text = _scriptArg;
			break;
	}
}
