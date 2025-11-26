# neural-netz
Visualize Neural Network Architectures in high-quality diagrams in [Typst](https://typst.app), with style and API inspired by [PlotNeuralNet](https://github.com/HarisIqbal88/PlotNeuralNet).

Under the hood, this package only uses the native Typst package [CeTZ](https://typst.app/universe/package/cetz/) for building the diagrams.

TODO ADD IMAGE

# Usage

Simply import the package in order to call its drawing function:
```typ
#import "@preview/neural-netz:0.1.0"
```
You can then call `draw-network` which has the following arguments:
```typ
draw-network(
  layers,
  connections: (),
  palette: "warm",
  show-legend: false,
  scale: 100%,
  stroke-thickness: 1,
  depth-multiplier: 0.3,
  show-relu: false,
)
```
See the examples in the following section to understand how to use it. Alternatively, you can also start from already written architecture examples (see the Examples section).

# Features

# Examples
Here are a few network architectures implemented with neural-netz:


# Acknowledgements