---
title: CRIME
description: Compression Ratio Info-leak Made Easy
layout: term

year: 2012
class:
  - Compression attack

learn_more:
  - text: 'Lucky 13, BEAST, CRIME,… Is TLS dead, or just resting?'
    url: https://www.ietf.org/proceedings/89/slides/slides-89-irtfopen-1.pdf
    source: IETF

  - text: 'Prevent SSL CRIME attacks'
    url: https://docs.veracode.com/r/prevent-ssl-crime
    source: Veracode

  - text: 'CRIME: Information Leakage Attack against SSL/TLS'
    url: https://blog.qualys.com/product-tech/2012/09/14/crime-information-leakage-attack-against-ssltls
    source: Qualys

  - text: 'CVE-2012-4929'
    url: https://nvd.nist.gov/vuln/detail/CVE-2012-4929
    source: NIST

---

## Overview

[CRIME] is an attack against TLS that exploits information leakage from data compression before encryption. The attack, which requires server-side compression support and vulnerable clients, can steal session cookies and hijack sessions. While CRIME is easier to exploit than BEAST, mitigation is simpler by disabling TLS compression on servers and updating vulnerable clients.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[CRIME]: https://en.wikipedia.org/wiki/CRIME
