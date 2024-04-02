
function discs(x) = (x * 2) + 1 ; // number disc

SQUARE_TILE_DIM = 25;
SQUARE_TILE_DIVIDER = 15;

TOKEN_BOX_X = PLAYER_CARD_BOX_X;
TOKEN_BOX_Y = PLAYER_CARD_BOX_Y;
TOKEN_BOX_Z = SQUARE_TILE_DIM + 2;

DISC_ROW_Y = SQUARE_TILE_DIM + 2;
DISC_DIA = 26;

CRATES_STACK = 35;      // 37
TERMINALS_STACK = 13;   // 52
TURRENT_STACK = 5;      // 59
TUNNEL_STACK = 18;      // 79
SPAWNS_STACK = 9;       // 91

BLIP_STACK = discs(42);  // 84 + 1 + 2 = 87
MISSION_BLIP_X = BLIP_STACK + 2;
MISSION_BLIP_STACK = discs(4); 
EGG_X = MISSION_BLIP_X + MISSION_BLIP_STACK + 2;
EGG_STACK = discs(9); 
ACID_X = EGG_X + EGG_STACK + 2;

tokenBox = [
    "token box",
    [
    [ BOX_SIZE_XYZ, [TOKEN_BOX_X, TOKEN_BOX_Y, TOKEN_BOX_Z] ],
    [ BOX_STACKABLE_B, false],
    [ BOX_LID,
        [
            [ LID_SOLID_B, t]
        ]
    ],
    [ BOX_COMPONENT, // crates
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ CRATES_STACK, SQUARE_TILE_DIM, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [0,0]], 
            [CMP_CUTOUT_WIDTH_PCT,75], // how wide the finger hole is
            [CMP_CUTOUT_HEIGHT_PCT,50], // how deep the finger-hole is from top
        ]
    ],    
    [ BOX_COMPONENT, // terminals
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ TERMINALS_STACK, SQUARE_TILE_DIM, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [37,0]], 
            [CMP_CUTOUT_WIDTH_PCT,75], // how wide the finger hole is
            [CMP_CUTOUT_HEIGHT_PCT,50], // how deep the finger-hole is from top
        ]
    ],
    [ BOX_COMPONENT, // turrets
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ TURRENT_STACK, SQUARE_TILE_DIM, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [52,0]], 
            [CMP_CUTOUT_WIDTH_PCT,75], // how wide the finger hole is
            [CMP_CUTOUT_HEIGHT_PCT,50], // how deep the finger-hole is from top
        ]
    ],
    [ BOX_COMPONENT, // tunnels
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ TUNNEL_STACK, SQUARE_TILE_DIM, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [59,0]], 
            [CMP_CUTOUT_WIDTH_PCT,75], // how wide the finger hole is
            [CMP_CUTOUT_HEIGHT_PCT,50], // how deep the finger-hole is from top
        ]
    ],
    [ BOX_COMPONENT, // spawns
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ SPAWNS_STACK, SQUARE_TILE_DIM, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [79,0]], 
            [CMP_CUTOUT_WIDTH_PCT,75], // how wide the finger hole is
            [CMP_CUTOUT_HEIGHT_PCT,50], // how deep the finger-hole is from top
        ]
    ],
    [
        BOX_COMPONENT, // blips
        [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ CMP_SHAPE, ROUND], 
            [ POSITION_XY, [0,  DISC_ROW_Y ]],  
            [CMP_SHAPE_ROTATED_B, true],
            [ CMP_COMPARTMENT_SIZE_XYZ, [ BLIP_STACK, DISC_DIA, DISC_DIA] ]
        ]
    ],
    [
        BOX_COMPONENT, // mission blips
        [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ CMP_SHAPE, ROUND], 
            [ POSITION_XY, [MISSION_BLIP_X,  DISC_ROW_Y ]],  
            [CMP_SHAPE_ROTATED_B, true],
            [ CMP_COMPARTMENT_SIZE_XYZ, [ MISSION_BLIP_STACK, DISC_DIA, DISC_DIA] ]
        ]
    ],
    [
        BOX_COMPONENT, // blips
        [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ CMP_SHAPE, ROUND], 
            [ POSITION_XY, [EGG_X,  DISC_ROW_Y ]],  
            [CMP_SHAPE_ROTATED_B, true],
            [ CMP_COMPARTMENT_SIZE_XYZ, [ EGG_STACK, DISC_DIA, DISC_DIA] ]
        ]
    ],
    [ BOX_COMPONENT,   // acid, facehuggers
        [ 
            [CMP_NUM_COMPARTMENTS_XY, [1, 2] ],
            [ CMP_SHAPE, ROUND], 
            [ POSITION_XY, [ACID_X, 0]],  
                [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [ CMP_COMPARTMENT_SIZE_XYZ, [ discs(2), DISC_DIA, DISC_DIA] 
            ]
        ]

    ],
    ]   
];



