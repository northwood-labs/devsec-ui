---
title: Perfect Forward Secrecy (PFS)
description: Ensuring that future breaches don't impact past communications.
layout: standards

learn_more:
  - text: 'Perfect Forward Secrecy (PFS)'
    url: https://csrc.nist.gov/glossary/term/perfect_forward_secrecy
    source: NIST

  - text: 'Forward Secrecy'
    url: https://en.wikipedia.org/wiki/Forward_secrecy
    source: Wikipedia

  - text: 'Perfect Forward Secrecy explained'
    url: https://www.sectigo.com/resource-library/perfect-forward-secrecy
    source: Sectigo

  - text: 'Pushing for Perfect Forward Secrecy, an Important Web Privacy Protection'
    url: https://www.eff.org/deeplinks/2013/08/pushing-perfect-forward-secrecy-important-web-privacy-protection
    source: Electronic Frontier Foundation (EFF)

  - text: 'Perfect Forward Secrecy - An Introduction'
    url: https://scotthelme.co.uk/perfect-forward-secrecy/
    source: Scott Helme

---

## Summary

**Perfect Forward Secrecy** (PFS) is a property of secure _key exchange_ protocols in which a compromise of long-term keys does not compromise past session keys.

## Parts of cipher suites

|                          Key exchange                          | Signature auth | Encryption | Mode | Hash |
|:--------------------------------------------------------------:|:--------------:|:----------:|:----:|:----:|
| {{< svg-check class="ui-badge-svg-lg ui-badge-success-svg" >}} |                |            |      |      |
