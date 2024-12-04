---
title: Sweet32
description: Birthday attacks on 64-bit block ciphers in TLS and OpenVPN
layout: term

year: 2016
class:
  - Brute force against export-grade encryption

learn_more:
  - text: 'CVE-2016-2183'
    url: https://nvd.nist.gov/vuln/detail/CVE-2016-2183
    source: NIST

  - text: 'CVE-2016-6329'
    url: https://nvd.nist.gov/vuln/detail/CVE-2016-6329
    source: NIST

  - text: 'Birthday attack'
    url: https://en.wikipedia.org/wiki/Birthday_attack
    source: Wikipedia

---

## Overview

[Sweet32] proves that block ciphers with 64-bit block sizes, like Triple-DES, are vulnerable to [birthday attacks](https://en.wikipedia.org/wiki/Birthday_attack). This allows attackers to recover sensitive information like HTTP cookies, which can be used to takeover logged-in browser sessions.

This vulnerability is exacerbated by the widespread use of these ciphers in protocols like TLS and OpenVPN, despite their known weaknesses.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[Sweet32]: https://sweet32.info
