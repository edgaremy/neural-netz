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
Here are a few network architectures implemented with neural-netz (more can be found [in the repo](https://github.com/edgaremy/neural-netz/blob/main/examples/networks)).

### ResNet18
<img src="https://github.com/edgaremy/neural-netz/blob/main/gallery/networks/ResNet18.png?raw=true" width="400" align="center">

[code for this image](https://github.com/edgaremy/neural-netz/blob/main/examples/networks/ResNet18.typ)

### U-Net

<img src="https://github.com/edgaremy/neural-netz/blob/main/gallery/networks/U-Net.png?raw=true" width="400" align="center">

[code for this image](https://github.com/edgaremy/neural-netz/blob/main/examples/networks/U-Net.typ)

### FCN-8

<img src="https://github.com/edgaremy/neural-netz/blob/main/gallery/networks/FCN-8.png?raw=true" width="400" align="center">

[code for this image](https://github.com/edgaremy/neural-netz/blob/main/examples/networks/FCN-8.typ)


# Acknowledgements

This package could not have existed without the great Python+LaTeX visualization package [PlotNeuralNet](https://github.com/HarisIqbal88/PlotNeuralNet) made by Haris Iqbal. It proposes an elegant way for viewing neural networks, and its visual style was obviously a strong inspiration for the implementation of neural-netz.