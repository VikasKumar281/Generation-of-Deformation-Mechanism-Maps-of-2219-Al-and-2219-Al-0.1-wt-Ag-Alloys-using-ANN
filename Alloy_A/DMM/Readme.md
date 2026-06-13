# Deformation Mechanism Maps (DMM) - Alloy A

## Overview

This folder contains the Deformation Mechanism Maps (DMMs) generated for Alloy A (2219 Aluminium Alloy) using the flow stress values predicted by the Artificial Neural Network (ANN) model.

## Purpose

The deformation mechanism maps were developed to identify safe and unsafe hot working regions under different combinations of:

- Temperature
- Strain Rate
- Strain

## Methodology

1. Experimental hot deformation data were collected.
2. ANN models were trained and validated.
3. The best ANN model (AA_08) was selected.
4. Flow stress values were predicted over the required processing domain.
5. Processing maps and deformation mechanism maps were generated using the predicted flow stress data.

## Selected ANN Model

- Model: AA_08
- Architecture: 3-9-1
- Training Algorithm: Levenberg-Marquardt (trainlm)

## Output

The generated maps can be used to:

- Analyze deformation behavior
- Identify instability regions
- Determine optimal hot working conditions
- Improve process design and material performance

## Material

2219 Aluminium Alloy (0 wt% Ag)
