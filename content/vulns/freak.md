---
title: FREAK
description: Factoring RSA Export Keys
layout: term

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

The [FREAK] attack is known as a _downgrade attack_, and reliably breaks U.S. export-grade encryption.

Before the year 2000, the U.S. government required any cryptography that was exported from the U.S. to be subject to either substantially-reduced encryption keys or the use of backdoors in the encryption algorithms known to the U.S. government. By modern standards, even in the U.S., these are considered insecure and should not be used.

Whereas [DROWN](/vulns/drown) focuses on SSLv2, and [Logjam](/vulns/logjam) focuses on Diffie-Hellman key exchanges, _FREAK_ targets export-grade encryption.

The best way to avoid this vulnerability is to _only_ allow TLS 1.2 (with recommended cipher suites) and TLS 1.3.

![XKCD: CIA comic](https://imgs.xkcd.com/comics/cia.png)

## Information

| Field               | Value            |
|---------------------|------------------|
| Cracked             | 2015             |
| Vulnerability class | Downgrade attack |

[FREAK]: https://en.wikipedia.org/wiki/FREAK
