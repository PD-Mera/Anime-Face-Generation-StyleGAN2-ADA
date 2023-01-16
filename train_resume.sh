DATA_PROCESS_PATH="../data/"
GPU_NUM=1
# BATCH_SIZE=2
RESULTS_DIR="../training-runs"
RESUME_NET="../training-runs/00005--mirror-auto1-resumecustom/network-snapshot-004200.pkl"

cd stylegan2-ada-pytorch

python train.py --outdir=$RESULTS_DIR \
                --data=$DATA_PROCESS_PATH \
                --gpus=$GPU_NUM \
                --resume=$RESUME_NET \
                --mirror=1 \
                --metrics none # avoid error