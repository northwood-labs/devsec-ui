---
title: BEAST
description: Browser Exploit Against SSL/TLS
layout: vuln

year: 2011
classes:
  - Data leakage

learn_more:
  - text: 'Lucky 13, BEAST, CRIME,… Is TLS dead, or just resting?'
    url: https://www.ietf.org/proceedings/89/slides/slides-89-irtfopen-1.pdf
    source: IETF

  - text: 'Here Come The ⊕ Ninjas'
    url: https://web.archive.org/web/20220308133400/http://netifera.com/research/beast/beast_DRAFT_0621.pdf
    source: Netifera

  - text: 'Prevent SSL BEAST attacks'
    url: https://docs.veracode.com/r/prevent-ssl-beast
    source: Veracode

  - text: 'Proof Of Concept of the BEAST attack against SSL/TLS CVE-2011-3389'
    url: https://github.com/mpgn/BEAST-PoC
    source: GitHub

  - text: 'Encryption - CBC Mode IV: Secret or Not?'
    url: https://defuse.ca/cbcmodeiv.htm

---

## Overview

The [BEAST] attack targets a security vulnerability in SSL 3.0 and TLS 1.0 protocols, focusing on their use of CBC (Cipher Block Chaining) encryption. It details an attack capable of decrypting encrypted HTTPS requests and obtaining sensitive information such as authentication tokens or cookies. This attack exploits the predictable chaining of initialization vectors (IVs) in CBC mode, allowing an attacker to recover plaintext efficiently by manipulating and observing ciphertext blocks.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[BEAST]: https://en.wikipedia.org/wiki/Transport_Layer_Security#BEAST_attack
