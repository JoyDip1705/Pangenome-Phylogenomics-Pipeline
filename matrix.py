import pandas as pd

df = pd.read_csv("clusters_long.txt", sep="\t")

matrix = pd.crosstab(df["gene_cluster_name"], df["genome_name"])
matrix = (matrix > 0).astype(int)

matrix.to_csv("gene_presence_absence_matrix.txt", sep="\t")
print("Matrix saved.")
