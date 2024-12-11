---
title: Export-grade encryption (EXPORT)
description: ❌ Vulnerable encryption algorithms
layout: learn-single

tls_part: encryption-algo

vulns:
  - drown
  - freak
  - logjam
  - sweet32

---

## Summary

Before the year 2000, the U.S. government required any cryptography that was exported from the U.S. to be subject to either substantially-reduced encryption keys (known as [export-grade encryption][EXPORT]) or the use of backdoors in the encryption algorithms known to the U.S. government. By modern standards, even in the U.S., these are considered insecure and should not be used.

Any cipher suite with `EXPORT` in the name should be avoided.

## Information

| Field | Value                |
|-------|----------------------|
| Kind  | Encryption algorithm |

[EXPORT]: https://en.wikipedia.org/wiki/Export_of_cryptography_from_the_United_States
