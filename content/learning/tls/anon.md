---
title: Anonymous Key Exchanges (anon)
description: ❌ Vulnerable key exchange
layout: learn-single

tls_part: key-exchange

learn_more:
  - text: 'Key-agreement protocol'
    url: https://en.wikipedia.org/wiki/Key-agreement_protocol
    source: Wikipedia

---

## Summary

Anonymous key exchanges are generally vulnerable to [Man-in-the-Middle attacks][MITM].

Any cipher suite with `anon` in the name should be avoided.

## Information

| Field | Value                |
|-------|----------------------|
| Kind  | Encryption algorithm |

[MITM]: https://en.wikipedia.org/wiki/Man-in-the-middle_attack
