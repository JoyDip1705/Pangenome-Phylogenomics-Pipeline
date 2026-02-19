import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

value = np.array([3348, 0, 1143, 1132])
lebel = ["Core", "Soft_core", "Accessory", "Singleton"]

plt.pie(value, labels= lebel, explode= [0.05, 0, 0, 0], shadow= True, autopct= "%1.1f%%")
plt.title("Pangenome analysis")
plt.savefig("piechart.png", dpi = 300, bbox_inches = "tight")
plt.show()