---
title: Raccoon
description: Finding and Exploiting Most-Significant-Bit-Oracles in TLS-DH(E)
layout: vuln

year: 2020
classes:
  - Side-channel attack

learn_more:
  - text: 'Raccoon Attack: Finding and Exploiting Most-Significant-Bit-Oracles in TLS-DH(E)'
    url: https://raccoon-attack.com/RacoonAttack.pdf

  - text: 'The Raccoon attack exploits a flaw in the TLS… [GitHub Advisory Database]'
    url: https://github.com/advisories/GHSA-mh8f-5gw2-5wgh
    source: GitHub Advisory

  - text: 'Raccoon attack can compromise some TLS connections'
    url: https://duo.com/decipher/raccoon-attack-can-compromise-some-tls-connections
    source: Duo

  - text: 'CVE-2020-1968'
    url: https://nvd.nist.gov/vuln/detail/CVE-2020-1968
    source: NIST

---

## Overview

The [Raccoon Attack] is a timing vulnerability in TLS that allows attackers to decrypt sensitive communications under specific conditions. The attack exploits a side-channel in the Diffie-Hellman key exchange, relying on precise timing measurements and server configuration to break the encryption.

While the attack is complex and requires specific circumstances, it highlights the importance of secure server configurations and the potential impact of timing vulnerabilities on TLS security.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[Raccoon Attack]: https://raccoon-attack.com
