if (device_mouse_check_button_pressed(0, mb_left)) {
    drag_start_x = device_mouse_x(0);
    drag_start_y = device_mouse_y(0);
    dragging = true;
}