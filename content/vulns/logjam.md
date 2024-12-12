---
title: Logjam
description: Vulnerability with Diffie-Hellman and export-grade cryptography
layout: vuln

year: 2015
classes:
  - Downgrade attack
  - Brute force against export-grade encryption

learn_more:
  - text: 'Weak Diffie-Hellman and the Logjam Attack'
    url: https://weakdh.org

  - text: 'NSA in P/poly: The Power of Precomputation'
    url: https://scottaaronson.blog/?p=2293

  - text: 'Logjam: the latest TLS vulnerability explained'
    url: https://blog.cloudflare.com/logjam-the-latest-tls-vulnerability-explained/
    source: Cloudflare

  - text: 'CVE-2015-4000'
    url: https://nvd.nist.gov/vuln/detail/CVE-2015-4000
    source: NIST

---

## Overview

The [Logjam] attack exposes critical vulnerabilities in the widely used Diffie-Hellman key exchange protocol by enabling attackers to downgrade TLS connections to weaker “export-grade” cryptography, allowing them to intercept and decrypt communication with relative ease.

Through precomputation techniques, and exploiting reused/standardized or weak parameters, the cost of large-scale attacks is significantly reduced. The findings of the official research report underline the urgency for transitioning to stronger cryptographic methods, like elliptic curve Diffie-Hellman (ECDHE) and/or larger key sizes, to protect against such attacks and ensure better security practices across the internet.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with [recommended cipher suites]({{% relref "recommended-cipher-suites" %}})) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[Logjam]: https://en.wikipedia.org/wiki/Logjam_(computer_security)
