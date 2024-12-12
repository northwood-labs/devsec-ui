---
title: Elliptic Curve Digital Signature Algorithm (ECDSA)
description: ✅ Secure authentication signing
layout: learn-single

tls_part: auth-sig

learn_more:
  - text: 'ECDSA: The digital signature algorithm of a better internet'
    url: https://blog.cloudflare.com/ecdsa-the-digital-signature-algorithm-of-a-better-internet/
    source: Cloudflare

  - text: 'Standards for Efficient Cryptography: Elliptic Curve Cryptography'
    url: https://www.secg.org/sec1-v2.pdf
    source: Standards for Efficient Cryptography Group

  - text: 'A Brief History of the U.S. Trying to Add Backdoors Into Encrypted Data'
    url: https://www.atlasobscura.com/articles/a-brief-history-of-the-nsa-attempting-to-insert-backdoors-into-encrypted-data
    source: Atlas Obscura

---

## Summary

[ECDSA] is a digital signature algorithm using elliptic curve cryptography, offering a more secure alternative to traditional [DSA]({{% relref "DSS" %}}). It involves key generation, signature creation, and verification, with a focus on the importance of randomness in the signing process.

It is based on the underlying mathematical concepts of [Elliptic-curve cryptography][ECC].

## Concerns

While ECDSA offers security advantages, vulnerabilities in poor implementations (such as static random number generation) have been exploited in real-world attacks (e.g., jailbreaking Sony’s PlayStation 3).

There have been political concerns about the trustworthiness of U.S. NIST-produced curves, after revelations were made that [the NSA willingly inserts backdoors into software][backdoors], hardware components and published standards.

Well-known cryptographers (including [Bruce Schneier]) have expressed doubts about [how the NIST curves were designed][P-curves], and voluntary tainting [has already been proven][tainting] in the past. Nevertheless, a proof that the named NIST curves exploit a rare weakness is missing yet.

## Information

| Field      | Value              |
|------------|--------------------|
| Kind       | {{% param-kind %}} |
| Proposed   | 1992               |
| Deprecated | -                  |

[backdoors]: https://www.theguardian.com/us-news/2015/feb/23/nsa-director-defends-backdoors-into-technology-companies
[Bruce Schneier]: https://www.schneier.com/blog/archives/2013/09/the_nsa_is_brea.html
[ECC]: https://en.wikipedia.org/wiki/Elliptic-curve_cryptography
[ECDSA]: https://en.wikipedia.org/wiki/Elliptic_Curve_Digital_Signature_Algorithm
[P-curves]: https://safecurves.cr.yp.to/rigid.html
[tainting]: https://www.scientificamerican.com/article/nsa-nist-encryption-scandal/
