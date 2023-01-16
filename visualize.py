import os
import pandas as pd
import json

WORKING_STATS_DIR = [
    "./training-runs/00001--auto1",
    "./training-runs/00004--mirror-auto1-resumecustom",
    "./training-runs/00005--mirror-auto1-resumecustom"

]

STATS_NAME = "stats.jsonl"

dataframe_keys = []

# Check keys
with open(os.path.join(WORKING_STATS_DIR[0], STATS_NAME)) as jsonl_file:
    json_sample = jsonl_file.readlines()[0]
    data_sample = json.loads(json_sample)
    keys = list(data_sample.keys())

# Get keys
for key in keys[:-1]:
    # dataframe_keys.append(key + "/num")
    dataframe_keys.append(key + "/mean")
    dataframe_keys.append(key + "/std")
dataframe_keys.append(keys[-1])

# Init Dataframe with key
df = pd.DataFrame(data=None, index=None, columns=dataframe_keys, dtype=None, copy=False)

save_dict = {}
for key in dataframe_keys:
    save_dict[key] = []

for working_dir in WORKING_STATS_DIR:
    with open(os.path.join(working_dir, STATS_NAME)) as jsonl_file:
        json_datas = jsonl_file.readlines()[1:]
        for json_data in json_datas:
            data = json.loads(json_data)
            for key in dataframe_keys:
                # if "/num" in key:
                #     save_dict[key].append(data[key.replace("/num", "")]["num"]) 
                if "/mean" in key:
                    save_dict[key].append(data[key.replace("/mean", "")]["mean"])
                elif "/std" in key:
                    save_dict[key].append(data[key.replace("/std", "")]["std"])
                else:
                    save_dict[key].append(data[key])
# print(save_dict)



data = pd.DataFrame(save_dict)
df = pd.concat((df, data))
os.makedirs("./csv_results", exist_ok=True)
df.to_csv("./csv_results/result.csv")
print(df)