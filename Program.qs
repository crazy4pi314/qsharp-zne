namespace qsharp_zne {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Math;

    @EntryPoint()
    operation HelloQ() : Unit {
        Message("Hello quantum world!");
    }

    function GlobalFolding(op : (Qubit[]=>Unit is Adj), scaleFactor : Int) 
    : (Qubit[]=>Unit is Adj) {
        //Figuring out how many "pairs" of operations to repeat
        let numPairs = Round((scaleFactor - 1) / 2.0);

        //[op, adj op, op, adj op,...]
        let foldedOperationArray = [op] + Flattened(ConstantArray([op, adj op], numPairs));

        return (BoundA(foldedOperationArray));
        //return RepeatA(op, scaleFactor, _);
    }

}

