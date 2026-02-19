#!/bin/bash

# --- Configuration ---
EXTERNAL_GENOMES="genomes.txt"
HMM_SOURCE="Bacteria_71"
OUTPUT_FASTA="concatenated-proteins.fa"
GENES="Ribosomal_L1,Ribosomal_L2,Ribosomal_L3,Ribosomal_L4,Ribosomal_L5,Ribosomal_L6"


# --- List Available Genes (Optional/Verification) ---
anvi-get-sequences-for-hmm-hits --external-genomes "$EXTERNAL_GENOMES" \
                                --hmm-source "$HMM_SOURCE" \
                                --list-available-gene-names


# --- Extract and Concatenate Sequences ---
anvi-get-sequences-for-hmm-hits --external-genomes "$EXTERNAL_GENOMES" \
                                -o "$OUTPUT_FASTA" \
                                --hmm-source "$HMM_SOURCE" \
                                --gene-names "$GENES" \
                                --return-best-hit \
                                --get-aa-sequences \
                                --concatenate


# --- Build Phylogenomic Tree with IQ-TREE ---
# -m MFP: Automatic ModelFinder
# -bb 1000: Ultrafast bootstrap
# -nt AUTO: Use optimal number of CPU cores

iqtree -s "$OUTPUT_FASTA" \
       -m MFP \
       -bb 1000 \
       -nt AUTO