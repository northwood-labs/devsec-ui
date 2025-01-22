---
title: Recommended cipher suites
description: Reduce the attack surface of your website by enabling secure handshakes
layout: learn-single
---

## Overview

In {{% year %}}, there are only two configurations which are considered fully secure, and both should be offered to end-users:

## TLS versions

* <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS 1.3</span>+ <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS 1.2</span>

* <span class="ui-badge-wrap ui-badge-error-wrap">{{< svg-x >}} TLS 1.1</span>, <span class="ui-badge-wrap ui-badge-error-wrap">{{< svg-x >}} TLS 1.0</span>, <span class="ui-badge-wrap ui-badge-error-wrap">{{< svg-x >}} SSLv3</span>, and <span class="ui-badge-wrap ui-badge-error-wrap">{{< svg-x >}} SSLv2</span>

## TLS 1.3 cipher suites

In order to simplify configuration and increase security, [TLS 1.3] _only defines_ three cipher suites which are meant to be non-configurable.

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_AES_128_GCM_SHA256</span>

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_AES_256_GCM_SHA384</span>

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_CHACHA20_POLY1305_SHA256</span>

## TLS 1.2 cipher suites with _Forward Secrecy_

### Recommended

[TLS 1.2] carried-forward the habit of allowing administrators to configure which cipher suites to support, which led to _several_ security vulnerabilies being exposed during the 2010s.

As a result, these are the only cipher suites with no known vulnerabilities left, and are likely to work with most server software.

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256</span>

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384</span>

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256</span>

These are equivalent to the cipher suite identifiers used in **TLS 1.3**. The only difference being that they specify the key exchange (`ECDHE`) and the authentication signing mechanism (`ECDSA`), whereas the TLS 1.3 cipher suites do not.

### Tolerable

The following cipher suites are **also secure**, and you can add them **in addition to** the _Recommended_ cipher suites. However they aren't **recommended** because _RSA Authentication Signing_ with keys over 2048 bits can have a notable impact to performance.

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256</span>

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384</span>

1. <span class="ui-badge-wrap ui-badge-success-wrap">{{< svg-check >}} TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256</span>

[TLS 1.2]: https://datatracker.ietf.org/doc/html/rfc5246
[TLS 1.3]: https://datatracker.ietf.org/doc/html/rfc8446
