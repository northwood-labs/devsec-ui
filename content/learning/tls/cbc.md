---
title: Cipher Block Chaining (CBC)
description: ❌ Vulnerable encryption algorithm
layout: learn-single

tls_part: encryption-algo

vulns:
  - beast
  - goldendoodle
  - lucky-13
  - poodle
  - zombie-poodle

---

## Summary

The [CBC] encryption algorithm suffers from a handful of vulnerabilites, namely alongside SSLv3 and TLS 1.0, making it a _weak_ cipher. GCM encryption should be preferred over CBC.

Any cipher suite with `CBC` in the name should be avoided.

## Information

| Field    | Value              |
|----------|--------------------|
| Kind     | {{% param-kind %}} |
| Invented | 1976               |
| Cracked  | 2011               |

[CBC]: https://en.wikipedia.org/wiki/Block_cipher_mode_of_operation#Cipher_block_chaining_(CBC)
