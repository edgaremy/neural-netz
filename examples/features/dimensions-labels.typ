#import "../../src/lib.typ": draw-network // FOR YOUR OWN FILES, IMPORT THE FUNCTION FROM THE NEURAL-NETZ PACKAGE INSTEAD

#set page(width: auto, height: auto, margin: 5mm)

#draw-network((
    (
      type: "convres", // Each layer type has its own color
      widths: (1, 2),
      channels: (32, 64, 128), // An extra channel will be used as diagonal axis label
      height: 6,
      depth: 8,
      label: "residual convolution",
    ),(
      type: "pool",
      channels: ("", "text also works"),
      height: 4,
      depth: 6,
      connection-label: "connection label", // label of the connection to the NEXT layer
    ),(
      type: "conv",
      widths: (1.5, 1.5),
      height: 2,
      depth: 3,
      label: "whole block label",
      legend: "CUSTOM NAME", // you can overwrite the default legend of predefined layers
      offset: 4,
    ),(
      type: "fc",
      channels: (10,),
      height: 5,
      depth: 0, // With no depth, the layer is drawn as a 2D rectangle
      label: "2D layer",
      offset: 2,
    ),
),
show-legend: true,
)