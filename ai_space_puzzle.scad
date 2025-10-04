// AI SPACE PUZZLE
// For Pegasus Spiele 1st Edition

include <lib/boardgame_insert_toolkit_lib.3.scad>;

// determines whether lids are output.
g_b_print_lid = f;

// determines whether boxes are output.
g_b_print_box = !g_b_print_lid;

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

cutout_size = 30;
pickup_size = 15;

data =
[
    ["cards_no_sleeves", [
        [BOX_SIZE_XYZ, [75.0, 27.0, 73.5] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 69.0, 9.0, 69.0]],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 40 ],
            [CMP_CUTOUT_WIDTH_PCT, 50 ],
            [POSITION_XY, [1.5,0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 69.0, 6.0, 69.0]],
            [POSITION_XY, [1.5,10]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 69.0, 3.0, 69.0]],
            [POSITION_XY, [1.5,17]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 69.0, 3.0, 69.0]],
            [POSITION_XY, [1.5,21]],
        ]],
        [BOX_NO_LID_B, false],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],
    ["cards_sleeved", [
        [BOX_SIZE_XYZ, [75.0, 27.0, 73.5] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 72.0, 9.0, 72.0]],
            [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
            [CMP_CUTOUT_HEIGHT_PCT, 40 ],
            [CMP_CUTOUT_WIDTH_PCT, 50 ],
            [POSITION_XY, [1.5,0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 72.0, 6.0, 72.0]],
            [POSITION_XY, [1.5,10]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 72.0, 3.0, 72.0]],
            [POSITION_XY, [1.5,17]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 72.0, 3.0, 72.0]],
            [POSITION_XY, [1.5,21]],
        ]],
        [BOX_NO_LID_B, false],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],
    ["hints_4", [
        [BOX_SIZE_XYZ, [137.0, 70.0, 3.5] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [2, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 26.0, 26.0, 2.0]],
            [CMP_CUTOUT_SIDES_4B, [f, t, f, f]],
            [CMP_PADDING_XY, [5, 1]],
            [CMP_CUTOUT_HEIGHT_PCT, 50],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [CMP_CUTOUT_DEPTH_PCT, 50],
            [CMP_CUTOUT_WIDTH_PCT, 70],
            [CMP_CUTOUT_BOTTOM_B, f],
            [POSITION_XY, [23+14,3]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [2, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 26.0, 26.0, 2.0]],
            [CMP_CUTOUT_SIDES_4B, [f, t, f, f]],
            [CMP_PADDING_XY, [5, 1]],
            [CMP_CUTOUT_HEIGHT_PCT, 50],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [CMP_CUTOUT_DEPTH_PCT, 50],
            [CMP_CUTOUT_WIDTH_PCT, 70],
            [CMP_CUTOUT_BOTTOM_B, f],
            [POSITION_XY, [23+14,37]],
        ]],
        [BOX_COMPONENT, [
            [CMP_SHAPE, ROUND],
            [CMP_SHAPE_VERTICAL_B, t],
            [CMP_NUM_COMPARTMENTS_XY, [2, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ cutout_size, cutout_size, 2.0]],
            [CMP_PADDING_XY, [137-cutout_size, 1]],
            [CMP_CUTOUT_BOTTOM_B, t],
            [CMP_CUTOUT_BOTTOM_PCT, 100],
            [POSITION_XY, [-(cutout_size)/2-1,(70-3-cutout_size)/2]],
        ]],
        [BOX_NO_LID_B, t],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],
    ["hints_5", [
        [BOX_SIZE_XYZ, [137.0, 70.0, 3.5] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [3, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 26.0, 26.0, 2.0]],
            [CMP_CUTOUT_SIDES_4B, [f, t, f, f]],
            [CMP_PADDING_XY, [5, 1]],
            [CMP_CUTOUT_HEIGHT_PCT, 50],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [CMP_CUTOUT_DEPTH_PCT, 50],
            [CMP_CUTOUT_WIDTH_PCT, 70],
            [CMP_CUTOUT_BOTTOM_B, f],
            [POSITION_XY, [23,3]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [2, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 26.0, 26.0, 2.0]],
            [CMP_CUTOUT_SIDES_4B, [f, t, f, f]],
            [CMP_PADDING_XY, [5, 1]],
            [CMP_CUTOUT_HEIGHT_PCT, 50],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [CMP_CUTOUT_DEPTH_PCT, 50],
            [CMP_CUTOUT_WIDTH_PCT, 70],
            [CMP_CUTOUT_BOTTOM_B, f],
            [POSITION_XY, [23+14,37]],
        ]],
        [BOX_COMPONENT, [
            [CMP_SHAPE, ROUND],
            [CMP_SHAPE_VERTICAL_B, t],
            [CMP_NUM_COMPARTMENTS_XY, [2, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ cutout_size, cutout_size, 2.0]],
            [CMP_PADDING_XY, [137-cutout_size, 1]],
            [CMP_CUTOUT_BOTTOM_B, t],
            [CMP_CUTOUT_BOTTOM_PCT, 100],
            [POSITION_XY, [-(cutout_size)/2-1,(70-3-cutout_size)/2]],
        ]],
        [BOX_NO_LID_B, t],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],
    ["hints_6", [
        [BOX_SIZE_XYZ, [137.0, 70.0, 3.5] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [3, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 26.0, 26.0, 2.0]],
            [CMP_CUTOUT_SIDES_4B, [f, t, f, f]],
            [CMP_PADDING_XY, [5, 1]],
            [CMP_CUTOUT_HEIGHT_PCT, 50],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [CMP_CUTOUT_DEPTH_PCT, 50],
            [CMP_CUTOUT_WIDTH_PCT, 70],
            [CMP_CUTOUT_BOTTOM_B, f],
            [POSITION_XY, [23,3]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [3, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 26.0, 26.0, 2.0]],
            [CMP_CUTOUT_SIDES_4B, [f, t, f, f]],
            [CMP_PADDING_XY, [5, 1]],
            [CMP_CUTOUT_HEIGHT_PCT, 50],
            [CMP_CUTOUT_TYPE, EXTERIOR],
            [CMP_CUTOUT_DEPTH_PCT, 50],
            [CMP_CUTOUT_WIDTH_PCT, 70],
            [CMP_CUTOUT_BOTTOM_B, f],
            [POSITION_XY, [23,37]],
        ]],
        [BOX_COMPONENT, [
            [CMP_SHAPE, ROUND],
            [CMP_SHAPE_VERTICAL_B, t],
            [CMP_NUM_COMPARTMENTS_XY, [2, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ cutout_size, cutout_size, 2.0]],
            [CMP_PADDING_XY, [137-cutout_size, 1]],
            [CMP_CUTOUT_BOTTOM_B, t],
            [CMP_CUTOUT_BOTTOM_PCT, 100],
            [POSITION_XY, [-(cutout_size)/2-1,(70-3-cutout_size)/2]],
        ]],
        [BOX_NO_LID_B, t],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],
    ["hints_box", [
        [BOX_SIZE_XYZ, [144.0, 74.0, 5*3.5+.5+1.5] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 138.0, 71.0, 5*3.5+.5]],
        ]],
        [BOX_NO_LID_B, f],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],
    ["player_util_box", [
        [BOX_SIZE_XYZ, [162.0, 69.0, 18] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 40.0, 66.0, 18.0]],
            [POSITION_XY, [0,0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 67.0, 66.0, 18.0]],
            [POSITION_XY, [41,0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 50.0, 32.5, 18.0]],
            [POSITION_XY, [109,0]],
        ]],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 50.0, 32.5, 18.0]],
            [POSITION_XY, [109,33.5]],
        ]],
        [BOX_NO_LID_B, f],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],
    ["card_stand_box", [
        [BOX_SIZE_XYZ, [88.0, 75.0, 18] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 31.0, 23.0, 16.0]],
            [POSITION_XY, [27,24.5]],
        ]],
        [BOX_COMPONENT, [
            [CMP_SHAPE, ROUND],
            [CMP_SHAPE_VERTICAL_B, t],
            [CMP_NUM_COMPARTMENTS_XY, [2, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ pickup_size, pickup_size, 16.0]],
            [CMP_PADDING_XY, [31-pickup_size, 1]],
            [CMP_CUTOUT_BOTTOM_B, f],
            [CMP_CUTOUT_BOTTOM_PCT, 100],
            [POSITION_XY, [(88-3-31-pickup_size)/2,(75-3-pickup_size)/2]],
        ]],
        [BOX_NO_LID_B, f],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],
    ["card_stand_alt_box", [
        [BOX_SIZE_XYZ, [88.0, 75.0, 18] ],
        [BOX_COMPONENT, [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
            [CMP_COMPARTMENT_SIZE_XYZ, [ 85.0, 72.0, 16.5]],
        ]],
        [BOX_NO_LID_B, f],
        [BOX_LID, [
            [LID_FIT_UNDER_B, t],
        ]],
    ]],

];


MakeAll();