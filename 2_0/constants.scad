$fn = $preview ? 32 : 128;

NOZZEL_DIAMETER = 0.4;
PADDING = NOZZEL_DIAMETER;

WALL_THICKNESS= NOZZEL_DIAMETER * 5;

BOX_X = 255;
BOX_Y = 255;
BOX_Z = 74.5;

MAX_Z = BOX_Z - WALL_THICKNESS - PADDING;

MINI_BASE_DIAMETER = 25;
MINI_BASE_THICKNESS = 3;
PADDED_MINI_BASE_DIAMETER = MINI_BASE_DIAMETER + PADDING;


MAX_MINI_Z = 46;
CHARACTER_BOX_Z = MAX_MINI_Z + 2 * WALL_THICKNESS;
LARGE_BASE_DIAMETER = 50;
LARGE_BASE_RADIUS = LARGE_BASE_DIAMETER / 2;
LARGE_BASE_HOLE_RADIUS = LARGE_BASE_RADIUS + PADDING ;

CHARACTER_CARD_LONG = 126.25;
CHARACTER_CARD_SHORT = 88;
CHARACTER_CARD_STACK = 33 + 4.5; 

STANDARD_CARD_X = 65;
STANDARD_CARD_Y = 90;

HOBBIT_CARD_X = STANDARD_CARD_X;
HOBBIT_CARD_Y = 41;

QUEEN_HEIGHT = 67.5;

G_DETENT_RADIUS = 0.25; // depth of the projection / reciever
G_DETENT_INSET = 5; // how far the center of the detent is from the inside corder
G_DETENT_DEPTH = WALL_THICKNESS / 2; // how far the center of the detent is from the top edge the box

large_character_box_x = 130;
large_character_box_y = 69;
large_character_box_z = MAX_Z;

turret_base_side = 25;
turret_base_z = 3; // same as minis
turret_z = 26;
turret_count = 2;

egg_z = 20;
egg_base_d = 18.5;
padded_egg_base_d = egg_base_d + 1;
egg_count = 8;

assets_box_x = BOX_X - large_character_box_x;
assets_box_y = large_character_box_y;

facehugger_diameter = MINI_BASE_DIAMETER;
faceHugger_z = MINI_BASE_THICKNESS + 24;

asset_box_z_1 = turret_z + 2 * WALL_THICKNESS;
asset_box_z_2 =faceHugger_z + 2 * WALL_THICKNESS;

termninal_side = 22.5;
padded_termninal_side = termninal_side + 1;

crate_size = 21;
padded_crate_size = crate_size + 1;
crate_z = 13.8;
crate_count = 16;