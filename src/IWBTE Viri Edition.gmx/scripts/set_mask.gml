/// set_mask()
// Sets the correct playermask based on gravity

if (global.pGravity) {
    mask_index = sPlayerMask;
} else {
    mask_index = sPlayerMaskFlip;
}

