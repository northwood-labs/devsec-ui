---
title: RC4 NOMORE
description: Numerous Occurrence MOnitoring and Recovery Exploit
layout: vuln

year: 2015
classes:
  - Bit-flipping

learn_more:
  - text: 'RC4 NOMORE'
    url: https://www.rc4nomore.com

  - text: 'All Your Biases Belong To Us: Breaking RC4 in WPA-TKIP and TLS'
    url: https://www.rc4nomore.com/vanhoef-usenix2015.pdf

  - text: 'Attacking SSL when using RC4'
    url: https://www.imperva.com/docs/HII_Attacking_SSL_when_using_RC4.pdf
    source: Imperva

---

## Overview

The [RC4 NOMORE] attack significantly reduces the time required to decrypt sensitive data secured by RC4. The attack exploits statistical biases in the keystream, making it possible to decrypt repeated plaintext-like cookies within 75 hours. While mitigations can slow down attacks, the only effective countermeasure is to stop using RC4 altogether.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with [recommended cipher suites]({{% relref "recommended-cipher-suites" %}})) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[RC4 NOMORE]: https://www.rc4nomore.com
