---
title: Data Encryption Standard (DES)
description: ❌ Vulnerable encryption algorithm
layout: learn-single

tls_part: encryption-algo

vulns:
  - freak

---

## Summary

The [DES] algorithm was [developed at IBM in 1972][IBM], then [became a _Federal Information Processing Standard_ (FIPS) in 1977][FIPS-46].

It was [cracked in 1997][cracked], and was [removed from U.S. NIST standards (FIPS 46-3) in 2005][FIPS 46-3]. It is no longer considered secure.

Any cipher suite with `DES` in the name should be avoided.

## Information

| Field        | Value              |
|--------------|--------------------|
| Kind         | {{% param-kind %}} |
| Invented     | 1972               |
| Cracked      | 1997               |
| Related tech | [FIPS-46]          |

[cracked]: https://web.archive.org/web/20170507231657/https://w2.eff.org/Privacy/Crypto/Crypto_misc/DESCracker/HTML/19980716_eff_des_faq.html
[DES]: https://en.wikipedia.org/wiki/Data_Encryption_Standard
[FIPS-46]: https://csrc.nist.gov/pubs/fips/46/final
[FIPS 46-3]: https://csrc.nist.rip/news/2005/withdrawal-of-fips-46-3-fips-74-and-fips-81
[IBM]: https://ieeexplore.ieee.org/document/5389567
