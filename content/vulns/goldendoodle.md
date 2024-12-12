---
title: GOLDENDOODLE
description:
layout: vuln

year: 2019
classes:
  - Data leakage

learn_more:
  - text: 'Introducing Zombie POODLE and GOLDENDOODLE'
    url: https://www.tripwire.com/state-of-security/zombie-poodle-goldendoodle
    source: Tripwire

  - text: 'TLS CBC Padding Oracles in 2019'
    url: https://www.tripwire.com/state-of-security/tls-cbc-padding-oracles
    source: Tripwire

  - text: 'TLS CBC Padding Oracle Checker'
    url: https://github.com/Tripwire/padcheck
    source: GitHub

---

## Overview

The [GOLDENDOODLE] attack is a type of TLS CBC padding oracle vulnerability (like [POODLE]({{% relref "POODLE" %}})).

GOLDENDOODLE can be used to hijack authenticated TLS sessions if the server reveals the padding validity of application data records in such a way that a Man-in-the-Middle (MITM) attacker can recognize well-formed padding independently of a valid Message Authentication Code (MAC).

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with [recommended cipher suites]({{% relref "tls" %}})) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[GOLDENDOODLE]: https://www.tripwire.com/state-of-security/goldendoodle-attack
