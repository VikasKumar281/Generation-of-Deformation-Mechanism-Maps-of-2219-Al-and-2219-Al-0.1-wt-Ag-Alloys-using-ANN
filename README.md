# ANN-Based Deformation Mechanism Maps for 2219 Al and 2219 Al–0.1 wt% Ag Alloys

## Project Overview

This project focuses on the development of Artificial Neural Network (ANN) models for predicting flow stress behavior and generating Deformation Mechanism Maps (DMMs) for:

- Alloy A: 2219 Aluminium Alloy
- Alloy B: 2219 Aluminium Alloy micro-alloyed with 0.1 wt% Silver

The objective was to accurately model hot deformation behavior using ANN and utilize the predicted flow stress values to construct processing maps and deformation mechanism maps.

---

## Objectives

- Predict flow stress using ANN.
- Optimize ANN architecture for accurate prediction.
- Generate power dissipation efficiency maps.
- Generate instability maps.
- Construct deformation mechanism maps (DMMs).
- Identify optimum hot working windows.
- Compare the deformation behavior of Alloy A and Alloy B.

---

## Experimental Parameters

### Input Parameters

- Strain
- Strain Rate
- Deformation Temperature (K)

### Output Parameter

- Flow Stress (MPa)

### Deformation Conditions

- Temperature Range: 573 K – 773 K
- Strain Rate Range: 0.001 s⁻¹ – 10 s⁻¹
- Strain Levels: 0.1 – 0.6

---

## ANN Methodology

### Data Preparation

Experimental hot compression data were collected for both alloys.

The dataset was divided into:

- Training Data (50%)
- Testing Data (35%)
- Validation Data (15%)

All input parameters were normalized before training.

### ANN Architecture

- Network Type: Feed Forward Neural Network
- Inputs: 3
- Output Neurons: 1
- Hidden Activation Function: Logsig
- Output Activation Function: Purelin
- Training Algorithm: Levenberg-Marquardt (trainlm)

### Model Selection

Multiple ANN configurations were trained and evaluated.

#### Alloy A

- Best Model: AA_08
- Hidden Neurons: 5

#### Alloy B

- Best Model: BB_11
- Hidden Neurons: 5

Selection criteria:

- Minimum RMS Error
- Lowest Percentage Deviation
- Highest Prediction Accuracy

---

# Alloy A (2219 Aluminium Alloy)

## Workflow

1. Collection of experimental flow stress data.
2. Data normalization.
3. ANN training and validation.
4. Selection of optimal ANN model (AA_08).
5. Flow stress prediction across the processing domain.
6. Calculation of strain rate sensitivity (m).
7. Generation of power dissipation efficiency maps.
8. Generation of instability maps.
9. Construction of final deformation mechanism maps.

## DMM Analysis

The DMMs were generated at different strain levels.

### Power Dissipation Efficiency Maps

These maps represent the ability of the material to dissipate power through microstructural mechanisms such as:

- Dynamic Recovery (DRV)
- Dynamic Recrystallization (DRX)
- Grain Boundary Sliding

Higher efficiency values indicate favorable deformation conditions.

### Instability Maps

Instability maps identify regions susceptible to:

- Flow Localization
- Cracking
- Adiabatic Shear Bands
- Metallurgical Instabilities

Negative instability values represent unsafe processing regions.

### Deformation Mechanism Maps

Final DMMs were obtained by superimposing efficiency and instability maps to identify:

- Safe Processing Regions
- Unsafe Processing Regions
- Optimum Hot Working Windows

---

# Alloy B (2219 Al–0.1 wt% Ag)

## Workflow

1. Collection of experimental flow stress data.
2. Data normalization.
3. ANN training and validation.
4. Selection of optimal ANN model (BB_11).
5. Flow stress prediction across the processing domain.
6. Calculation of strain rate sensitivity (m).
7. Generation of power dissipation efficiency maps.
8. Generation of instability maps.
9. Construction of final deformation mechanism maps.

## DMM Analysis

The same DMM methodology was applied to Alloy B.

The addition of 0.1 wt% Ag altered the deformation behavior and processing characteristics, which can be observed through the generated efficiency and instability maps.

The final DMMs were used to compare the hot workability of Alloy B with Alloy A and identify favorable processing windows.


## Software Used

- MATLAB
- Tecplot 360
- Jupyter Notebook

---

## Results

The ANN models successfully predicted flow stress values with high accuracy and were used to generate deformation mechanism maps for both alloys.

The generated DMMs helped identify:

- Safe processing windows
- Instability regions
- Optimum hot working conditions
- Comparative deformation behavior of Alloy A and Alloy B

---

## Author

**Vikas Kumar & Nilansh Singh**

B.Tech, Mechatronics Engineering

Indian Institute of Information Technology Bhagalpur
