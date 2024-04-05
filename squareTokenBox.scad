


SQUARE_TILE_DIM = 25;
SQUARE_TILE_COMPARTMENT_Y = SQUARE_TILE_DIM + 2;

TOKEN_BOX_X = PLAYER_CARD_BOX_X;
TOKEN_BOX_Y = SQUARE_TILE_COMPARTMENT_Y + 4;
TOKEN_BOX_Z = SQUARE_TILE_DIM + 2;

DISC_DIA = 26;

DIVIDER_X = 1.5;

CRATES_STACK = 37;      // 37

TERMINALS_X = CRATES_STACK + DIVIDER_X;
TERMINALS_STACK = 15;   // 52

TURRENT_X = TERMINALS_X + TERMINALS_STACK + DIVIDER_X;
TURRENT_STACK = 7;      // 59

TUNNEL_X = TURRENT_X + TURRENT_STACK + DIVIDER_X;
TUNNEL_STACK = 20;      // 79

SPAWNS_X = TUNNEL_X + TUNNEL_STACK + DIVIDER_X;
SPAWNS_STACK = 11;       // 91

BONUS_X = SPAWNS_X + SPAWNS_STACK + DIVIDER_X;

squareTokenBox = [
    "square token box",
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
            [CMP_COMPARTMENT_SIZE_XYZ,  [ CRATES_STACK, SQUARE_TILE_COMPARTMENT_Y, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [0,0]], 
            [CMP_CUTOUT_WIDTH_PCT,100], 
            [CMP_CUTOUT_HEIGHT_PCT,25], 
        ]
    ],    
    [ BOX_COMPONENT, // terminals
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ TERMINALS_STACK, SQUARE_TILE_COMPARTMENT_Y, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [TERMINALS_X,0]], 
            [CMP_CUTOUT_WIDTH_PCT,100], 
            [CMP_CUTOUT_HEIGHT_PCT,25], 
        ]
    ],
    [ BOX_COMPONENT, // turrets
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ TURRENT_STACK, SQUARE_TILE_COMPARTMENT_Y, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [TURRENT_X,0]], 
            [CMP_CUTOUT_WIDTH_PCT,100], 
            [CMP_CUTOUT_HEIGHT_PCT,25], 
        ]
    ],
    [ BOX_COMPONENT, // tunnels
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ TUNNEL_STACK, SQUARE_TILE_COMPARTMENT_Y, PLAYER_CARD_BOX_Z] ],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [TUNNEL_X,0]], 
            [CMP_CUTOUT_SIDES_4B, [f,f,t,f]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [CMP_CUTOUT_WIDTH_PCT,100], 
            [CMP_CUTOUT_HEIGHT_PCT,25], 
        ]
    ],
    [ BOX_COMPONENT, // spawns
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ SPAWNS_STACK, SQUARE_TILE_COMPARTMENT_Y, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,f]],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [SPAWNS_X,0]], 
            [CMP_CUTOUT_WIDTH_PCT,100], 
            [CMP_CUTOUT_HEIGHT_PCT,25], 
        ]
    ],
       [ BOX_COMPONENT, // barricades * small discs
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ TOKEN_BOX_X - BONUS_X - 3.5, SQUARE_TILE_COMPARTMENT_Y, PLAYER_CARD_BOX_Z] ],
            [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [CMP_SHAPE, FILLET],
            [ POSITION_XY, [BONUS_X,0]], 
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