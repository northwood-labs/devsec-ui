---
title: Heartbleed
description: Vulnerability in OpenSSL’s implementation of the TLS/DTLS heartbeat extension
layout: term

learn_more:
  - text: 'Heartbleed'
    url: https://heartbleed.com

  - text: 'CVE-2014-0160'
    url: https://nvd.nist.gov/vuln/detail/cve-2014-0160
    source: NIST

  - text: "OpenSSL 'Heartbleed' vulnerability (CVE-2014-0160)"
    url: https://www.cisa.gov/news-events/alerts/2014/04/08/openssl-heartbleed-vulnerability-cve-2014-0160
    source: 'cisa.gov'

  - text: "Heartbleed vulnerability PoC"
    url: https://github.com/adamalston/Heartbleed
    source: GitHub

  - text: "Security: Heartbleed vulnerability"
    url: https://github.blog/news-insights/the-library/security-heartbleed-vulnerability/
    source: GitHub Blog

  - text: "Heartbleed Bug"
    url: https://owasp.org/www-community/vulnerabilities/Heartbleed_Bug
    source: OWASP

  - text: "The Heartbleed Bug, explained"
    url: https://www.vox.com/2014/6/19/18076318/heartbleed
    source: Vox

---

## Overview

[Heartbleed] is a vulnerability in certain older versions of OpenSSL, due to a bug that allowed an attacker to read more data than they should have been allowed to.

This allows an attacker to read additional data beyond the bounds of the TLS handshake in memory — including data that was supposed to be encrypted — fundamentally breaking security on the web. Not only did people need to update the versions of their deployed OpenSSL libraries, but in many cases they also needed to wait for software that was compiled with OpenSSL to be recompiled and released (or recompile the software themselves).

After _Heartbleed_, there were at least two notable forks: [LibreSSL] by the OpenBSD project; and [BoringSSL] by Google for use in Chromium, Android, and other projects. Other TLS/SSL libraries were not affected since it was a bug specific to OpenSSL, but OpenSSL was one of the most-used SSL/TLS libraries in-use at the time.

![XKCD: Heartbleed comic](https://imgs.xkcd.com/comics/heartbleed.png)

## Information

| Field               | Value        |
|---------------------|--------------|
| Cracked             | 2014         |
| Vulnerability class | Data leakage |

[BoringSSL]: https://github.com/google/boringssl
[Heartbleed]: https://en.wikipedia.org/wiki/Heartbleed
[LibreSSL]: https://www.libressl.org
