// Step event of a follower
var player = obj_player1; // Ensure this is the correct identifier for your player object
var target_distance = 40; // Distance from the player

var target_x = player.x + (target_distance * count) * -player.xscale; // This will make the follower appear to the right (xscale=1) or left (xscale=-1) of the player
var target_y = player.y; // Maintains a consistent y-axis position
image_xscale = player.xscale

// Check if the new target is different from the current target
if (ds_queue_size(global.follower_queue) == 0 || (ds_queue_head(global.follower_queue)[0] != target_x || ds_queue_head(global.follower_queue)[1] != target_y)) {
    ds_queue_clear(global.follower_queue); // Clear old targets
    ds_queue_enqueue(global.follower_queue, [target_x, target_y]);
}

if (ds_queue_size(global.follower_queue) > 0) {
    var target = ds_queue_head(global.follower_queue);
    var move_x = (target[0] - x) * 0.15 - (count * 0.1);
    var move_y = (target[1] - y) * 0.15;

    // Move the follower
    x += move_x;
    y += move_y;

    // Update the sprite based on movement
    if (abs(move_x) > 0.9 || abs(move_y) > 0.8) { // Adjust this threshold to better detect movement
        sprite_index = spr_move;
    } else {
        sprite_index = spr_idle;
    }
}
