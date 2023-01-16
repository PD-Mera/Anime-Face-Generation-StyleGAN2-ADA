DATA_PROCESS_PATH="../data/"
GPU_NUM=1
RESULTS_DIR="../training-runs"

cd stylegan2-ada-pytorch

python train.py --outdir=$RESULTS_DIR \
                --data=$DATA_PROCESS_PATH \
                --gpus=$GPU_NUM \
                --mirror=1 \
                --metrics none # avoid error