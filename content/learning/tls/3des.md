---
title: Triple Data Encryption Standard (3DES)
description: ❌ Vulnerable encryption algorithm
layout: learn-single

tls_part: encryption-algo

vulns:
  - lucky-13
  - sweet32

learn_more:
  - text: 'CVE-2016-2183'
    url: https://nvd.nist.gov/vuln/detail/CVE-2016-2183
    source: NIST

  - text: 'NIST to Withdraw Special Publication 800-67 Revision 2'
    url: https://csrc.nist.gov/news/2023/nist-to-withdraw-sp-800-67-rev-2
    source: NIST

---

## Summary

Although [Triple-DES] (3DES) has not yet been fully broken, it suffers from several vulnerabilities, making it a _weak_ cipher.

The best way to avoid vulnerabilities is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

## Information

| Field        | Value              |
|--------------|--------------------|
| Kind         | {{% param-kind %}} |
| Invented     | 1981               |
| Cracked      | 2016               |
| Related tech | [EMV]              |

[EMV]: https://en.wikipedia.org/wiki/EMV
[Triple-DES]: https://en.wikipedia.org/wiki/Triple_DES
