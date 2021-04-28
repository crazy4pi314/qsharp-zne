# qsharp-zne
Playing around with implementing ZNE in Q#  (see [unitaryfund/mitiq](https://mitiq.readthedocs.io/en/stable/) for Python implementation of ZNE and other error mitigation techniques). The end goal is to use this to export to QIR and run on XXAC backend.

## Options for infrastructure:
- Q# library
- **Q# command line app**
- Q# + Python host
- Q# Notebook

## What do we need to write??

### 1. Ways to scale the noise

- [x] Global folding
- [ ] Local folding

### 2. Ways to run the circuit (aka executors)

- [x] Noisy simulator! (0.15.210223541-alpha, [link to issue](https://github.com/microsoft/qsharp-runtime/issues/504)). Instructions on how to setup/run this below.

### 3. Collect and process the noisy data (aka factories) _DEFINITELY WRONG_:

- [x] function to collect and average the measurements
- ][  function to linear fit the scale value/expectation value pair

## Setup the project

1. Create a new conda env to isolate what we are doing:

   ```
   > conda create -n noisysim notebook matplotlib
   > conda activate noisysim
   > conda install qutip -c conda-forge
   ```

2. Install the IQSharp tool with a version number matching what you have in the *.csproj here (currently 0.15.210223541-alpha)

   ```
   > dotnet tool install -g Microsoft.Quantum.IQSharp --version 0.15.210223541-alpha
   ```

3. Clone the IQSharp repo and check out the `cgranade/experimental/opensim` branch

   ```
   > git clone https://github.com/microsoft/iqsharp.git
   > git checkout cgranade/experimental/opensim
   ```

4. Install the experimental version of the Python package from the IQSharp repo (make sure you are still in the right conda env).

   ```
   > cd .\src\Python\
   > python setup.py install
   ```
