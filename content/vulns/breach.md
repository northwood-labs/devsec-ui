---
title: BREACH
description: Browser Reconnaissance and Exfiltration via Adaptive Compression of Hypertext
layout: vuln

year: 2013
classes:
  - Compression attack

learn_more:
  - text: 'BREACH Attack'
    url: https://www.breachattack.com

  - text: 'BREACH PoC'
    url: https://github.com/nealharris/BREACH
    source: GitHub

---

## Overview

[BREACH] attacks HTTP responses compressed using HTTP compression, exploiting user-input reflection and secret tokens in response bodies. The attack, agnostic to TLS/SSL version and cipher suite, is more effective against stream ciphers due to granular size differences.

It leverages knowledge of how the `deflate` compression algorithm works, to affect how private data is reflected in a response.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[BREACH]: https://en.wikipedia.org/wiki/BREACH
