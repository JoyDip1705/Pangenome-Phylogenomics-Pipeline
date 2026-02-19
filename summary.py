import pandas as pd

df = pd.read_csv("gene_presence_absence_matrix.txt", sep="\t", index_col=0)

core = (df.sum(axis=1) == df.shape[1]).sum()
singleton = (df.sum(axis=1) == 1).sum()
accessory = len(df) - core - singleton

print("Core genes:", core)
print("Accessory genes:", accessory)
print("Singleton genes:", singleton)

