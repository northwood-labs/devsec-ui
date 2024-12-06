---
title: Lucky 13
description: 5 bytes of TLS header plus 8 bytes of TLS sequence number makes this attack possible
layout: vuln

year: 2013
classes:
  - Side-channel attack

learn_more:
  - text: 'Prevent SSL LUCKY13 attacks'
    url: https://docs.veracode.com/r/prevent-ssl-lucky13
    source: Veracode

  - text: 'Lucky 13, BEAST, CRIME,… Is TLS dead, or just resting?'
    url: https://www.ietf.org/proceedings/89/slides/slides-89-irtfopen-1.pdf
    source: IETF

---

## Overview

The [Lucky 13] attack exploits a flaw in the TLS and DTLS record protocols, allowing attackers to recover plaintext from encrypted connections. The attacks, which affect all compliant TLS and DTLS implementations using CBC-mode encryption, can be mitigated by switching to AEAD (AES-GCM) ciphersuites.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[Lucky 13]: https://www.isg.rhul.ac.uk/tls/Lucky13.html
