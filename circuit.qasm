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
