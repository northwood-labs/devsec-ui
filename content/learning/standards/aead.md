---
title: Authenticated Encryption with Associated Data (AEAD)
description: Higher degree of secrecy, authenticity, symmetric, and randomization.
layout: standards

learn_more:
  - text: 'Authenticated Encryption with Associated Data (AEAD)'
    url: https://developers.google.com/tink/aead
    source: Google Tink

  - text: 'An Interface and Algorithms for Authenticated Encryption'
    url: https://datatracker.ietf.org/doc/html/rfc5116
    source: IETF

  - text: 'Authenticated encryption'
    url: https://en.wikipedia.org/wiki/Authenticated_encryption
    source: Wikipedia

  - text: 'Galois/Counter Mode'
    url: https://en.wikipedia.org/wiki/Galois/Counter_Mode
    source: Wikipedia

  - text: 'CCM mode'
    url: https://en.wikipedia.org/wiki/CCM_mode
    source: Wikipedia

  - text: 'ChaCha20-Poly1305'
    url: https://en.wikipedia.org/wiki/ChaCha20-Poly1305
    source: Wikipedia

---

## Summary

**Authenticated Encryption with Associated Data** (AEAD) offers a much higher degree of secrecy, authenticity, symmetric, and randomization than traditional encryption algorithms. They consist of `GCM`, `CCM`, and `Poly1305` encryption modes.

## Parts of cipher suites

| Key exchange | Signature auth | Encryption |                              Mode                              | Hash |
|:------------:|:--------------:|:----------:|:--------------------------------------------------------------:|:----:|
|              |                |            | {{< svg-check class="ui-badge-svg-lg ui-badge-success-svg" >}} |      |
