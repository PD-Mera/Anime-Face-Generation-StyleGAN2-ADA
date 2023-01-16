NETWORK=../training-runs/00004--mirror-auto1-resumecustom/network-snapshot-003400.pkl
OUTPUT_DIR=../out
PROJECTED_W=../assets/projected_w.npz

cd stylegan2-ada-pytorch

python generate.py --outdir=$OUTPUT_DIR \
                   --projected-w=$PROJECTED_W \
                   --network=$NETWORK