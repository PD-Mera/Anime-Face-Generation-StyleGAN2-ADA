NETWORK=../training-runs/00004--mirror-auto1-resumecustom/network-snapshot-003400.pkl
OUTPUT_DIR=../out
TRUNC=0.5
ROWS=85,100,75,458,1500 #or 600-605
COLS=55,821,1789,293 #or 600-605

cd stylegan2-ada-pytorch

# Style mixing example
python style_mixing.py --outdir=$OUTPUT_DIR \
                       --rows=$ROWS \
                       --cols=$COLS \
                       --network=$NETWORK \
                       --trunc=$TRUNC