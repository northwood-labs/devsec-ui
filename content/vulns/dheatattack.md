---
title: DHEat Attack
description: Triggering Diffie-Hellman to eat the CPU
layout: term

year:
  - 2002
  - 2022 (PoC)
class:
  - Denial-of-service

learn_more:
  - text: 'DHEat Attack'
    url: https://web.archive.org/web/20241010094103/https://dheatattack.com/

  - text: 'D(HE)ater is a proof-of-concept implementation'
    url: https://dheatattack.gitlab.io/dheater/

  - text: 'CVE-2002-20001'
    url: https://nvd.nist.gov/vuln/detail/CVE-2002-20001

---

## Overview

The [DHEat Attack] is a denial-of-service vulnerability targeting the Diffie-Hellman key exchange (DHE) algorithm, exploiting its CPU-intensive operations to overload servers using protocols like TLS, SSH, IPsec, and OpenVPN.

It impacts systems with DHE enabled for backward compatibility or forward secrecy. Its unauthenticated, low-cost exploitability make this a notable vulnerability. While the protocol flaw is unfixable, mitigation includes disabling DHE in favor of ECDHE, applying rate-limiting techniques, and updating server configurations.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[DHEat Attack]: https://web.archive.org/web/20241010094103/https://dheatattack.com/
