
# ==============================================================================
# Project: Epigenetic Regulation of Secondary Metabolism (Review 2026)
# Script: Figure2_Spatial_Simulation.R
# Author: Anant Kaushal
# Description: Simulation of differential gene expression and methylation 
#              levels in Glandular Trichomes vs. Mesophyll Cells.
# ==============================================================================

# 1. Load Libraries
if (!require("pheatmap")) install.packages("pheatmap")
library(pheatmap)

# 2. Simulate Data (The "Math" behind the Biology)
# We create a matrix representing 'normalized counts' (TPM)
# Rows = Biosynthetic Genes (Flavonoid Pathway)
# Cols = Cell Types

genes <- c("PAL1", "CHS (Entry)", "CHI", "F3H", "FLS", "ANS", "UFGT")
cell_types <- c("Mesophyll_1", "Mesophyll_2", "Mesophyll_3", 
                "Trichome_1", "Trichome_2", "Trichome_3")

# Generate synthetic data:
# Mesophyll = Low Expression (Silenced by Methylation) -> Random low numbers
# Trichome = High Expression (Active/Demethylated) -> Random high numbers

set.seed(123) # Reproducibility
mesophyll_data <- matrix(rnorm(21, mean=10, sd=5), nrow=7)
trichome_data  <- matrix(rnorm(21, mean=500, sd=50), nrow=7)

# Combine into one dataset
expression_matrix <- cbind(mesophyll_data, trichome_data)
rownames(expression_matrix) <- genes
colnames(expression_matrix) <- cell_types

# Ensure no negative values (biologically impossible)
expression_matrix[expression_matrix < 0] <- 0

# 3. Visualization (The Heatmap)
# This generates a professional "Bioinformatics Style" plot

pheatmap(expression_matrix, 
         cluster_rows = FALSE, 
         cluster_cols = FALSE,
         display_numbers = TRUE,
         color = colorRampPalette(c("white", "cornflowerblue", "darkblue"))(50),
         main = "Spatial Compartmentalization of Flavonoid Biosynthesis",
         fontsize = 12,
         fontsize_row = 10,
         fontsize_col = 10,
         angle_col = 45)

# 4. Save Output
# This proves you can export high-res figures for publication
dev.copy(png, filename="Figure2_Spatial_Heatmap.png", width=800, height=600)
dev.off()

print("Analysis Complete: Heatmap generated.")