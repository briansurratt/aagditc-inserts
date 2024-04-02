include <boardgame_insert_toolkit_lib.2.scad>; 

// this is the outer wall thickness. 
//Default = 1.5
g_wall_thickness = 1.6;

// this is the thickness of partitions between compartments
// Default = 1
g_partition_thickness = 1.2;

// this is the width of partitions that are for 
// inserting fingers to grab the bits.
// default = 13
g_finger_partition_thickness = 1.2; 

g_b_print_lid = true;
g_b_simple_lids = true;   

NOZZEL_DIA = 0.4;

SQUARE_TILE_DIM = 25;
SQUARE_TILE_DIVIDER = 15;

CRATES_STACK = 35;
TERMINALS_STACK = 13; // 48
TURRENT_STACK = 5;    // 53
TUNNEL_STACK = 18;    // 71
SPAWNS_STACK = 9;      // 80;

WALL = 5 * NOZZEL_DIA;

TOTAL_LENGTH = 80 + walls(4) + walls(2);
TOTAL_WIDTH = SQUARE_TILE_DIM + walls(2);
TOTAL_HEIGHT = SQUARE_TILE_DIM + WALL * 2;

cells = [CRATES_STACK, TERMINALS_STACK, TURRENT_STACK, TUNNEL_STACK, SPAWNS_STACK];

function walls(x) = x * g_wall_thickness;
function discs(x) = (x * 2) + 2 ; // number disc



bigDialDiameter = 60;
spinnerDia = 45;
spinnerBoxX = 67;
spinnerBoxY = 68.5;
// spinnerBoxZ = spinnerDia /2;
spinnerBoxZ = bigDialDiameter + 2;


