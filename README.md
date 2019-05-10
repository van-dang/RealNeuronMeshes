# Neuron Meshes

We generate volume meshes for a population of 36 pyramidal and 29 spindle neurons. They are distributed in the anterior frontal insula (aFI) and the anterior cingulate cortex (ACC) of the neocortex of the human brain. They share some morphological similarities such as having a single soma and dendrites branching on opposite sides. This population consists of 20 neurons for each type in aFI, and 9 spindles, 16 pyramidals in ACC.

We started with SWC files (morphological reconstructions) published in the largest collection of publicly accessible 3D neuronal reconstructions at NeuroMorpho.Org. These surface representations were not ready to use for FEM-based simulators since they contain many self-intersections and proximities. So, we used ANSA-BETA CEA Systems to fix the meshes. To feed them to ANSA, these files need to be converted to the STL files format by using swc2vtk and vtk2stl. We wrapped the STL meshes and generated watertight surface and volume meshes. The outputs NAS of ANSA were converted to MSH files by GMSH.

For further investigations of diffusion inside soma and dendrites, we have also broken the neurons into two parts.


## Wrapped surface meshes

#### Pyramidals
https://github.com/van-dang/RealNeuronMeshes/tree/master/surface_meshes/pyramidals

#### Spindles  
https://github.com/van-dang/RealNeuronMeshes/tree/master/surface_meshes/spindles

## Volume mesh

#### Connected pyramidals
https://github.com/van-dang/RealNeuronMeshes/tree/master/volume_meshes/pyramidals

#### Connected spindles  
https://github.com/van-dang/RealNeuronMeshes/tree/master/volume_meshes/spindles

#### Separated pyramidals
https://github.com/van-dang/RealNeuronMeshes/tree/master/volume_meshes/separated_pyramidals

#### Separated spindles  
https://github.com/van-dang/RealNeuronMeshes/tree/master/volume_meshes/separated_spindles
