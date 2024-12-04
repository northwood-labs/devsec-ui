---
title: Logjam
description:
layout: term

learn_more:
  - text: 'Weak Diffie-Hellman and the Logjam Attack'
    url: https://weakdh.org

  - text: 'NSA in P/poly: The Power of Precomputation'
    url: https://scottaaronson.blog/?p=2293

  - text: 'CVE-2015-4000'
    url: https://nvd.nist.gov/vuln/detail/CVE-2015-4000
    source: NIST

  - text: 'Logjam: the latest TLS vulnerability explained'
    url: https://blog.cloudflare.com/logjam-the-latest-tls-vulnerability-explained/
    source: Cloudflare

---

## Overview

The [Logjam] attack is known as a _downgrade attack_, and reliably breaks U.S. export-grade encryption.

Before the year 2000, the U.S. government required any cryptography that was exported from the U.S. to be subject to either substantially-reduced encryption keys or the use of backdoors in the encryption algorithms known to the U.S. government. By modern standards, even in the U.S., these are considered insecure and should not be used.

Whereas [DROWN](/vulns/drown) focuses on SSLv2, and [FREAK](/vulns/freak) focuses on export-grade encryption, _Logjam_ targets Diffie-Hellman key exchanges.

In short, while _Logjam_ can be cracked for 512-bit DH keys by anyone with a cloud account, and _Nation-State Cyber Attackers_ can crack 1024-bit DH keys, 2048-bit DH keys are considered safe. That being said, using `ECDHE` key exchanges are even more secure.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

## Information

| Field               | Value            |
|---------------------|------------------|
| Cracked             | 2015             |
| Vulnerability class | Downgrade attack |

[Logjam]: https://en.wikipedia.org/wiki/Logjam_(computer_security)
