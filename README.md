# Supplemental Code: Epigenetic Regulation of Secondary Metabolism (Manuscript in Prep)

![R](https://img.shields.io/badge/Language-R%204.0.0+-blue.svg)
![Type](https://img.shields.io/badge/Data-Simulated-green.svg)
![Context](https://img.shields.io/badge/Tissue-Glandular%20Trichomes-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

## 📄 Context
This repository contains reproducible R scripts generating **theoretical models of chromatin states and spatial gene expression patterns**, corresponding to **Figure 2** of the upcoming review manuscript:

> **"Epigenetic Regulation of Secondary Metabolism: Spatial Dynamics in Glandular Trichomes"**
> *(Manuscript in Preparation)*

The code simulates the differential regulation of the **Flavonoid Biosynthesis Pathway** (PAL1 → UFGT) to visualize hypothesized metabolic gradients between trichomes and mesophyll tissue.

## 📂 Repository Structure

    ├── Figure2_Spatial_Simulation.R  # Main simulation and plotting script
    ├── Figure2_Spatial_Heatmap.png   # Output visualization
    └── README.md                     # Project documentation

## 🧬 Analysis Overview

The script `Figure2_Spatial_Simulation.R` performs the following computational tasks:
1.  **Pathway Modeling:** Simulates normalized count data (TPM) for key enzymes (*PAL1, CHS, CHI, F3H, FLS, ANS, UFGT*).
2.  **Spatial Logic:** Models differential chromatin accessibility states between **Glandular Trichomes** (specialized metabolic cells) and **Mesophyll** (photosynthetic cells).
3.  **Visualization:** Generates hierarchical clustering heatmaps to demonstrate tissue-specific metabolic signatures.

## 📊 Visualization Output

**Figure 2: Spatial Expression Heatmap**
![Spatial Heatmap](figures/Figure2_Spatial_Heatmap.png)
*Hierarchical clustering of simulated expression profiles showing distinct metabolic signatures in trichomes compared to mesophyll tissue. High expression of early biosynthetic genes (CHS, CHI) is modeled in the trichome fraction.*

## 💻 Usage

### Dependencies
The analysis requires **R (>= 4.0.0)** and the following package:
* `pheatmap`

### Installation
Run the following command in R to install dependencies:

    install.packages("pheatmap")

### Reproduction Steps
To generate the figure from scratch:

1.  **Clone the repository:**
    
        git clone https://github.com/YourUsername/Supplemental_Code_Epigenetic_Metabolism.git

2.  **Set the working directory** to the repository root.

3.  **Run the script:**

        source("Figure2_Spatial_Simulation.R")

## 👨‍💻 Author

**Anant Kaushal**
*Computational Epigenetics Researcher*
*Specializing in Plant Secondary Metabolism & Spatial Biology*

---
*© 2026 Anant Kaushal. All rights reserved.*
