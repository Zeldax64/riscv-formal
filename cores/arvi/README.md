
riscv-formal proofs for ARVI - Work in Progress
================================

Quickstart guide:

First install Yosys, SymbiYosys, and the solvers. See
[here](http://symbiyosys.readthedocs.io/en/latest/quickstart.html#installing)
for instructions.  Then download the core, generate the formal checks and run them:

```
git clone git@github.com:Zeldax64/arvi.git
python3 ../../checks/genchecks.py
make -C checks -j$(nproc)
```

