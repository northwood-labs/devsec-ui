---
title: Elliptic Curve Digital Signature Algorithm (ECDSA)
description: Secure authentication signing
layout: learn-single

tls_part: auth-sig

---

## Summary

[ECDSA] is a digital signature algorithm using elliptic curve cryptography, offering a more secure alternative to traditional [DSA]({{% relref "DSS" %}}). It involves key generation, signature creation, and verification, with a focus on the importance of randomness in the signing process. While ECDSA offers security advantages, vulnerabilities in implementation, such as static random number generation, have been exploited in real-world attacks.

## Information

| Field        | Value                  |
|--------------|------------------------|
| Kind         | Authentication signing |
| Invented     | 1991                   |
| Deprecated   | 2023                   |
| Related tech |                        |

[ECDSA]: https://en.wikipedia.org/wiki/Elliptic_Curve_Digital_Signature_Algorithm
