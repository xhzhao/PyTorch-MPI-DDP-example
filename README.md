# PyTorch-MPI-DDP-example
****
This github's target is to enable MPI-DDP in PyTorch. As you know, PyTorch [DDP](http://pytorch.org/docs/master/nn.html#torch.nn.parallel.DistributedDataParallel) only support nccl and gloo backends.  

You will be able to enable the distributed MPI-backend PyTorch Training with only 2 lines:  
1. add DistributedSampler in your DataLoader  
2. pass your model to DistributedDataParallel  

This usage is exactly the same as the torch.nn.parallel.DistributedDataParallel()
See imagenet example here: https://github.com/pytorch/examples/blob/master/imagenet/main.py#L88

### Requirements
****
  * Pytorch : build from source (v0.3.1 is recommended)


### Usage
****
    bash run.sh
