var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p = 1;
var _p1 = .8;
var _p2 = .50;
var _p3 = -.2;
var _p4 = .005;

draw_sprite_tiled(spri, 0, _camx*_p, _camy*_p);
draw_sprite_tiled(spri, 1, _camx*_p1, _camy*_p1);
draw_sprite_tiled(spri, 2, _camx*_p2, _camy*_p2);
draw_sprite_tiled(spri, 3, _camx*_p3, _camy*_p3);
//draw_sprite_tiled(bg_init, 4, _camx*_p4, _camy*_p4);