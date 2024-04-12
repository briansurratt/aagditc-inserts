characterCardBox = [
    "character card box",
    [
    [ BOX_SIZE_XYZ, [CHARACTER_CARD_BOX_X, CHARACTER_CARD_BOX_Y, CHARACTER_CARD_BOX_Z] ],
    [ BOX_STACKABLE_B, false],
    [ BOX_LID,
        [
            [ LID_SOLID_B, t]
        ]
    ],
    [ BOX_COMPONENT,
        [
            [ POSITION_XY, [0,0]], 
            [CMP_CUTOUT_SIDES_4B, [t,t,t,t]],
            [CMP_COMPARTMENT_SIZE_XYZ,  [ CHARACTER_CARD_COMP_X, CHARACTER_CARD_COMP_Y, CHARACTER_CARD_COMP_Z] ],
            [CMP_CUTOUT_TYPE, BOTH],
            [CMP_CUTOUT_WIDTH_PCT,33], // how wide the finger hole is
            [CMP_CUTOUT_HEIGHT_PCT,100 ], // how deep the finger-hole is from top
        ]
    ],
    ]   
];