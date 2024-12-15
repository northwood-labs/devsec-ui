---
title: Secure Hash Algorithm 2 (SHA-256, SHA-384)
description: ✅ Secure hashing function
layout: learn-single

aliases:
  - /learning/tls/sha224
  - /learning/tls/sha256
  - /learning/tls/sha384
  - /learning/tls/sha512

tls_part: hash

learn_more:
  - text: 'Analysis of SHA-512/224 and SHA-512/256'
    url: https://eprint.iacr.org/2016/374.pdf
    source: Research paper

---

## Summary

[SHA-2] is a set of cryptographic hash functions designed by the NSA, including `SHA-224`, `SHA-256`, `SHA-384`, and `SHA-512`. `SHA-256` and `SHA-512` are virtually identical, differing only in the number of rounds and shift amounts.

`SHA-2` was first published by NIST as a U.S. federal standard ([FIPS 180-4]) and is patented in the U.S. under a royalty-free license.

## Information

| Field        | Value                                                                              |
|--------------|------------------------------------------------------------------------------------|
| Kind         | {{% param-kind %}}                                                                 |
| Invented     | 2001                                                                               |
| Cracked      | -                                                                                  |
| Related tech | [Bitcoin], [DKIM], [DNSSEC], [GnuPG], [IPsec], [Libsodium], [PGP], [SSH], [S/MIME] |

[Bitcoin]: https://en.wikipedia.org/wiki/Bitcoin
[DKIM]: https://en.wikipedia.org/wiki/DomainKeys_Identified_Mail
[DNSSEC]: https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions
[FIPS 180-4]: https://csrc.nist.gov/pubs/fips/180-4/upd1/final
[GnuPG]: https://www.gnupg.org/faq/gnupg-faq.html#no_best_algo
[IPsec]: https://en.wikipedia.org/wiki/IPsec
[Libsodium]: https://en.wikipedia.org/wiki/NaCl_(software)#Libsodium
[PGP]: https://en.wikipedia.org/wiki/Pretty_Good_Privacy
[S/MIME]: https://datatracker.ietf.org/doc/html/rfc8551
[SHA-2]: https://en.wikipedia.org/wiki/SHA-2
[SSH]: https://en.wikipedia.org/wiki/Secure_Shell
