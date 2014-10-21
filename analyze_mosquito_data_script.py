import pandas as pd
import analyze_mosquito_data_lib as mosquito_lib

#filename = "./rawdata/A1_mosquito_data.csv"
filename = "A1_mosquito_data.csv"

data = pd.read_csv("./rawdata/" + filename)
data["temperature"] = mosquito_lib.fahr_to_celsius(data["temperature"])

parameters = mosquito_lib.analyze(data, "plot.png")

# Save parameters to file
parameters.to_csv("parameters.csv")

print data.head()