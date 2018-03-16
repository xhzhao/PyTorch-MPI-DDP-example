# PyTorch-MPI-DDP-example
This github's target is to enable MPI-DDP in PyTorch. As you know, PyTorch [DDP](http://pytorch.org/docs/master/nn.html#torch.nn.parallel.DistributedDataParallel) only support nccl and gloo backends.  

You will be able to enable the distributed MPI-backend PyTorch Training with only 2 lines:  
1. add DistributedSampler in your DataLoader  
2. pass your model to DistributedDataParallel  

This usage is exactly the same as the torch.nn.parallel.DistributedDataParallel()
See imagenet example here: https://github.com/pytorch/examples/blob/master/imagenet/main.py#L88

### Requirements
  * Pytorch : build from source (v0.3.1 is recommended)


### Usage
    bash run.sh

### Strong vs Weak Scaling
This github implemented a strong scaling for mnist, which means the global batchsize is fixed no matter how many node we use. See more info about Strong vs Weak Scaling at [wiki](https://en.wikipedia.org/wiki/Scalability#Weak_versus_strong_scaling).  
Since this is a strong scaling example, we should perform an average after the all_reduce, which is the same as [torch.nn.parallel.DistributedDataParallel](https://github.com/pytorch/pytorch/blob/master/torch/nn/parallel/distributed.py#L338).

Our experient result:  
![result](https://github.com/xhzhao/PyTorch-MPI-DDP-example/blob/master/data/image.png)

### More examples for [PyTorch example](https://github.com/pytorch/examples/)
* mnist: https://github.com/xhzhao/examples/tree/master/mnist
* imagenet: https://github.com/xhzhao/examples/tree/master/imagenet
