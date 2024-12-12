---
title: Zombie POODLE
description: TLS padding oracle vulnerability against CBC
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

  - text: 'ZOMBIE POODLE and GOLDENDOODLE ATTACKS'
    url: https://medium.com/@hemparekh1596/poodle-and-goldennoodle-attacks-6d9651e140ac
    source: Medium

  - text: 'TLS CBC Padding Oracle Checker'
    url: https://github.com/Tripwire/padcheck
    source: GitHub

---

## Overview

The [Zombie POODLE] attack is a resurrection of the [POODLE]({{% relref "POODLE" %}}) TLS attack. Zombie POODLE exploits server stacks that behave differently when receiving TLS records with valid Message Authentication Code (MAC) but invalid padding. The difference between POODLE TLS and Zombie POODLE is that Zombie POODLE generically refers to the exploitation of various _implementation errors_ which create this valid-MAC/invalid-pad oracle.

Zombie POODLE can be used to hijack authenticated TLS sessions if the server reveals the padding validity of application data records in such a way that a Man-in-the-Middle (MITM) attacker can recognize well/ill-formed padding independently of a valid/invalid Message Authentication Code (MAC).

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with [recommended cipher suites]({{% relref "recommended-cipher-suites" %}})) and TLS 1.3.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[Zombie POODLE]: https://www.tripwire.com/state-of-security/zombie-poodle
