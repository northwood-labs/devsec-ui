---
title: Bleichenbacher’s Oracle
description: 'Attack against RSA Encryption Standard PKCS #1'
layout: vuln

aliases:
  - /learning/vulns/bleichenbacher

year: 1998
classes:
  - Data leakage

learn_more:
  - text: 'Bleichenbacher Attack Explained'
    url: https://medium.com/@c0D3M/bleichenbacher-attack-explained-bc630f88ff25
    source: Medium

  - text: 'Bleichenbacher’s “Million message attack” on RSA in Python'
    url: https://github.com/duesee/bleichenbacher
    source: GitHub

  - text: 'Practical Padding Oracle Attacks on RSA'
    url: https://web.archive.org/web/20240910161606/http://secgroup.dais.unive.it/wp-content/uploads/2012/11/Practical-Padding-Oracle-Attacks-on-RSA.html
    source: Ca' Foscari University of Venice

  - text: 'PKCS #1'
    url: https://en.wikipedia.org/wiki/PKCS_1
    source: Wikipedia

---

## Overview

[Bleichenbacher’s Oracle] is an adaptive chosen-ciphertext attack exploiting weaknesses in the RSA encryption standard PKCS #1.

By leveraging an attack vector which reveals whether a ciphertext conforms to PKCS formatting, attackers can decrypt messages or forge signatures incrementally through carefully chosen ciphertexts. This vulnerability arises from inadequate integrity checks, error messages, or timing discrepancies in cryptographic protocols, notably affecting SSL v3.0 implementations.

The original research paper highlights experimental successes with millions of ciphertexts and recommends plaintext-aware encryption schemes and immediate post-decryption integrity checks to mitigate such risks.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with [recommended cipher suites]({{% relref "recommended-cipher-suites" %}})) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[Bleichenbacher’s Oracle]: https://web.archive.org/web/20241211201343/https://archiv.infsec.ethz.ch/education/fs08/secsem/Bleichenbacher98.pdf
