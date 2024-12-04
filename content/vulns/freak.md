---
title: FREAK
description: Factoring RSA Export Keys
layout: term

year: 2015
class:
  - Downgrade attack
  - Brute force against export-grade encryption

learn_more:
  - text: 'Tracking the FREAK Attack'
    url: https://freakattack.com

  - text: 'Export of cryptography from the United States'
    url: https://en.wikipedia.org/wiki/Export_of_cryptography_from_the_United_States
    source: Wikipedia

  - text: 'State Machine Attacks'
    url: https://www.smacktls.com

  - text: '‘FREAK’ flaw undermines security for Apple and Google users, researchers discover'
    url: https://www.washingtonpost.com/news/the-switch/wp/2015/03/03/freak-flaw-undermines-security-for-apple-and-google-users-researchers-discover/
    source: Washington Post

  - text: 'Attack of the week: FREAK (or ‘factoring the NSA for fun and profit’)'
    url: https://blog.cryptographyengineering.com/2015/03/03/attack-of-week-freak-or-factoring-nsa/
    source: Cryptographic Engineering

---

## Overview

The [FREAK] attack is known as a _downgrade attack_, which targets handshake messages, particularly DNS information, to exploit vulnerabilities in cipher suites and authentication processes.

Researchers uncovered that many TLS implementations allow authentication message skipping, making them susceptible to these attacks, especially when using compromised code bases or outdated OpenSSL versions. To mitigate risks, organizations should conduct SKIP-TLS risk audits, patch web browsers, and avoid sensitive activities on unsecured networks.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

![XKCD: CIA comic](https://imgs.xkcd.com/comics/cia.png)

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[FREAK]: https://en.wikipedia.org/wiki/FREAK
