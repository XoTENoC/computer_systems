// Sample Test file for ArrMin.asm
// Follows the Test Scripting Language format described in
// Appendix B of the book "The Elements of Computing Systems"

load ArrMin.asm,
output-file ArrMin04.out,
compare-to ArrMin04.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[20]%D2.6.2 RAM[21]%D2.6.2 RAM[22]%D2.6.2 RAM[23]%D2.6.2 RAM[24]%D2.6.2 RAM[25]%D2.6.2;

set PC 0,
set RAM[0]  0,  // Set R0
set RAM[1]  20, // Set R1
set RAM[2]  6,  // Set R2
set RAM[20] 32766,  // Set Arr[0]
set RAM[21] 40,  // Set Arr[1]
set RAM[22] 50,  // Set Arr[2]
set RAM[23] 100;  // Set Arr[3]
set RAM[24] 1000;  // Set Arr[4]
set RAM[25] 30;  // Set Arr[5]
repeat 300 {
  ticktock;    // Run for 300 clock cycles
}
set RAM[1] 20,  // Restore arguments in case program used them
set RAM[2] 6,
output;        // Output to file