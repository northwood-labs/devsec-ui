---
title: Digital Signature Standard (DSS)
description: 👎 Deprecated authentication signing
layout: learn-single

tls_part: auth-sig

---

## Summary

The [Digital Signature Standard][DSS] (DSS) is an overarching [U.S. federal standard][FIPS-186] which evolves over time. _One part_ of that standard is the [Digital Signature Algorithm][DSA] (DSA).

The _Digital Signature Algorithm_ signing method was developed by the [NSA], proposed by U.S. NIST in 1991, then [became a _Federal Information Processing Standard_ (FIPS) in 1994][FIPS-186]. In 2023, U.S. NIST [announced] that they were deprecating the _Digital Signing Algorithm_ in favor of [ECDSA]({{% relref "ECDSA" %}}) and `EdDSA`.

Any cipher suite with `DSS` in the name should be avoided. `ECDSA` signing should be strongly preferred.

## Information

| Field        | Value              |
|--------------|--------------------|
| Kind         | {{% param-kind %}} |
| Invented     | 1991               |
| Deprecated   | 2023               |
| Related tech | [FIPS-186]         |

[announced]: https://www.nist.gov/news-events/news/2023/02/nist-revises-digital-signature-standard-dss-and-publishes-guideline
[DSA]: https://en.wikipedia.org/wiki/Digital_Signature_Algorithm
[DSS]: https://en.wikipedia.org/wiki/Digital_Signature_Standard
[FIPS-186]: https://csrc.nist.gov/pubs/fips/186-5/final
[NSA]: https://en.wikipedia.org/wiki/National_Security_Agency
