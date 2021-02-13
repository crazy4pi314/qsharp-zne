namespace qsharp_zne {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation HelloQ() : Result {
        use msg = Qubit();
        use here = Qubit();
        use there = Qubit();

        H(here);
        return MResetZ(here);
        // CNOT(here, there);
        // CNOT(msg, here);
        // H(msg);

        // Z(msg);

        // if M(msg) == One  { Z(there); }
        // if M(here) == One { X(there); }

        // Z(there);
        // return M(there);
    }

}

