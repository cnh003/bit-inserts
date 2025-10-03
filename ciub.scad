include <lib/boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

data =
[
    [   "ships_and_resources",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [115.0, 150.0, 34.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [2,3]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 55.0, 48.0, 32.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                ]
            ],
            [ BOX_NO_LID_B, t],
        ]
    ],

//    [   "products",
//        [
//            [ ENABLED_B, t],
//            [ BOX_SIZE_XYZ, [115.0, 137.0, 34.0] ],
//            [ BOX_COMPONENT,
//                [
//                    [CMP_NUM_COMPARTMENTS_XY,   [1,5]],
//                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 110.0, 25.6, 32.0] ],
//                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
//                ]
//            ],
//            [ BOX_NO_LID_B, t],
//        ]
//    ],
    
    // there's no option in BIT to create a box with a 'centered 
    // compartment', so this has to manually edited. I've used
    // tinkercad to add a cylinder and a cutout cylinder to the 
    // center of this box.
    [   "products_v2_prepare",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [115.0, 137.0, 34.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [2,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 55.5, 66.5, 32.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                ]
            ],
            [ BOX_NO_LID_B, t],
        ]
    ],

    [   "discs",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [115.0, 186.0, 30.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [2,4]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 55.0, 44.8, 28.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                ]
            ],                  
            [ BOX_NO_LID_B, t],
        ]
    ],
    
    [   "politicians_knowledge_combined",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [59.4, 89.4, 23.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 56.5, 42.5, 21.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                ]
            ],                  
            [ BOX_NO_LID_B, t],
        ]
    ],   

    [   "politicians_knowledge",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [44.2, 59.4, 24.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 42.2, 56.5, 22.0] ],
                ]
            ],                  
            [ BOX_NO_LID_B, t],
        ]
    ],   

    [   "setup_minis",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [59.0, 89.0, 11] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,3]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 55.1, 27.7, 9] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [-1, -1] ],
                ]
            ],                 
        ]
    ],   

    [   "player",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [101.0, 28.0, 30.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 48.0, 25.0, 28.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [-1, -1] ],
                ]
            ],
        ]
    ],

    [   "player_no_lid",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [28.0, 101.0, 30.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 25.0, 48.0, 28.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                ]
            ],
            [ BOX_NO_LID_B, t],
        ]
    ],
];


MakeAll();