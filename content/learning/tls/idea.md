---
title: International Data Encryption Algorithm (IDEA)
description: ❌ Vulnerable encryption algorithm
layout: learn-single

tls_part: encryption-algo

---

## Summary

[IDEA], a symmetric-key block cipher, was designed as a replacement for [DES]({{% relref "DES" %}}).

IDEA is slower and less secure than modern encryption algorithms. While IDEA was once considered secure, it has been broken using meet-in-the-middle and narrow-bicliques attacks, reducing its cryptographic strength.

Any cipher suite with `IDEA` in the name should be avoided.

## Information

| Field    | Value              |
|----------|--------------------|
| Kind     | {{% param-kind %}} |
| Invented | 1990               |
| Cracked  | 2011               |

[IDEA]: https://en.wikipedia.org/wiki/International_Data_Encryption_Algorithm
