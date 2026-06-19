# Train Model Simulation on Simulink

A MATLAB/Simulink simulation of a two-mass train system, modeling the coupled dynamics between two train cars connected by a spring (coupling stiffness), subject to friction and an applied traction force.

## Overview

This project models the dynamic behavior of a simplified train system consisting of two masses (e.g., a locomotive and a trailing car) connected by a spring coupling. The system accounts for:

- Inertial dynamics of both masses
- Friction (resistive) forces
- Spring coupling stiffness between the two masses
- An externally applied traction force

The Simulink model (`trainmodel.slx`) implements the system dynamics, and the MATLAB script (`run_simulation.m`) sets the parameters, runs the simulation, and plots the results.

## Files

| File | Description |
|------|-------------|
| `trainmodel.slx` | Simulink model of the two-mass train system |
| `run_simulation.m` | MATLAB script to set parameters, run the simulation, and plot results |

## Model Parameters

| Symbol | Description | Value |
|--------|-------------|-------|
| `M1` | Mass of the first body (e.g., locomotive) | 1 kg |
| `M2` | Mass of the second body (e.g., trailing car) | 0.5 kg |
| `Mu` | Coefficient of friction | 0.02 |
| `g` | Gravitational acceleration | 9.81 m/s² |
| `k` | Spring coupling stiffness | 1 N/m |
| `F` | Applied traction force | 1 N |

## Requirements

- MATLAB (tested on R2023a or later — update this to match your version)
- Simulink

## How to Run

1. Clone this repository:
```bash
   git clone https://github.com/Karthik-227/train-model-simulation-on-Simulink.git
```
2. Open MATLAB and navigate to the cloned folder.
3. Run the script:
```matlab
   run_simulation
```
4. The script will:
   - Set the model parameters
   - Run the Simulink simulation (`trainmodel.slx`)
   - Plot the velocity of mass 1 and the applied force over time

## Output

The script generates a plot comparing:
- **Velocity of Mass 1** (`out.velocity1.Data`)
- **Applied Force** (`out.force.Data`)

over the course of the simulation.

## Future Improvements

- Add configurable simulation time and solver settings
- Extend to N-mass coupled systems
- Add unit tests / validation against analytical solutions
- Export plots automatically to a `results/` folder

## License

This project is licensed under the MIT License (or update this if you chose a different license).
