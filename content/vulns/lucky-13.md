---
title: Lucky 13
description: 5 bytes of TLS header plus 8 bytes of TLS sequence number makes this attack possible.
layout: term

learn_more:
  - text: 'Prevent SSL LUCKY13 attacks'
    url: https://docs.veracode.com/r/prevent-ssl-lucky13
    source: Veracode

  - text: 'Lucky 13, BEAST, CRIME,… Is TLS dead, or just resting?'
    url: https://www.ietf.org/proceedings/89/slides/slides-89-irtfopen-1.pdf
    source: IETF

---

[Lucky 13] is an attack on CBC-mode encryption in TLS. AES-GCM ciphers (added in TLS 1.2) are not vulnerable to these attacks.

@TODO

## Information

| Field               | Value |
|---------------------|-------|
| Cracked             |       |
| Vulnerability class |       |

[Lucky 13]: https://www.isg.rhul.ac.uk/tls/Lucky13.html
