NETWORK=../training-runs/00004--mirror-auto1-resumecustom/network-snapshot-003400.pkl
OUTPUT_DIR=../out
TARGET=../assets/single.png
STEP=1000
SAVE_VIDEO=True

cd stylegan2-ada-pytorch

python projector.py --outdir=$OUTPUT_DIR \
                    --target=$TARGET \
                    --network=$NETWORK \
                    --num-steps=$STEP \
                    --save-video=$SAVE_VIDEO