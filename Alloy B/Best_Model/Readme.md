# Best Model - Alloy B

## Selected ANN Model

The ANN model BB_11 was selected as the optimal model for Alloy B (2219 Aluminium Alloy + 0.1 wt% Silver).

## Selection Criteria

- Minimum RMS Error
- Lowest Percentage Deviation
- Highest Prediction Accuracy

## ANN Configuration

### Input Parameters

- Strain
- Strain Rate
- Temperature

### Output Parameter

- Flow Stress

## Network Details

- Feed Forward Neural Network
- Hidden Layer: 5 Neurons
- Activation Function: Logsig
- Output Function: Purelin
- Training Algorithm: Levenberg-Marquardt (trainlm)

## Generation of BB_11 Model

Multiple ANN models were trained and evaluated using the experimental hot deformation data of Alloy B.

The workflow involved:

1. Collection of experimental flow stress data.
2. Data normalization.
3. ANN training using different model configurations.
4. Performance evaluation based on RMS Error, Percentage Deviation, and Prediction Accuracy.
5. Selection of the best-performing model.

Among all the trained ANN models, BB_11 demonstrated the best overall performance and was therefore selected as the final predictive model.

## Role of BB_11 Model

The BB_11 model was used to predict flow stress values across different combinations of:

- Temperature
- Strain Rate
- Strain

The generated flow stress dataset was subsequently used for:

1. Calculation of strain rate sensitivity (m).
2. Generation of Power Dissipation Efficiency Maps (η).
3. Generation of Instability Maps (ξ).
4. Construction of final Deformation Mechanism Maps (DMMs).

Thus, BB_11 served as the primary ANN model for the complete DMM analysis of Alloy B.

## Purpose

The selected model was used to accurately predict flow stress behavior and support the generation of deformation mechanism maps for Alloy B (2219 Aluminium Alloy + 0.1 wt% Silver).
