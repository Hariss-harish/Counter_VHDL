# 4-Bit FPGA Counter Using VHDL

## Overview
This project implements a 4-bit synchronous binary counter using VHDL and Xilinx Vivado. The design was simulated, synthesized, implemented, and analyzed using Vivado's timing and resource utilization reports.

## Objectives
- Design a synchronous binary counter using VHDL.
- Verify counter operation using a VHDL testbench.
- Understand synthesis and FPGA implementation.
- Analyze timing and hardware resource utilization.

## Tools Used
- **HDL:** VHDL
- **Design and simulation:**  Xilinx Vivado
- **Target device:** Virtex-7 XC7VX485T (part: `xc7vx485tffg1157-1`)

## Design Description
The counter has a clock input, an active-high synchronous reset, and a 4-bit output.

- On each rising edge of the clock, the counter increments by one when reset is inactive.
- When reset is asserted at a rising edge, the counter returns to `0000`.
- After reaching `1111`, the counter wraps around to `0000`.

## Project Structure
- `src/` — VHDL design files
- `tb/` — VHDL testbench files
- `constraints/` — XDC timing constraints
- `docs/` — Simulation waveforms and Vivado reports

## Verification
Behavioral simulation was completed and the expected counter waveform was observed.

## Implementation Results
The following results were recorded from Vivado:

| Metric | Result |
|---|---|
| Slice registers used | 4 |
| Slice LUTs used | 2 |
| Worst Negative Slack (WNS) | 9.003 ns |
| Worst Hold Slack (WHS) | 0.205 ns |
| Timing status | All user-specified timing constraints met |

The timing report also produced unconstrained-path warnings that require further investigation. Therefore, the timing results should be interpreted in the context of the constraints currently applied.

## Learning Outcomes
- Writing synthesizable VHDL.
- Creating and running a testbench.
- Reading simulation waveforms.
- Understanding synthesis and implementation.
- Interpreting timing and resource utilization reports.

## Limitations and Future Work
- Investigate and resolve remaining timing-constraint warnings.
- Add a clock-enable counter and verify it in simulation.
- Implement the design on a compatible FPGA development board when available.
- Add board-specific pin constraints and test LED outputs.

## Author
Electronics and Communication Engineering student learning FPGA design and digital hardware development.
