


playerCardBox = [
    "player card box",
    [
    [ BOX_SIZE_XYZ, [PLAYER_CARD_BOX_X, PLAYER_CARD_BOX_Y, PLAYER_CARD_BOX_Z] ],
    [ BOX_STACKABLE_B, false],
    [ BOX_LID,
        [
            [ LID_SOLID_B, t]
        ]
    ],
    [ BOX_COMPONENT,
        [
            [CMP_COMPARTMENT_SIZE_XYZ,  [ PLAYER_CARD_BOX_X-2, PLAYER_CARD_BOX_Y-2, PLAYER_CARD_BOX_Z] ],
            [CMP_CUTOUT_SIDES_4B, [t,t,f,f]],
            [CMP_CUTOUT_TYPE, BOTH],
            [CMP_CUTOUT_WIDTH_PCT,33], // how wide the finger hole is
            [CMP_CUTOUT_HEIGHT_PCT,75 ], // how deep the finger-hole is from top
        ]
    ],
    ]   
];