// [   "square tokens",                          
    // [
    //     [ BOX_SIZE_XYZ, [TOTAL_LENGTH, TOTAL_WIDTH, TOTAL_HEIGHT] ],      
    //     [ ENABLED_B, true],
    //         [ BOX_LID,
    //             [   
    //                 [ LID_SOLID_B, t],
    //             ]
    //         ],
    //     [ BOX_COMPONENT,   // crates
    //         [
    //             [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
    //             [ CMP_SHAPE, SQUARE], 
    //             [ POSITION_XY, [0,0]],        
    //             [ CMP_COMPARTMENT_SIZE_XYZ, [ CRATES_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
    //             [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
    //             [ CMP_CUTOUT_TYPE, BOTH ], 
    //             [CMP_CUTOUT_SIDES_4B, [false,false,true,true]]
    //         ]
    //     ],
    //     [ BOX_COMPONENT,   // terminal
    //         [
    //             [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
    //             [ CMP_SHAPE, SQUARE], 
    //             [ POSITION_XY, [walls(1) + 35,0]],        
    //             [ CMP_COMPARTMENT_SIZE_XYZ, [ TERMINALS_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
    //             [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
    //             [ CMP_CUTOUT_TYPE, BOTH ], 
    //             [CMP_CUTOUT_SIDES_4B, [false,false,true,true]]
    //         ]
    //     ],
    //     [ BOX_COMPONENT,   // turrets
    //         [
    //             [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
    //             [ CMP_SHAPE, SQUARE], 
    //             [ POSITION_XY, [walls(2) + 48,0]],        
    //             [ CMP_COMPARTMENT_SIZE_XYZ, [ TURRENT_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
    //             [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
    //             [ CMP_CUTOUT_TYPE, EXTERIOR ], 
    //             [CMP_CUTOUT_SIDES_4B, [false,false,true,true]]
    //         ]
    //     ],
    //     [ BOX_COMPONENT,   // tunnels
    //         [
    //             [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
    //             [ CMP_SHAPE, SQUARE], 
    //             [ POSITION_XY, [walls(3)  + 53,0]],        
    //             [ CMP_COMPARTMENT_SIZE_XYZ, [ TUNNEL_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
    //             [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
    //             [ CMP_CUTOUT_TYPE, EXTERIOR ], 
    //             [CMP_CUTOUT_SIDES_4B, [false,false,true,true]]
    //         ]
    //     ],
    //     [ BOX_COMPONENT,   // spawns
    //         [
    //             [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
    //             [ CMP_SHAPE, SQUARE], 
    //             [ POSITION_XY, [walls(4)  + 71,0]],        
    //             [ CMP_COMPARTMENT_SIZE_XYZ, [ SPAWNS_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
    //             [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
    //             [ CMP_CUTOUT_TYPE, BOTH ], 
    //             [CMP_CUTOUT_SIDES_4B, [false,false,true,true]]
    //         ]
    //     ]