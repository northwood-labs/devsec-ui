---
title: Cloudbleed
description: '@TODO'
layout: term

year: 2017
class:
  - Data leakage

learn_more:
  - text: 'Quantifying the Impact of "Cloudbleed"'
    url: https://blog.cloudflare.com/quantifying-the-impact-of-cloudbleed/
    source: Cloudflare

  - text: 'Incident report on memory leak caused by Cloudflare parser bug'
    url: https://blog.cloudflare.com/incident-report-on-memory-leak-caused-by-cloudflare-parser-bug/
    source: Cloudflare

---

## Overview

Cloudflare’s [Cloudbleed] bug, which caused data leakage from vulnerable pages, was patched within hours of discovery. Analysis of log data shows no evidence of malicious exploitation before the patch, with most leaked data consisting of internal headers and cookies. While the bug’s potential impact was significant, the risk to customers appears to be low, with no sensitive data found in the reviewed leaked data.

The memory leak was caused by a bug in their HTML parser, which allowed sensitive information to be cached by search engines. The bug, present in the Ragel-based parser for years, was triggered by the introduction of a new parser and disabled within 7 hours of discovery. The root cause was a pointer error in the Ragel code.

## Information

| Field                    | Value               |
|--------------------------|---------------------|
| Vulnerability discovered | {{% param-year %}}  |
| Vulnerability class      | {{% param-class %}} |

[Cloudbleed]: https://en.wikipedia.org/wiki/Cloudbleed
