include <lib/boardgame_insert_toolkit_lib.3.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = "trophies"; 

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
    [   "environment_cards",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [106.0, 79, 69] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 6.0, 67.0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 40 ],
                    [POSITION_XY, [0,0]]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 16.0, 67.0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 40 ],
                    [POSITION_XY, [0,8]]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 4.0, 67.0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 40 ],
                    [POSITION_XY, [0,26]]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 10.0, 67.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 40 ],
                    [POSITION_XY, [0,32]]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 3.0, 67.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 40 ],
                    [POSITION_XY, [0,44]]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 3.0, 67.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 40 ],
                    [POSITION_XY, [0,49]]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 10.0, 67.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 40 ],
                    [POSITION_XY, [0,54]]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 10.0, 67.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 40 ],
                    [POSITION_XY, [0,66]]
                ]
            ],
            [ BOX_NO_LID_B, t ],
        ]
    ],

    [   "animals_large",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [106, 107, 69] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 93.0, 69.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 100 ],
                    [CMP_CUTOUT_DEPTH_PCT, 10 ],
                    [CMP_CUTOUT_TYPE, BOTH ],
                    [CMP_SHEAR, [ 0, 10 ] ],
                    [CMP_PADDING_XY, [ 50,50] ],

                ]
            ],
            [ BOX_NO_LID_B, t ],
        ]
    ],
    
    [   "excess_tokens",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [106, 69, 11] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 103.0, 66.0, 10.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 100 ],
                    [CMP_CUTOUT_DEPTH_PCT, 10 ],
                    [CMP_CUTOUT_TYPE, BOTH ],

                ]
            ],
            [ BOX_NO_LID_B, f ],
            [ BOX_LID, [
                [LID_FIT_UNDER_B, f],
                [LID_INSET_B, f],
            ]],
        ]
    ],

    [   "animals_small",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [110, 81, 69] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [2,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 53.0, 78.5, 68.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 100 ],
                    [CMP_CUTOUT_DEPTH_PCT, 10 ],
                    [CMP_CUTOUT_TYPE, BOTH ],
                    [CMP_PADDING_XY, [ 1,50] ],

                ]
            ],
            [ BOX_NO_LID_B, t ],
            [ BOX_LID, [
                [LID_FIT_UNDER_B, f],
                [LID_INSET_B, f],
            ]],
        ]
    ],

    [   "trophies",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [110, 81, 8] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 107.0, 78.0, 10.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 100 ],
                    [CMP_CUTOUT_DEPTH_PCT, 10 ],
                    [CMP_CUTOUT_TYPE, BOTH ],
                    [CMP_PADDING_XY, [ 1,50] ],

                ]
            ],
            [ BOX_NO_LID_B, f ],
            [ BOX_LID, [
                [LID_FIT_UNDER_B, f],
                [LID_INSET_B, f],
            ]],
        ]
    ],

    
    [   "player_tokens",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [92, 89, 20] ],
            [ BOX_COMPONENT,
                [
                    [CMP_SHAPE, SQUARE],
                    [CMP_NUM_COMPARTMENTS_XY,   [2,3] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 44.0, 28.0, 19.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 100 ],
                    [CMP_CUTOUT_DEPTH_PCT, 10 ],
                    [CMP_CUTOUT_TYPE, BOTH ],
                    [CMP_PADDING_XY, [ 1,1] ],

                ]
            ],
            [ BOX_NO_LID_B, f ],
            [ BOX_LID, [
                [LID_FIT_UNDER_B, t],
                [LID_INSET_B, f],
            ]],
        ]
    ],
    
    [   "food_tokens",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [92, 89, 20] ],
            [ BOX_COMPONENT,
                [
                    [CMP_SHAPE, SQUARE],
                    [CMP_NUM_COMPARTMENTS_XY,   [2,2] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 44.0, 42.0, 19.0] ],
                    [CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 100 ],
                    [CMP_CUTOUT_DEPTH_PCT, 10 ],
                    [CMP_CUTOUT_TYPE, BOTH ],
                    [CMP_PADDING_XY, [ 1,1] ],

                ]
            ],
            [ BOX_NO_LID_B, f ],
            [ BOX_LID, [
                [LID_FIT_UNDER_B, t],
                [LID_INSET_B, f],
            ]],
        ]
    ],
    
    [   "darwin_points",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [92, 89, 69-22-22-1] ],
            [ BOX_COMPONENT,
                [
                    [CMP_SHAPE, SQUARE],
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 89.0, 86.0, 69-22-22-2] ],
                    [CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [CMP_CUTOUT_HEIGHT_PCT, 100 ],
                    [CMP_CUTOUT_DEPTH_PCT, 10 ],
                    [CMP_CUTOUT_TYPE, BOTH ],
                    [CMP_PADDING_XY, [ 1,1] ],

                ]
            ],
            [ BOX_NO_LID_B, f ],
            [ BOX_LID, [
                [LID_FIT_UNDER_B, t],
                [LID_INSET_B, f],
            ]],
        ]
    ],
];


MakeAll();
