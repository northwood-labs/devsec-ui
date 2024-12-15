---
title: ShāngMì 4 (SM4)
description: ❌ Non-standard encryption algorithm
layout: learn-single

learn_more:
  - text: 'ShangMi (SM) Cipher Suites for TLS 1.3'
    url: https://datatracker.ietf.org/doc/html/rfc8998
    source: IETF

---

## Summary

ShāngMì 4 is a block cipher standardized for use by the government of China, but has **NOT** been accepted as an international standard. Its security has **NOT** proven and its use is **NOT** recommended by the IETF.

It was declassified in 2006 and standardized in 2016, with a key and block size of 128 bits (similar to [AES]({{% relref "AES" %}}) standardized in the U.S.). SM4 has faced opposition in international standards bodies, but has hardware-accelerated support in various CPUs.

The ShāngMì algorithms are becoming mandatory in China.

## Information

| Field        | Value                              |
|--------------|------------------------------------|
| Invented     | 2000s                              |
| Cracked      | -                                  |
| Related tech | [ISO/IEC 18033-3:2010/Amd], [WAPI] |

[WAPI]: https://en.wikipedia.org/wiki/WLAN_Authentication_and_Privacy_Infrastructure
[ISO/IEC 18033-3:2010/Amd]: https://www.iso.org/standard/81564.html
