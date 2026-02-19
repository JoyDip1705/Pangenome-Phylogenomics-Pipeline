import pandas as pd

df = pd.read_csv("clusters_long.txt", sep="\t")

# remove duplicate genome-cluster pairs
df = df.drop_duplicates(["genome_name", "gene_cluster_name"])

# count genomes per cluster
counts = df.groupby("gene_cluster_name")["genome_name"].nunique()

total_genomes = df["genome_name"].nunique()

summary = {
    "core": 0,
    "soft_core": 0,
    "accessory": 0,
    "cloud": 0
}

for c in counts:
    frac = c / total_genomes
    if frac >= 0.99:
        summary["core"] += 1
    elif frac >= 0.95:
        summary["soft_core"] += 1
    elif frac >= 0.15:
        summary["accessory"] += 1
    else:
        summary["cloud"] += 1

print("Total genomes:", total_genomes)
print(summary)

