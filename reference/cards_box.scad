
include <cards box lib.scad>;

// determines whether lids are output.
g_b_print_lid = 1;

// determines whether boxes are output.
g_b_print_box = 0; 

// Focus on one box
g_isolated_print_box = "1"; 

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
//Default = 1.5
g_wall_thickness = 1.5;

// this is the thickness of partitions between compartments
// Default = 1
g_partition_thickness = 1;

// this is the width of partitions that are for 
// inserting fingers to grab the bits.
// default = 13
g_finger_partition_thickness = 9; 


// 285 X 220 X 60 
data =
[
    [   "1",
        [
            [ "box_dimensions", [230, 150, 77] ],                       // float f -- default:[ 100, 100, 100]

            [ "enabled",        1 ],
            [ "thin_lid",       false ],
            [ "label",
                [
                    [ "text",   "Small Cards"],
                    [ "size",   20 ],
                    [ "rotation", 0],
                ]
            ],
            [ "visualization",
                [
                    [ "position",   [0,0,0] ],
                    [ "rotation",   0 ],
                ]
            ],          
            [   "components",
                [         
                    [   "heroes",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 13, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [4, 3] ],                   // [int, int]
                            ["position",                        [0, "center" ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                    [   "act i",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 47, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [1, 1] ],                   // [int, int]
                            ["position",                        [85, "max" ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                    [   "act ii",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 25, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [1, 1] ],                   // [int, int]
                            ["position",                        [140, "max" ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                    [   "stash",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 35, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [1, 1] ],                   // [int, int]
                            ["position",                        [175, "max" ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                    [   "emporium",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 50, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [1, 1] ],                   // [int, int]
                            ["position",                        [85, "center" ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                    
                  [   "encounters",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 13, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [1, 1] ],                   // [int, int]
                            ["position",                        [85, 0 ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                     [   "events",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 24, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [1, 1] ],                   // [int, int]
                            ["position",                        [105, 0 ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                  [   "traps and enemy powers",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 13, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [2, 1] ],                   // [int, int]
                            ["position",                        [138, 0 ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                    [   "other",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 30, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [1, 1] ],                   // [int, int]
                            ["position",                        [180, 0 ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                     [   "enemy green and blue",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 19, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [2, 1] ],                   // [int, int]
                            ["position",                        [145, "center" ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],
                    [   "enemy red",
                        [
                            ["enabled",                         1],                        // true | false
                            ["type",                            "chit_stack"],                   // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["shape",                           "square"],
                            ["compartment_size",                [ 13, 48, 75] ],      // [float, float, float]
                            ["partition_size_adjustment",       [-0.8,0]],                     // [float,float]
                            ["partition_height_adjustment",     [0, -22]],                     // [float,float]                            
                            ["num_compartments",                [1, 1] ],                   // [int, int]
                            ["position",                        [197, "center" ] ],                // [float, float, float]
                            ["rotation",                        90 ],
                        ]
                    ],

                ]
            ]     
        ]
    ],

    
    

 
    
];


MakeAll();
