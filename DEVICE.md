# Config on some device

## Server 3060 - 12GB VRAM

Set up CUDA_VER=11.6

``` bash
export CUDA_VER=11.6
export PATH=/usr/local/cuda-$CUDA_VER/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-$CUDA_VER/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda-$CUDA_VER
```