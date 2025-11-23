include <lib/boardgame_insert_toolkit_lib.3.scad>;

// determines whether lids are output.
g_b_print_box = t;

// determines whether boxes are output.
//g_b_print_box = g_b_print_lid;
g_b_print_lid = !g_b_print_box;

// Focus on one box
g_isolated_print_box = "items"; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 2.0;


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
    ["player_tokens", [
        [BOX_SIZE_XYZ, [36.0, 55.0, 34.0] ],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [32.0, 20.0, 32.0]],
            [CMP_SHAPE, ROUND],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 50.0],
            [CMP_CUTOUT_WIDTH_PCT, 75.0],
            [POSITION_XY, [0.0, 0.0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [32.0, 29.0, 32.0]],
            [CMP_SHAPE, ROUND],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 50.0],
            [CMP_CUTOUT_WIDTH_PCT, 75.0],
            [POSITION_XY, [0.0, 22.0]],
        ]],
        [BOX_NO_LID_B, true],
    ]],
    ["verbuendete", [
        [BOX_SIZE_XYZ, [36.0, 98.0, 34.0] ],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [32.0, 48.0, 32.0]],
            [CMP_SHAPE, ROUND],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 50.0],
            [CMP_CUTOUT_WIDTH_PCT, 75.0],
            [POSITION_XY, [0.0, 0.0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [32.0, 44.0, 32.0]],
            [CMP_SHAPE, ROUND],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 50.0],
            [CMP_CUTOUT_WIDTH_PCT, 75.0],
            [POSITION_XY, [0.0, 50.0]],
        ]],
        [BOX_NO_LID_B, true],
    ]],
    ["items", [
        [BOX_SIZE_XYZ, [210.0, 35.0, 15.0] ],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [31.0, 31.0, 12.0]],
            [CMP_NUM_COMPARTMENTS_XY, [6, 1]],
            [CMP_PADDING_XY, [3, 0]],
            [CMP_SHAPE_VERTICAL_B, true],
            [CMP_SHAPE, ROUND],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 50.0],
            [CMP_CUTOUT_WIDTH_PCT, 50.0],
        ]],
        [BOX_NO_LID_B, false],
    ]],
    ["tools_x", [
        [BOX_SIZE_XYZ, [36.0, 133.0, 34.0] ],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [32.0, 25.0, 32.0]],
            [CMP_NUM_COMPARTMENTS_XY, [1, 5]],
            [CMP_SHAPE, ROUND],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 50.0],
            [CMP_CUTOUT_WIDTH_PCT, 75.0],
        ]],
        [BOX_NO_LID_B, true],
    ]],
    ["tools", [
        [BOX_SIZE_XYZ, [36.0, 66.0, 34.0] ],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [32.0, 62.0, 32.0]],
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_SHAPE, ROUND],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 50.0],
            [CMP_CUTOUT_WIDTH_PCT, 75.0],
        ]],
        [BOX_NO_LID_B, true],
    ]],
    ["d", [
        [BOX_SIZE_XYZ, [2+32+1+32+1+32+2, 66.0, 34.0] ],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [32.0, 62.0, 32.0]],
            [CMP_NUM_COMPARTMENTS_XY, [3, 1]],
            [CMP_SHAPE, ROUND],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 50.0],
            [CMP_CUTOUT_WIDTH_PCT, 75.0],
        ]],
        [BOX_NO_LID_B, true],
    ]],

];


MakeAll();