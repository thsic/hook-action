//画面座標をマップ座標に変換
function convert_window_coordinate_y(_y){
	var _topleft_y = o_camera.y-view_get_hport(0)/2;

	var _result = _topleft_y+_y;
	return _result
}