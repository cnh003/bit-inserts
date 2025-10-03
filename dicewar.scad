include <lib/boardgame_insert_toolkit_lib.3.scad>;

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
    [   "cards",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [144.8, 104.8, 58.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 141.0, 101.0, 30.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                    [CMP_CUTOUT_SIDES_4B,       [f, f, f, f] ],
                    [CMP_PEDESTAL_BASE_B, t],
                ]
            ],
            [ BOX_NO_LID_B, t],
        ]
    ],
    [   "divider",
        [
            [ TYPE, DIVIDERS ],
            [ DIV_THICKNESS, 1.0 ],
            [ DIV_FRAME_SIZE_XY, [100.2, 140.2] ],
            [ DIV_TAB_CYCLE, 1],
            [ DIV_TAB_TEXT, [""]],
            [ DIV_FRAME_NUM_COLUMNS, -1],
        ]
    ],
    [   "base",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [99.0, 104.8, 29.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 95.0, 101.0, 32.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                ]
            ],
            [ BOX_NO_LID_B, t],
        ]
    ],
    [   "expansion_top",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [69.8, 122.3, 34.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 66, 118.5, 32.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                ]
            ],
            [ BOX_NO_LID_B, t],
        ]
    ],
    [   "expansion_bottom",
        [
            [ ENABLED_B, t],
            [ BOX_SIZE_XYZ, [69.8, 122.3, 24.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 66, 118.5, 22.0] ],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [0, 0] ],
                ]
            ],
            [ BOX_NO_LID_B, t],
        ]
    ],
];


MakeAll();
