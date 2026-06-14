# Deformation Mechanism Maps (DMM) - Alloy B

## Overview

This folder contains the Deformation Mechanism Maps (DMMs) generated for Alloy B (2219 Aluminium Alloy + 0.1 wt% Silver) using flow stress values predicted by the Artificial Neural Network (ANN) model.

## Purpose

The deformation mechanism maps were developed to identify safe and unsafe hot working regions under different combinations of:

- Temperature
- Strain Rate
- Strain

## Methodology

1. Experimental hot deformation data were collected.
2. ANN models were trained and validated.
3. The best ANN model (BB_11) was selected based on prediction accuracy.
4. Flow stress values were predicted across the processing domain.
5. Strain rate sensitivity (m) was determined from the predicted flow stress data.
6. Power Dissipation Efficiency (η) maps were generated.
7. Instability Parameter (ξ) maps were generated using the instability criterion.
8. Efficiency and instability maps were superimposed to construct the final Deformation Mechanism Maps (DMMs).

## Selected ANN Model

- Model: BB_11
- Architecture: 3-9-1
- Training Algorithm: Levenberg-Marquardt (trainlm)

## DMM Components

### Power Dissipation Efficiency Map (η)

The efficiency map represents the capability of the material to dissipate power through microstructural mechanisms such as:

- Dynamic Recovery (DRV)
- Dynamic Recrystallization (DRX)
- Grain Boundary Sliding

Higher efficiency regions indicate favorable deformation conditions.

### Instability Map (ξ)

The instability map identifies regions where flow instability may occur, including:

- Flow Localization
- Adiabatic Shear Bands
- Cracking
- Material Instabilities

Negative instability values indicate unsafe processing regions.

## Output

The generated deformation mechanism maps were used to:

- Identify safe hot working windows
- Locate instability regions
- Analyze deformation behavior
- Determine optimum processing parameters
- Support process design and material optimization

## Material

2219 Aluminium Alloy + 0.1 wt% Silver (Alloy B)
