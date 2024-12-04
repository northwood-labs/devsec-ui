---
title: DROWN
description: Decrypting RSA with Obsolete and Weakened eNcryption
layout: term

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

[DROWN] is known as a _downgrade attack_. Historically, if a web browser (or other client) tried to connect with modern security, and the server did not support it, the client would then be able to _downgrade_ the level of security to a previous version of TLS or SSL and try to connect there.

Since SSLv2 is known to have many vulnerabilities, [DROWN] forces the connection to _downgrade_ to SSLv2. If the server supports SSLv2, then any known attacks against SSLv2 can be performed to access sensitive/encrypted data. While SSLv2 is the easiest to break, this attack can also be performed against other versions of TLS or SSL in preparation for a different attack.

Whereas [Logjam](/vulns/logjam) focuses on Diffie-Hellman key exchanges, and [FREAK](/vulns/freak) focuses on export-grade encryption, _DROWN_ targets SSLv2.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

## Information

| Field               | Value            |
|---------------------|------------------|
| Cracked             | 2016             |
| Vulnerability class | Downgrade attack |

[DROWN]: https://en.wikipedia.org/wiki/DROWN_attack
