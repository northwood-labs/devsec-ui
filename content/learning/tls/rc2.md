---
title: Rivest Cipher 2 (RC2)
description: ❌ Vulnerable encryption algorithm
layout: learn-single

tls_part: encryption-algo

learn_more:
  - text: 'A Description of the RC2(r) Encryption Algorithm'
    url: https://datatracker.ietf.org/doc/html/rfc2268
    source: IETF

---

## Summary

The [RC2] algorithm was [cracked in 1997]. It is no longer considered secure.

Any cipher suite with `RC2` in the name should be avoided.

## Information

| Field        | Value                      |
|--------------|----------------------------|
| Kind         | Encryption algorithm       |
| Invented     | 1987                       |
| Cracked      | 1997                       |
| Related tech | [RSA], Comparable to [DES] |

[DES]: https://web.archive.org/web/20180308044140/http://security.nknu.edu.tw/crypto/faq/html/3-6-2.html
[cracked in 1997]: https://www.schneier.com/wp-content/uploads/2016/02/paper-relatedkey.pdf
[RC2]: https://en.wikipedia.org/wiki/RC2
[RSA]: https://www.rsa.com
