# 1D Cluster State

> **Category**: fundamentals &nbsp;|&nbsp; **Difficulty**: intermediate &nbsp;|&nbsp; **Qubits**: 4 &nbsp;|&nbsp; **Gates**: 7 &nbsp;|&nbsp; **Depth**: 5

Cluster states are highly entangled resource states for measurement-based (one-way) quantum computation. In this model, the entire computation is driven by single-qubit measurements on a pre-prepared cluster state. The 1D cluster state on N qubits is created by placing all qubits in |+⟩ and applying CZ gates between nearest neighbours.

## Expected Output

Entangled 4-qubit cluster state; correlated measurement outcomes

## Circuit

The OpenQASM 2.0 circuit is in [`circuit.qasm`](./circuit.qasm).

```
OPENQASM 2.0;
include "qelib1.inc";
// 1D cluster state on 4 qubits (linear graph: 0-1-2-3)
qreg q[4];
creg c[4];
// Initialize all qubits in |+>
h q[0]; h q[1]; h q[2]; h q[3];
// Apply CZ between neighbouring pairs
cz q[0],q[1];
cz q[1],q[2];
cz q[2],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
```

## Tags

`cluster-state` `measurement-based` `resource-state` `fundamentals`

## References

- [Raussendorf & Briegel (2001). A One-Way Quantum Computer. PRL 86, 5188](https://doi.org/10.1103/PhysRevLett.86.5188)

## License

MIT — part of the [OpenQC Algorithm Catalog](https://github.com/openqc-algorithms).
