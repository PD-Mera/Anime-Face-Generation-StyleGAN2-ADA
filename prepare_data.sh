DATA_RAW_PATH="../data_raw/"
DATA_PROCESS_PATH="../data/"

cd stylegan2-ada-pytorch

if [ -d "$DATA_PROCESS_PATH" ]; then
  rm -I -r $DATA_PROCESS_PATH
fi

mkdir -p $DATA_PROCESS_PATH

python dataset_tool.py --source $DATA_RAW_PATH --dest $DATA_PROCESS_PATH