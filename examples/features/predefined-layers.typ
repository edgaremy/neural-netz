#import "../../src/lib.typ": draw-network // FOR YOUR OWN FILES, IMPORT THE FUNCTION FROM THE NEURAL-NETZ PACKAGE INSTEAD

#set page(width: auto, height: auto, margin: 5mm)

#let layers = (
  (
    type: "input",
    label: "Input"
  ),(
    type: "conv",
    widths: (0.3, 0.4),
    label: "Conv Block"
  ),(
    type: "pool",
    channels: ("", "pool"),
    label: "MaxPool",
    offset: 1
  ),(
    type: "convres",
    widths: (0.35, 0.35),
    label: "ResBlock",
    offset: 1
  ),(
    type: "unpool",
    channels: ("", "unpool"),
    label: "Unpool",
    offset: 1
  ),(
    type: "deconv",
    label: "Deconv",
    offset: 1
  ),(
    type: "concat",
    label: "Concat",
    offset: 1.4
  ),(
    type: "gap",
    label: "GAP"
  ),(
    type: "fc",
    label: "Dense",
    offset: 0.7
  ),(
    type: "convsoftmax",
    label: "ConvSoftmax",
    offset: 0.7
  ),(
    type: "sum",
    label: "+",
    channels: (""),
    offset: 0.7
  ),(
    type: "softmax",
    label: "Softmax",
    offset: 0.4
  ),(
    type: "output",
    label: "Output",
    offset: 1
  ),(
    type: "custom",
    widths: (0.2, 0.3, 0.2),
    height: 3,
    depth: 3,
    label: "Custom",
    legend: "Custom Layer",
    offset: 0.6
  ),
)

#draw-network(layers,
show-relu: true,
show-legend: true,
palette: "warm"
)

#draw-network(layers,
show-relu: true,
show-legend: true,
palette: "cold"
)