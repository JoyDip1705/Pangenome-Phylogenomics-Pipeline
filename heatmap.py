import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

df = pd.read_csv("gene_presence_absence_matrix.txt", sep="\t", index_col=0)

sns.clustermap(
    df,
    cmap=["white", "blue"],
    metric="jaccard",
    method="average",
    row_cluster=False,   # ← important
    col_cluster=True,
    figsize=(14, 10)
)

plt.savefig("pangenome_heatmap.png", dpi=300)
plt.show()

