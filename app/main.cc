// File: main.cc

#include <garnet/garnet_top.h>

#include <fstream>
#include <ilang/util/log.h>

using namespace ilang;

int main() {
  // get the ILA model
  auto garnet = GetGarnetIla("garnet");

  // example - export ILA to Verilog
  ILA_INFO << "Export " << garnet << " to garnet.v";
  std::ofstream fw("garnet.v");
  garnet.ExportToVerilog(fw);
  fw.close();

  return 0;
}
