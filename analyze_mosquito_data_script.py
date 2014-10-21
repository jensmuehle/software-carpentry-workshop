import pandas as pd
import analyze_mosquito_data_lib as mosquito_lib
import sys

filename = sys.argv[1]

#filename = "./rawdata/A1_mosquito_data.csv"
#filename = "A1_mosquito_data.csv"

data = pd.read_csv(filename)
data["temperature"] = mosquito_lib.fahr_to_celsius(data["temperature"])

parameters = mosquito_lib.analyze(data, filename.replace("csv","png"))

# Save parameters to file
parameters.to_csv(filename.replace("data","parameters"))

print data.head()