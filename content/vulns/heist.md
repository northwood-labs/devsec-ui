---
title: HEIST
description: HTTP Encrypted Information can be Stolen through TCP-windows
layout: term

year: 2016
class:
  - Compression attack
  - Side-channel attack

learn_more:
  - text: 'HEIST: HTTP Encrypted Information can be Stolen through TCP-windows'
    url: https://www.blackhat.com/docs/us-16/materials/us-16-VanGoethem-HEIST-HTTP-Encrypted-Information-Can-Be-Stolen-Through-TCP-Windows-wp.pdf
    source: BlackHat

  - text: 'New attack steals SSNs, e-mail addresses, and more from HTTPS pages'
    url: https://arstechnica.com/information-technology/2016/08/new-attack-steals-ssns-e-mail-addresses-and-more-from-https-pages/
    source: Ars Technica

  - text: 'CVE-2016-7152'
    url: https://nvd.nist.gov/vuln/detail/CVE-2016-7152
    source: NIST

---

## Overview

The [HEIST] attack exploits subtle vulnerabilities in browsers, HTTP, SSL/TLS, and TCP to extract sensitive information without the need for traditional network-level interception.

By leveraging a side-channel to determine the size of cross-origin HTTP responses, HEIST enables compression-based attacks like BREACH to be conducted purely in the browser, bypassing the requirement for a man-in-the-middle setup. The attack is further amplified by HTTP/2’s design, allowing malicious JavaScript on a website to measure encrypted response sizes and deduce private data such as CSRF tokens, credit card details, and even personal health information. Proposed defenses include disabling third-party cookies, as complete prevention is challenging due to the attack’s multi-layered nature.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[HEIST]: https://arstechnica.com/information-technology/2016/08/new-attack-steals-ssns-e-mail-addresses-and-more-from-https-pages/
