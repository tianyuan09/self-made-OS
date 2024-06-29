# Day 0: Prep (Windows)

## Method 1: write a binary ``.img" file

1. Download [BinaryEditor](https://www.vcraft.jp/soft/bz.html), type the hex data in.  The “hex” format encodes binary data as 2 hexadecimal digits per byte. 
2. Download prep files: [32-bit OSASK](http://hrb.osask.jp/)
3. Create ``helloos0`` folder as instructed (or copy the one in this folder), then double-click``!cons_nt.bat``in the folder.
4. QEMU is a free PC simulator.

![image](https://github.com/tianyuan09/self-made-OS/assets/67927023/ca586fd7-87d7-4c96-914c-da76f8d84e6a)

## Method 2:  NSAM (or ``nask`` compiler created by the author)


## Q&A what does it mean "the “hex” format encodes binary data as 2 hexadecimal digits per byte"?

### Binary Data:

* Binary data consists of sequences of bits (0s and 1s) that computers use to represent information. For example, a byte (8 bits) can hold values from 0 to 255 (in decimal).
### Hexadecimal (Hex) Representation:

* Hexadecimal is a base-16 numbering system that uses digits 0-9 and letters A-F to represent values. Each hexadecimal digit corresponds to a 4-bit nibble (half-byte).

### Encoding in Hex Format:

When binary data is encoded in "hex" format:
Each byte (8 bits) of binary data is represented by 2 hexadecimal digits.
For example, if you have a byte with the binary value 10110110, it can be represented in hex as B6.
Here’s how it works:
* Convert 1011 (first nibble) to hexadecimal: B.
* Convert 0110 (second nibble) to hexadecimal: 6.
* Thus, 10110110 in binary is B6 in hex.

### Usage and Advantages:

Hexadecimal representation is often used because it's more compact than binary and easier for humans to read than binary digits.
It is commonly used in various contexts such as programming (especially for specifying byte values), networking (MAC addresses), and file formats.
Example:
Suppose you have binary data 01001001 00101100 11001010.
Convert each byte to hex:
  * 01001001 → 49
  * 00101100 → 2C
  * 11001010 → CA
  
So, the entire binary data 01001001 00101100 11001010 is represented in hex as 492CCA.

### Summary:
In essence, when data is encoded in "hex" format, each byte of binary data is represented by 2 hexadecimal digits. This format provides a more human-readable and compact representation of binary data, making it widely used in various computing applications for data representation and communication.

