#import "../../src/lib.typ": draw-network // FOR YOUR OWN FILES, IMPORT THE FUNCTION FROM THE NEURAL-NETZ PACKAGE INSTEAD

#set page(width: auto, height: auto, margin: 5mm)

#let layers = (
  (
    type: "input",
    label: "input"
  ),(
    type: "conv",
    widths: (0.3, 0.3),
    label: "conv"
  ),(
    type: "pool",
    label: "pool",
    offset: 1
  ),(
    type: "convres",
    widths: (0.3, 0.3),
    label: "convres",
    offset: 1
  ),(
    type: "unpool",
    label: "unpool",
    offset: 1
  ),(
    type: "deconv",
    label: "deconv",
    offset: 1
  ),(
    type: "concat",
    label: "concat",
    offset: 1.4
  ),(
    type: "gap",
    label: "gap"
  ),(
    type: "fc",
    label: "fc",
    offset: 0.7
  ),(
    type: "convsoftmax",
    label: "convsoftmax",
    offset: 0.7
  ),(
    type: "sum",
    label: "+",
    channels: (""),
    offset: 0.7
  ),(
    type: "softmax",
    label: "softmax",
    offset: 0.4
  ),(
    type: "output",
    label: "output",
    offset: 1
  ),(
    type: "custom",
    widths: (0.3, 0.3),
    height: 3,
    depth: 3,
    label: "custom",
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