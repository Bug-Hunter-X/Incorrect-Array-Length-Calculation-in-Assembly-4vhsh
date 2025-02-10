# Incorrect Array Length Calculation in Assembly

This repository demonstrates a common error in assembly programming: miscalculating the length of an array when working with elements that have a size greater than one byte. The original code calculates the array size based on address differences alone, ignoring the data type of array elements.  This leads to incorrect results when the array has elements larger than a single byte, such as `word` (16 bits).

The solution provided corrects this by explicitly dividing the address difference by the size of each element, ensuring the correct number of array elements are processed.