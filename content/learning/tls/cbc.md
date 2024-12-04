---
title: Cipher Block Chaining
description: Vulnerable key exchange
layout: learn-single

vulns:
  - beast
  - lucky-13
  - poodle

---

## Summary

The [CBC] encryption algorithm suffers from a handful of vulnerabilites, namely alongside SSLv3 and TLS 1.0, making it a _weak_ cipher. GCM encryption should be preferred over CBC.

Any cipher suite with `CBC` in the name should be avoided.

[CBC]: https://en.wikipedia.org/w/index.php?title=Block_cipher_mode_of_operation#CBC
