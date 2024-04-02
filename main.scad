include <boardgame_insert_toolkit_lib.2.scad>; 
include <sharedConstants.scad>;
include <dialBox.scad>;
include <tokenBox.scad>;
include <playerCardBox.scad>;

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

// Focus on one box
g_isolated_print_box = "token box"; 

g_b_print_lid = true;
g_b_simple_lids = true;   

NOZZEL_DIA = 0.4;


WALL = 5 * NOZZEL_DIA;

TOTAL_LENGTH = 80 + walls(4) + walls(2);
TOTAL_WIDTH = SQUARE_TILE_DIM + walls(2);
TOTAL_HEIGHT = SQUARE_TILE_DIM + WALL * 2;

cells = [CRATES_STACK, TERMINALS_STACK, TURRENT_STACK, TUNNEL_STACK, SPAWNS_STACK];

function walls(x) = x * g_wall_thickness;




data = [


        // [ BOX_COMPONENT,   // facehuggers
        //     [ 
        //         [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
        //         [ CMP_SHAPE, ROUND], 
        //         [ POSITION_XY, [26+walls(2), 26 + discs(2) + discs(9) + walls(2)]  ],  
        //         [ CMP_COMPARTMENT_SIZE_XYZ, [ 26, discs(2),26] ],
        //     ]

        // ]

    tokenBox,
    dialsBox,
    playerCardBox


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