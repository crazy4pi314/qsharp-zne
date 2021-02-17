# qsharp-zne
Playing around with implementing ZNE in Q#  (see unitaryfund/mitiq for Python implementation)


## Options for infrastructure:
- Q# library
- [x] Q# command line app
- Q# + Python host
- Q# Notebook

## What do we need to write??

1. Ways to scale the noise

- [x] Global folding
- [ ] local folding

2. Ways to run the circuit (aka executors)

- [-] Noisy simulator! (0.15.210223344-alpha, [link to issue](https://github.com/microsoft/qsharp-runtime/issues/504))

3. Collect and process the noisy data (aka factories)

_DEFIANTLY WRONG_

- [ ] function to collect and average the measurements
- [ ] function to linear fit the scale value/expectation value pair
