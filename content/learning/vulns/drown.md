---
title: DROWN
description: Decrypting RSA with Obsolete and Weakened eNcryption
layout: vuln

year: 2016
classes:
  - Downgrade attack
  - Brute force against export-grade encryption

learn_more:
  - text: 'The DROWN Attack'
    url: https://drownattack.com

  - text: 'DROWN: Breaking TLS using SSLv2'
    url: https://drownattack.com/drown-attack-paper.pdf
    source: PDF

  - text: 'CVE-2016-0800'
    url: https://nvd.nist.gov/vuln/detail/CVE-2016-0800

---

## Overview

The [DROWN] attack is a vulnerability affecting HTTPS and other services using SSL and TLS, allowing attackers to decrypt sensitive communications. The attack exploits SSLv2, a deprecated protocol, to compromise modern TLS connections, even if SSLv2 is not directly used. Server operators must disable SSLv2 or ensure private keys are not used on any SSLv2-supporting servers to mitigate the risk.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[DROWN]: https://en.wikipedia.org/wiki/DROWN_attack
