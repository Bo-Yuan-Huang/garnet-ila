# Instrucion-Level Abstraction (ILA) of garnet

This ILA model is derived based on the [garnet](https://github.com/StanfordAHA/garnet) design.
Check their [license](https://github.com/StanfordAHA/garnet/blob/master/LICENSE) for further details.

## Build

To compile the ILA model and, for example, generate the Verilog file. Run

```bash
mkdir -p build && cd build
cmake .. -DCMAKE_PREFIX_PATH=<ilang/install/dir>
./garnet
```
