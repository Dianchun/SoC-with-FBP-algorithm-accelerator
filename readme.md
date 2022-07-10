# A SoC based on Arm CortexM3 processor with filtered back-projection algorithm accelerator

## Abstract
In this thesis, a Radon image reconstruction SoC system based on Arm Cortex-M3 processor is designed on the FPGA platform, and a hardware accelerator for the classical image reconstruction filtering back-projection algorithm is specially designed. In the design of the accelerator, the functions of memory access, filter, cache, calculation pipeline, and control are carefully divided to avoid coupling multiple functions in a single module, which greatly improves the reusability of modules, and also makes the accelerator more easy to modify and extend. Based on the complete pipeline design, the accelerator designed in this thesis realizes that the back-projection computing unit can expand any number of pipelines, realizes hardware pipeline, reduces the number of system memory accesses, and improves the overall processing speed of the accelerator.

The experimental results show that the SoC system designed in this thesis, based on the implementation of 60 pipeline parallel back-projection computing accelerators, can reconstruct the projection data of size 729×180 into an image of size 512×512, which only takes 7.13ms of time. It can reach a real-time processing frame rate of 140Hz, the output results are almost exactly the same as those calculated by MATLAB, and the structural similarity (SSIM) is as high as 0.9995.


