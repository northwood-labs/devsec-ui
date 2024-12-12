---
title: RSA (Key Exchange)
description: ❌ Vulnerable key exchange
layout: learn-single

tls_part: key-exchange

vulns:
  - bleichenbacher
  - robot

learn_more:
  - text: 'A Method for Obtaining Digital Signatures and Public-Key Cryptosystems'
    url: https://web.archive.org/web/20230127011251/http://people.csail.mit.edu/rivest/Rsapaper.pdf
    source: MIT

  - text: 'RSA Security Releases RSA Encryption Algorithm into Public Domain'
    url: https://web.archive.org/web/20071120112201/http://www.rsa.com/press_release.aspx?id=261
    source: RSA

  - text: 'Public-Key Cryptography Standards (PKCS) #1: RSA Cryptography Specifications Version 2.1'
    url: https://datatracker.ietf.org/doc/html/rfc3447
    source: IETF

  - text: 'Gambling with Secrets: 8/8 (RSA Encryption)'
    url: https://www.youtube.com/watch?v=vgTtHV04xRI
    source: YouTube

---

## Summary

The term [RSA] has two different contexts: (a) the key exchange, and (b) the authentication signature. This is about **RSA, the key exchange**.

Using RSA for key exchange (starts with `TLS_RSA`) was cracked in 2017. For TLS 1.2, only `ECDHE` key exchanges should be used.

## Information

| Field        | Value              |
|--------------|--------------------|
| Kind         | {{% param-kind %}} |
| Invented     | 1977               |
| Cracked      | 2017               |
| Related tech | [PGP], [SSH]       |

[PGP]: https://pgpkeys.org/docs/pgpfaq.html#HDPK
[RSA]: https://en.wikipedia.org/wiki/RSA_(cryptosystem)
[SSH]: https://en.wikipedia.org/wiki/Secure_Shell
