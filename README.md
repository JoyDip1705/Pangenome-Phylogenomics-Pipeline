Pangenome & Phylogenomics Pipeline:

This repository contains a complete workflow for performing pangenome analysis and phylogenomic reconstruction of Escherichia coli strains using anvi’o and IQ-TREE.

🧬 Workflow Overview
  1. Preprocessing: Clean FASTA headers and create Contigs Databases.
  2. Annotation: Run HMMs, COGs, tRNAs, and SCG Taxonomy.
  3. Pangenomics: Generate genome storage, compute the pangenome, and export gene clusters.
  4. Analytics: Generate presence/absence matrices, summary stats, and heatmaps via Python.
  5. Phylogenomics: Extract core genes and reconstruct a Maximum Likelihood tree.

🛠 Prerequisites:
Ensure you have the following installed:
     • anvi'o (v7.1 or later recommended)
     • IQ-TREE
     • Python 3.x with libraries: pandas, seaborn, matplotlib

🚀 Step-by-Step Execution
Step 1: Data Preparation:
Place your NCBI genome files (.fna) in a folder named genomes/.

   • Ecoli_O157.fna, Ecoli_K12.fna, Ecoli_UTI89.fna, Ecoli_TW08637.fna, Ecoli_RM6927.fna

Step 2: Clean FASTA Headers:
Simplify headers for anvi'o compatibility.
    
    • run clean_header.sh script

Step 3: Create Contigs Databases:
    
    • run contig_db.sh script

Step 4: Gene Annotation:
    
    • run annotation.sh script

Step 5: Pangenome, Presence/Absence & Matrix Generation and Visualization:
    
    • run pangenome.sh script

Summary Statistics & Heatmap:
    
    • Run python summary.py for core/accessory counts and python heatmap.py to generate pangenome_heatmap.png.

🌳 Phylogenomic Tree construction:
    
    • run phylogenic_tree.sh script

 Visualize the resulting .treefile using iTOL.

 
