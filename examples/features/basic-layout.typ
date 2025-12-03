#import "../../src/lib.typ": draw-network // FOR YOUR OWN FILES, IMPORT THE FUNCTION FROM THE NEURAL-NETZ PACKAGE INSTEAD

#set page(width: auto, height: auto, margin: 5mm)

#draw-network((
    (type: "input", image: "default"),
    (type: "conv", offset: 2), // Next layers are automatically connected with arrows
    (type: "conv", offset: 2),
    (type: "pool"), // Pool layers are sticked to previous convolution block
    (type: "conv", widths: (1, 1), offset: 3) // you can offset layers
))