data = [


[   "square tokens",                          
    [
        [ BOX_SIZE_XYZ, [TOTAL_LENGTH, TOTAL_WIDTH, TOTAL_HEIGHT] ],      
        [ ENABLED_B, false],
        [ BOX_COMPONENT,   // crates
            [
                [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                [ CMP_SHAPE, SQUARE], 
                [ POSITION_XY, [0,0]],        
                [ CMP_COMPARTMENT_SIZE_XYZ, [ CRATES_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
                [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
                [ CMP_CUTOUT_TYPE, EXTERIOR ], 
                [CMP_CUTOUT_SIDES_4B, [false,false,false,true]]
            ]
        ],
        [ BOX_COMPONENT,   // terminal
            [
                [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                [ CMP_SHAPE, SQUARE], 
                [ POSITION_XY, [walls(1) + 35,0]],        
                [ CMP_COMPARTMENT_SIZE_XYZ, [ TERMINALS_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
                [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
                [ CMP_CUTOUT_TYPE, EXTERIOR ], 
                [CMP_CUTOUT_SIDES_4B, [false,false,true,true]]
            ]
        ],
        [ BOX_COMPONENT,   // turrets
            [
                [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                [ CMP_SHAPE, SQUARE], 
                [ POSITION_XY, [walls(2) + 48,0]],        
                [ CMP_COMPARTMENT_SIZE_XYZ, [ TURRENT_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
                [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
                [ CMP_CUTOUT_TYPE, EXTERIOR ], 
                [CMP_CUTOUT_SIDES_4B, [false,false,true,true]]
            ]
        ],
        [ BOX_COMPONENT,   // tunnels
            [
                [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                [ CMP_SHAPE, SQUARE], 
                [ POSITION_XY, [walls(3)  + 53,0]],        
                [ CMP_COMPARTMENT_SIZE_XYZ, [ TUNNEL_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
                [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
                [ CMP_CUTOUT_TYPE, EXTERIOR ], 
                [CMP_CUTOUT_SIDES_4B, [false,false,true,true]]
            ]
        ],
        [ BOX_COMPONENT,   // spawns
            [
                [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                [ CMP_SHAPE, SQUARE], 
                [ POSITION_XY, [walls(4)  + 71,0]],        
                [ CMP_COMPARTMENT_SIZE_XYZ, [ SPAWNS_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],   
                [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
                [ CMP_CUTOUT_TYPE, INTERIOR ], 
                [CMP_CUTOUT_SIDES_4B, [true,true,true,true]]
            ]
        ]
        // [ BOX_COMPONENT,   // facehuggers
        //     [ 
        //         [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
        //         [ CMP_SHAPE, ROUND], 
        //         [ POSITION_XY, [26+walls(2), 26 + discs(2) + discs(9) + walls(2)]  ],  
        //         [ CMP_COMPARTMENT_SIZE_XYZ, [ 26, discs(2),26] ],
        //     ]

        // ]

    ]
],
[

//other dia 60

     "dials",
        [
            [ BOX_SIZE_XYZ, [spinnerBoxX, spinnerBoxY, spinnerBoxZ] ],
                    [BOX_STACKABLE_B, false],
            [ BOX_LID,
                [   
                    [ LID_SOLID_B, t],
                ]
            ],
            [ BOX_COMPONENT, // aim dials
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [CMP_SHAPE, ROUND],
                    [ POSITION_XY, [0,0]],  
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ spinnerDia, spinnerBoxY - walls(2), spinnerBoxZ] ],
                    [CMP_CUTOUT_SIDES_4B, [t,t,f,f]],
                    [CMP_CUTOUT_TYPE, BOTH],
                    [CMP_CUTOUT_WIDTH_PCT,50], // how wide the finger hole is
                    [CMP_CUTOUT_HEIGHT_PCT,60 ], // how deep the finger-hole is from top
                ]
            ],                            
            [ BOX_COMPONENT, // big dials
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [CMP_SHAPE, ROUND],
                    [ POSITION_XY, [MAX,MAX]],  
                    [CMP_SHAPE_ROTATED_B, true],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 18, , spinnerBoxY - walls(2), spinnerBoxZ] ],
                    [CMP_CUTOUT_TYPE, BOTH],
                    [CMP_CUTOUT_BOTTOM_B, false],
                    [CMP_CUTOUT_HEIGHT_PCT,60 ], // how deep the finger-hole is from top
                    [CMP_CUTOUT_SIDES_4B, [f,f,t,f]],
                    [CMP_PEDESTAL_BASE_B, false]


                ]
            ],                           
        ]
   

]




];


MakeAll();


// ,
        // [ BOX_COMPONENT,   // blips
        //     [ 
        //         [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
        //         [ CMP_SHAPE, ROUND], 
        //         [ POSITION_XY, [1,  26 ]],  
        //         [ CMP_COMPARTMENT_SIZE_XYZ, [ 26, discs(42),26] ]
        //     ]

        // ],
        // [ BOX_COMPONENT,   // mission blips
        //     [ 
        //         [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
        //         [ CMP_SHAPE, ROUND], 
        //         [ POSITION_XY, [1,  26 + 86 + walls(1) ]],   
        //         [ CMP_COMPARTMENT_SIZE_XYZ, [ 26, discs(4),26] ],
        //     ]

        // ],

        // [ BOX_COMPONENT,   // eggs
        //     [ 
        //         [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
        //         [ CMP_SHAPE, ROUND], 
        //         [ POSITION_XY, [26+walls(2), 26]  ],  
        //         [ CMP_COMPARTMENT_SIZE_XYZ, [ 26, discs(9),26] ],
        //     ]
        // ],
        // [ BOX_COMPONENT,   // acid, facehuggers
        //     [ 
        //         [CMP_NUM_COMPARTMENTS_XY, [1, 2] ],
        //         [ CMP_SHAPE, ROUND], 
        //         [ POSITION_XY, [26+walls(2), 26 + discs(9) + walls(1)]  ],  
        //         [ CMP_COMPARTMENT_SIZE_XYZ, [ 26, discs(2),26] ],
        //     ]

        // ],
        // [ BOX_COMPONENT,   // acid, facehuggers
        //     [ 
        //         [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
        //         [ CMP_SHAPE, ROUND], 
        //         [ POSITION_XY, [26+walls(2), 26 + discs(9) + discs(2) + discs(2) + walls(3)]  ],  
        //         [ CMP_COMPARTMENT_SIZE_XYZ, [ 26, discs(8),26] ],
        //     ]

        // ],