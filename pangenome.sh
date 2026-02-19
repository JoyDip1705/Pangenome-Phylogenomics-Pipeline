#!/bin/bash

# --- Configuration ---
GENOMES_TXT="genomes.txt"
STORAGE_DB="ECOLI-GENOMES.db"
PAN_DIR="pan_output"
PROJECT_NAME="ecoli_pan"
THREADS=4


# --- Look at Genome Stats ---
anvi-display-contigs-stats *db


# --- Create Genome Storage ---
anvi-gen-genomes-storage -e "$GENOMES_TXT" \
                         -o "$STORAGE_DB"


# --- Pangenome Analysis ---
anvi-pan-genome -g "$STORAGE_DB" \
                -o "$PAN_DIR" \
                --project-name "$PROJECT_NAME" \
                --num-threads "$THREADS"


# --- Visualize the Pangenome ---
anvi-display-pan -p "${PAN_DIR}/${PROJECT_NAME}-PAN.db" \
                 -g "$STORAGE_DB"


# --- Export Presence/Absence Matrix ---
anvi-export-gene-clusters -p "${PAN_DIR}/${PROJECT_NAME}-PAN.db" \
                          -g "$STORAGE_DB" \
                          -o clusters_long.txt

