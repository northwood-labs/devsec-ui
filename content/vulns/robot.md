---
title: ROBOT
description: Return Of Bleichenbacher’s Oracle Threat
layout: vuln

year: 2017
classes:
  - Data leakage

learn_more:
  - text: 'Return Of Bleichenbacher’s Oracle Threat (ROBOT)'
    url: https://www.usenix.org/conference/usenixsecurity18/presentation/bock
    source: USENIX

  - text: 'Detection script for the ROBOT vulnerability'
    url: https://github.com/robotattackorg/robot-detect
    source: GitHub

  - text: '1998 attack that messes with sites’ secret crypto keys is back in a big way'
    url: https://arstechnica.com/information-technology/2017/12/a-worrying-number-of-sites-remain-open-to-major-crypto-flaw-from-1998/
    source: Ars Technica

  - text: 'PKCS #1'
    url: https://en.wikipedia.org/wiki/PKCS_1
    source: Wikipedia

---

## Overview

The [ROBOT Attack] is based on the Bleichenbacher Oracle vulnerability first exposed in 1998. The RSA PKCS #1 v1.5 padding scheme has a number of improper implementations, which are vulnerable to ROBOT, allowing attackers to read encrypted messages and perform unauthorized private key operations by leveraging server responses.

Despite decades of advancements, a comprehensive analysis revealed its prevalence across numerous high-profile platforms, including Facebook and PayPal, and products from vendors like F5 and Cisco.

ROBOT demonstrated novel side-channel methods and executed proof-of-concept attacks, such as signing a certificate for Facebook, highlighting widespread implementation gaps. The research underscores the necessity of retiring insecure standards like RSA PKCS #1 v1.5 in favor of robust alternatives and deploying meticulous testing frameworks to prevent similar vulnerabilities in the future.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with [recommended cipher suites]({{% relref "tls" %}})) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[ROBOT Attack]: https://robotattack.org
