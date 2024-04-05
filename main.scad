include <boardgame_insert_toolkit_lib.2.scad>; 
include <sharedConstants.scad>;
include <dialBox.scad>;
include <squareTokenBox.scad>;
include <roundTokenBox.scad>;
include <playerCardBox.scad>;
include <cardBox.scad>;
include <hobbitCardBox.scad>;

// this is the outer wall thickness. 
//Default = 1.5
g_wall_thickness = 1.6;

// this is the thickness of partitions between compartments
// Default = 1
g_partition_thickness = 1.2;

// this is the width of partitions that are for 
// inserting fingers to grab the bits.
// default = 13
g_finger_partition_thickness = 1.2;  // I don't see any impact to changing this


// Focus on one box
g_isolated_print_box = "round token box"; 

g_b_print_lid = true;
g_b_simple_lids = true;   

NOZZEL_DIA = 0.4;


WALL = 5 * NOZZEL_DIA;

TOTAL_LENGTH = 80 + walls(4) + walls(2);
TOTAL_WIDTH = SQUARE_TILE_DIM + walls(2);
TOTAL_HEIGHT = SQUARE_TILE_DIM + WALL * 2;

function walls(x) = x * g_wall_thickness;
function discs(x) = (x * 2) + 1 ; // number disc



data = [
    squareTokenBox,
    dialsBox,
    playerCardBox,
    roundTokenBox,
    cardBox,
    hobbitCardBox
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