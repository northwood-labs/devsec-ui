---
title: Rivest Cipher 4 (RC4)
description: ❌ Vulnerable encryption algorithm
layout: learn-single

tls_part: encryption-algo

vulns:
  - NOMORE

learn_more:
  - text: 'Attacks against RC4'
    url: https://en.wikipedia.org/wiki/Transport_Layer_Security#RC4_attacks
    source: Wikipedia

  - text: 'Killing RC4: The Long Goodbye'
    url: https://blog.cloudflare.com/killing-rc4-the-long-goodbye/
    source: Cloudflare

  - text: 'End of the road for RC4'
    url: https://blog.cloudflare.com/killing-rc4-the-long-goodbye/
    source: Cloudflare

  - text: 'On the Security of RC4 in TLS and WPA'
    url: https://www.isg.rhul.ac.uk/tls/

---

## Summary

The [RC4] algorithm was [cracked in 2013][Qualys], was [prohibited from being part of TLS][RFC-7465] in 2015, and was [removed from all major web browsers][DigiCert] in 2016. It is no longer considered secure.

Any cipher suite with `RC4` in the name should be avoided.

## Information

| Field        | Value                           |
|--------------|---------------------------------|
| Kind         | {{% param-kind %}}              |
| Invented     | 1987                            |
| Cracked      | 2015                            |
| Related tech | [RSA], [WEP], [WPA], [WPA-TKIP] |

[DigiCert]: https://www.digicert.com/blog/major-browsers-announce-rc4-deprecation
[Qualys]: https://blog.qualys.com/product-tech/2013/03/19/rc4-in-tls-is-broken-now-what
[RC4]: https://en.wikipedia.org/wiki/RC4
[RFC-7465]: https://datatracker.ietf.org/doc/html/rfc7465
[RSA]: https://www.rsa.com
[WEP]: https://en.wikipedia.org/wiki/Wired_Equivalent_Privacy
[WPA-TKIP]: https://en.wikipedia.org/wiki/Temporal_Key_Integrity_Protocol
[WPA]: https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access
