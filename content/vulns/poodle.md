---
title: POODLE
description: Padding Oracle On Downgraded Legacy Encryption
layout: term

year: 2014
class:
  - Downgrade attack

learn_more:
  - text: 'This POODLE Bites: Exploiting The SSL 3.0 Fallback'
    url: https://web.archive.org/web/20240101001947/https://www.openssl.org/~bodo/ssl-poodle.pdf
    source: OpenSSL

  - text: 'What Is the POODLE Attack?'
    url: https://www.acunetix.com/blog/web-security-zone/what-is-poodle-attack/
    source: Acunetix

  - text: 'The POODLE Attack and the End of SSL 3.0'
    url: https://blog.mozilla.org/security/2014/10/14/the-poodle-attack-and-the-end-of-ssl-3-0/
    source: Mozilla Blog

  - text: 'Poodle (Padding Oracle On Downgraded Legacy Encryption) attack CVE-2014-3566'
    url: https://github.com/mpgn/poodle-PoC
    source: GitHub

  - text: 'CVE-2014-3566'
    url: https://nvd.nist.gov/vuln/detail/CVE-2014-3566
    source: NIST

---

## Overview

The [POODLE] attack is a security vulnerability in the obsolete SSL 3.0 protocol, allowing attackers to exploit protocol downgrades in many TLS clients to intercept and decrypt secure HTTP cookies or other sensitive data.

This occurs through weaknesses in SSL 3.0’s block cipher padding, particularly in CBC mode, which can be exploited via a padding oracle attack when a man-in-the-middle attacker manipulates network transmissions.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[POODLE]: https://en.wikipedia.org/wiki/POODLE
