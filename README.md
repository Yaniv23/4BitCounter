# 4BitCounter

A simple VHDL project implementing a 4-bit asynchronous binary counter with an accompanying testbench for simulation.

## Project Files

- **BinaryCounter_4Bit_Asynchronous.vhd**: Implements a 4-bit binary counter that counts on each rising clock edge and asynchronously resets when `CLR` is high.
- **BinaryCounter_4Bit_Asynchronous_tb.vhd**: Testbench simulating the counter’s behavior, including clock generation and periodic asynchronous resets.

## Quick Overview

### Main Component: `BinaryCounter_4Bit_Asynchronous`

| Signal | Direction | Type                        | Description               |
|--------|-----------|-----------------------------|---------------------------|
| clock  | in        | `STD_LOGIC`                 | Clock signal              |
| CLR    | in        | `STD_LOGIC`                 | Asynchronous reset        |
| period | in        | `integer`                   | Simulation duration (TB)  |
| Q      | out       | `STD_LOGIC_VECTOR(3 downto 0)` | 4-bit counter output   |

### Architecture Highlights

- **Counting Logic**: Increments on each rising clock edge.
- **Asynchronous Reset**: Resets to 0 when `CLR` is high.

### Testbench Highlights

- **Clock Generation**: Simulates a clock with a 20 ns period.
- **Reset & Counting**: Asserts `CLR` for reset and observes the `Q` output over several cycles.

## Running the Simulation

1. **Compile & Simulate**: Import both `.vhd` files into your VHDL simulator.
2. **Run and Observe**: Check the `Q` output to see the counter in action.

## Requirements

- **VHDL Compiler**: Compatible with VHDL-93+
- **Vivado** (or any VHDL simulation tool)

Enjoy :)
