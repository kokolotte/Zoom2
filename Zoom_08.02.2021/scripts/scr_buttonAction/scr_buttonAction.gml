/// @function buttonAction(scriptRef)
/// @param {int} scriptRef The reference number for which script to run
/// @desc Take different actions depending on the scriptRef

function buttonAction(_scriptRef) {
	switch (_scriptRef) {
		case 0:
			game_end();
			break;
		case 1:
			if (room_next(room) != -1) {
				room_goto_next();
			}
			break;
	}
}
