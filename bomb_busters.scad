include <lib/boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = t;

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = (g_isolated_print_box == "tools" || g_isolated_print_box == "nano") ? 1.0 : 1.5;


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
    ["cables", [
        [BOX_SIZE_XYZ, [101.0, 91.5, 15.5] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [2, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 48.5, 30.0, 15.0]],
            [POSITION_XY, [0,0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1,1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [98, 57.5, 15.0]],
            [POSITION_XY, [0,31]],
        ]],
        [BOX_NO_LID_B, false],
        [BOX_LID, [
            [LID_FIT_UNDER_B, f],
        ]],
    ]],
    ["flags", [
        [BOX_SIZE_XYZ, [79.0, 91.5, 15.5] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [3, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 24.6, 57.0, 15.0]],
            [POSITION_XY, [0,0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1,1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [24.6, 30.5, 15.0]],
            [POSITION_XY, [0,58]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1,1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [50.2, 30.5, 15.0]],
            [POSITION_XY, [25.6,58]],
        ]],
        [BOX_NO_LID_B, false],
        [BOX_LID, [
            [LID_FIT_UNDER_B, f],
        ]],
    ]],
    ["greens", [
        [BOX_SIZE_XYZ, [41.5, 91.5, 9.0] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1,1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [38.5, 88.5, 9.0]],
            [POSITION_XY, [0, 0]],
        ]],
        [BOX_NO_LID_B, false],
        [BOX_LID, [
            [LID_FIT_UNDER_B, f],
        ]],
    ]],
    ["missions", [
        [BOX_SIZE_XYZ, [114.0, 91.5, 24.0] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1,1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [36.0, 11.0, 12.0]],
            [POSITION_XY, [0, 0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1,1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [37.0, 11.0, 24.0]],
            [CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
            [CMP_CUTOUT_HEIGHT_PCT, 50 ],
            [POSITION_XY, [37, 0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1,1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [36.0, 11.0, 12.0]],
            [POSITION_XY, [75, 0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1,1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [111, 77, 24.0]],
            [CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
            [CMP_CUTOUT_HEIGHT_PCT, 100 ],
            [CMP_CUTOUT_DEPTH_PCT, 10 ],
            [CMP_CUTOUT_TYPE, BOTH ],
            [POSITION_XY, [0, 12]],
        ]],
        [BOX_NO_LID_B, true],
    ]],
    ["nano", [
        [BOX_SIZE_XYZ, [70.0, 91.5, 41.5] ],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [68.0, 89.5, 41.5]],
        ]],
        [BOX_NO_LID_B, true],
    ]],
    ["tools", [
        [BOX_SIZE_XYZ, [66.5, 91.5, 24.0] ],
        [BOX_COMPONENT, [
            [CMP_COMPARTMENT_SIZE_XYZ, [64.5, 89.5, 24.0]],
            [CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
            [CMP_CUTOUT_HEIGHT_PCT, 100 ],
            [CMP_CUTOUT_DEPTH_PCT, 10 ],
            [CMP_CUTOUT_TYPE, BOTH ],
        ]],
        [BOX_NO_LID_B, true],
    ]],


];


MakeAll();