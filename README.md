# Kalyna block cipher reference implementation
[![Build Status](https://travis-ci.org/maxkrivich/kalyna.svg?branch=master)](https://travis-ci.org/maxkrivich/kalyna)

The Kalyna block cipher was selected during Ukrainian National Public Cryptographic Competition (2007-2010) and its slight modification was approved as the new encryption standard of Ukraine in 2015. Main requirements for Kalyna were both high security level and high performance of software implementation on general-purpose 64-bit CPUs. The cipher has SPN-based (Rijndael-like) structure with increased MDS matrix size, a new set of four different S-boxes, pre- and postwhitening using modulo 2^{64} addition and a new construction of the key schedule. Kalyna supports block size and key length of 128, 256 and 512 bits (key length can be either equal or double of the block size).


> Reference implementation of the [Kalyna] block cipher (DSTU 7624:2014), all block and key length variants

## Usage
Run tests for different size and keys
```sh
make test
```

[Kalyna]: <https://en.wikipedia.org/wiki/Kalyna_(cipher)>
