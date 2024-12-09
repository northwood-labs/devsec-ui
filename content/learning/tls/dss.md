---
title: Digital Signature Standard (DSS)
description: Deprecated authentication signing
layout: learn-single

tls_part: auth-sig

---

## Summary

The [DSS] standard (including the [DSA] signature algorithm) signing method was developed by the [NSA], proposed by U.S. NIST in 1991, then [became a _Federal Information Processing Standard_ (FIPS) in 1994][FIPS-186]. In 2023, U.S. NIST announced that they were deprecating the _Digital Signing Algorithm_.

Any cipher suite with `DSS` in the name should be avoided. `ECDSA` signing should be strongly preferred.

## Information

| Field        | Value                  |
|--------------|------------------------|
| Kind         | Authentication signing |
| Invented     | 1991                   |
| Deprecated   | 2023                   |
| Related tech | [FIPS-186]             |

[DSA]: https://en.wikipedia.org/wiki/Digital_Signature_Algorithm
[DSS]: https://en.wikipedia.org/wiki/Digital_Signature_Standard
[FIPS-186]: https://csrc.nist.gov/pubs/fips/186-5/final
[NSA]: https://en.wikipedia.org/wiki/National_Security_Agency
