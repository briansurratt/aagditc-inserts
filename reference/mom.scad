
include <boardgame_insert_toolkit_lib.scad>;

// determines whether lids are output.
g_b_print_lid = 1;

// determines whether boxes are output.
g_b_print_box = 1; 

// Focus on one box
g_isolated_print_box = "walls and door covers"; 

// Used to visualize how all of the boxes fit together. 
// Turn off for printing.
g_b_visualization = 0;          

// Makes solid simple lids instead of the honeycomb ones.
// Might be faster to print. Definitely faster to render.
g_b_simple_lids = 0;            


// creates the indentation on the bottom of the box 
//that allows the lid to be put under when in play.
g_b_fit_lid_underneath = 1; 

// this is the outer wall thickness. 
//Default = 2
g_wall_thickness = 2;

// this is the thickness of partitions between compartments
// Default = 1
g_partition_thickness = 1; // default = 1

// this is the width of partitions that are for 
// inserting fingers to grab the bits.
// default = 13
g_finger_partition_thickness = 13; 

data =
[
 [   "person tokens",
        [
            [ "box_dimensions",                             [70.0, 138.0, 26.0] ], 
            [ "enabled",                                    true ],
            [ "label",
                [
                    [ "text",   "Persons"],
                    [ "size",   12 ],
                    [ "rotation", 90]
                ]
            ],
            [   "components",
                [
                    [   "base",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 31, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [-12,0]],
                            ["rotation",                   90],
                        ]
                    ],
                    [   "generic",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 27, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [-12,27]],
                            ["rotation",                   90],
                        ]
                    ],
                    [   "silver twilight",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 24, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [-12,54]],
                            ["rotation",                   90],
                        ]
                    ],
                    [   "streets of arkham",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 24, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [-12,81]],
                            ["rotation",                   90],
                        ]
                    ],
                    [   "alchemy",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 11, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [54,0]],
                            ["rotation",                   -90],
                        ]
                    ],
                    [   "horrific journeys",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 15, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [50,27]],
                            ["rotation",                   -90],
                        ]
                    ],
                    [   "beyond the threshold",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 17, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [48,54]],
                            ["rotation",                   -90],
                        ]
                    ],
                    
                    
                    [   "unknown 1",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 31, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [-12,108]],
                            ["rotation",                   90],
                        ]
                    ],
                    
                    [   "unknown 2",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 31, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [34,81]],
                            ["rotation",                   -90],
                        ]
                    ],
                    [   "unknown 3",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 31, 26, 26] ], 
                            ["num_compartments",            [1, 1] ], 
                            ["shape",                       "circle"],
                            ["position",                    [34,108]],
                            ["rotation",                   -90],
                        ]
                    ],
                ]
            ]
        ]
    ],

    [   "walls and door covers",
        [
            [ "box_dimensions",                             [67.0, 37.0, 22.0] ], 
            [ "enabled",                                    true ],
            [ "label",
                [
                    [ "text",   "Walls / Doors"],
                    [ "size",   6 ],
                    [ "rotation", 0]
                ]
            ],
            [   "components",
                [
                    [   "doors",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 25, 33, 20.0] ], 
                            ["num_compartments",            [1, 1] ], 
                            
                            ["position",                    [37,0]],
                            ["rotation",                   -90],
                            [ "label",
                                [
                                    [ "text",   "DOORS"],
                                    [ "size",   3 ],
                                    [ "rotation", 0]
                                ]
                            ],
                        ]
                    ],

                   [   "walls",
                        [
                            ["type",                        "chit_stack_compact"],
                            ["compartment_size",            [ 33, 33, 20.0] ], 
                            ["num_compartments",            [1, 1] ], 
                            
                            ["position",                    [-12,0]],
                            ["rotation",                   90],
                            [ "label",
                                [
                                    [ "text",   "                    WALLS"],
                                    [ "size",   3 ],
                                    [ "rotation", 0]
                                ]
                            ],
                        ]
                    ],
                ]
            ]
        ]
    ],

    
];


MakeAll();
