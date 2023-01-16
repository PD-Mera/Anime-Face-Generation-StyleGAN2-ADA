NETWORK=../training-runs/00004--mirror-auto1-resumecustom/network-snapshot-003400.pkl
OUTPUT_DIR=../out
TRUNC=0.5
SEEDS=177 #85,265,297,849 #or 600-605

cd stylegan2-ada-pytorch

# Generate curated MetFaces images without truncation (Fig.10 left)
python generate.py --outdir=$OUTPUT_DIR \
                   --trunc=$TRUNC \
                   --seeds=$SEEDS \
                   --network=$NETWORK
