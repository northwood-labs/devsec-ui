---
title: TLS and Cipher Suites
description: Reduce the attack surface of your website by enabling secure handshakes
layout: list

good_better_best:
  1abysmal:
    title: Not secure at all
    description: '<span class="ui-badge-error-wrap">SSLv2</span> <span class="ui-badge-error-wrap">SSLv3</span>'
  2better:
    title: Security broken
    description: '<span class="ui-badge-error-wrap">TLS 1.0</span> <span class="ui-badge-error-wrap">TLS 1.1</span>'
  3best:
    title: Safe and secure
    description: '<span class="ui-badge-success-wrap">TLS 1.2</span>+ <span class="ui-badge-success-wrap">TLS 1.3</span>'

---

## Summary

Security never stands still. As soon as new methods are designed to secure data on the internet, there is someone working on ways to crack-open that security. Things that were secure 20 years ago are not secure today.

<p class="not-prose text-xl py-4 font-semibold">The 2010s were a terrible decade for TLS security.</p>

In [TLS Vulnerabilities]({{% relref "vulns" %}}), we list a number of known vulnerabilities in cipher suites — most of which were discovered between 2010–2019. This triggered the need to radically shift how we approach security on the web.

Rather than continuing to allow access to older cipher suites with outdated security in order to allow older clients and web browsers to connect, the lessons from the 2010s taught us that it's the _future or bust_.

## Parts of a cipher suite

If any one part of a cipher suite has an issue, it can compromise the integrity of the entire cipher suite.
