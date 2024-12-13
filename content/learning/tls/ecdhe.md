---
title: Elliptic Curve Diffie-Hellman, Ephemeral (ECDHE)
description: ✅ Recommended key exchange
layout: learn-single

tls_part: key-exchange

learn_more:
learn_more:
  - text: 'Diffie-Hellman problem'
    url: https://en.wikipedia.org/wiki/Diffie–Hellman_problem
    source: Wikipedia

  - text: 'Standards for Efficient Cryptography: Elliptic Curve Cryptography'
    url: https://www.secg.org/sec1-v2.pdf
    source: Standards for Efficient Cryptography Group

  - text: 'A (Relatively Easy To Understand) Primer on Elliptic Curve Cryptography'
    url: https://blog.cloudflare.com/a-relatively-easy-to-understand-primer-on-elliptic-curve-cryptography/
    source: Cloudflare

  - text: 'Efficient elliptic curve Diffie-Hellman computation at the 256-bit security level'
    url: https://doi.org/10.1049/iet-ifs.2019.0620
    source: Institution of Engineering and Technology

  - text: 'Curve25519: New Diffie-Hellman Speed Records (ISBN: 978-3-540-33851-2)'
    url: https://link.springer.com/chapter/10.1007/11745853_14
    source: Research paper

---

## Summary

The [Diffie-Hellman] key exchange is a cryptographic method enabling two parties to establish a shared secret key over an insecure channel. The shared secret is calculated by each party using their private key and the other party’s public key, resulting in a value that is difficult to compute without knowledge of both private integers.

This approach is the foundation of all modern-day [public-key cryptography]. It also forms the basis of [Forward secrecy] in TLS connections.

This is the recommended [elliptic-curve][ECC] key exchange algorithm for TLS.

## Concerns

There have been political concerns about the trustworthiness of U.S. NIST-produced curves, after revelations were made that [the NSA willingly inserts backdoors into software][backdoors], hardware components and published standards.

Well-known cryptographers (including [Bruce Schneier]) have expressed doubts about [how the NIST curves were designed][P-curves], and voluntary tainting [has already been proven][tainting] in the past. Nevertheless, a proof that the named NIST curves exploit a rare weakness is missing yet.

As a result, [Curve25519] and [Curve448] have been developed independently of the NSA.

## Information

| Field     | Value              |
|-----------|--------------------|
| Kind      | {{% param-kind %}} |
| Invented  | 2006               |
| Cracked   | -                  |
| Ephemeral | _Yes_              |

[backdoors]: https://www.theguardian.com/us-news/2015/feb/23/nsa-director-defends-backdoors-into-technology-companies
[Bruce Schneier]: https://www.schneier.com/blog/archives/2013/09/the_nsa_is_brea.html
[Curve25519]: https://en.wikipedia.org/wiki/Curve25519
[Curve448]: https://en.wikipedia.org/wiki/Curve448
[Diffie-Hellman]: https://en.wikipedia.org/wiki/Diffie–Hellman_key_exchange
[ECC]: https://en.wikipedia.org/wiki/Elliptic-curve_cryptography
[Forward secrecy]: https://en.wikipedia.org/wiki/Forward_secrecy
[P-curves]: https://safecurves.cr.yp.to/rigid.html
[public-key cryptography]: https://en.wikipedia.org/wiki/Public-key_cryptography
[tainting]: https://www.scientificamerican.com/article/nsa-nist-encryption-scandal/
