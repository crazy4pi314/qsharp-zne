# qsharp-zne
Playing around with implementing ZNE in Q#  (see unitaryfund/mitiq for Python implementation)


## Options for infrastructure:
- Q# library
- [x] Q# command line app
- Q# + Python host
- Q# Notebook

## What do we need to write??
- Ways to scale the noise
    - Global folding
    - local folding
- Ways to run the circuit (aka executors)
- Collect and process the noisy data (aka factories)


  function GlobalFolding(op : (Qubit[]=>Unit is Adj), scaleFactor : Int) 
    : (Qubit[]=>Unit is Adj) {
        //Figuring out how many "pairs" of operations to repeat
        let numPairs = Round((scaleFactor - 1) / 2.0);

        //[op, adj op, op, adj op,...]
        let foldedOperationArray = [op] + Flattened(ConstantArray([op, adj op], numPairs));

        return (BoundA(foldedOperationArray));
        //return RepeatA(op, scaleFactor, _);
    }


