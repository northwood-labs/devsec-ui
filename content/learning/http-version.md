---
title: HTTP Versions
description: Make your site faster by enabling newer HTTP versions.
layout: learn-single

good_better_best:
  1good:
    title: OK
    description: '<span class="ui-badge-success-wrap">HTTP/1.1</span>'
  2better:
    title: Better
    description: '<span class="ui-badge-success-wrap">HTTP/1.1</span> + <span class="ui-badge-tip-wrap">HTTP/2</span>'
  3best:
    title: Best
    description: '<span class="ui-badge-success-wrap">HTTP/1.1</span> + <span class="ui-badge-tip-wrap">HTTP/2</span> + <span class="ui-badge-indigo-wrap">HTTP/3</span>'

docs:
  aws:
    cli: "https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cloudfront/update-distribution.html"
    console: "https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesSupportedHTTPVersions"
    terrafu: "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#http_version-1"
    notes: Using Amazon CloudFront.

  azure:
    cli: "https://learn.microsoft.com/en-us/cli/azure/network/application-gateway?view=azure-cli-latest#az-network-application-gateway-create"
    console: "https://learn.microsoft.com/en-us/azure/application-gateway/quick-create-portal"
    terrafu: "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_gateway#enable_http2-1"
    notes: Using Azure Application Gateway.

  cloudflare:
    cli: "https://developers.cloudflare.com/api/operations/zone-settings-edit-single-setting"
    console: "https://developers.cloudflare.com/speed/optimization/protocol/"
    terrafu: "https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_setting"
    notes: Setting ID is <code>http3</code> and value is <code>"on"</code>.

  gcp:
    cli: "https://cloud.google.com/load-balancing/docs/https#gcloud:-https"
    console: "https://cloud.google.com/load-balancing/docs/https#console:-https"
    terrafu: "https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_target_https_proxy"
    notes: Using GCP Cloud Load Balancing.

  nginx:
    docs: "https://www.slingacademy.com/article/enable-http2-http3-nginx/"

---

## Summary

Multiple versions of HTTP communication can be enabled on your web server at the same time. Making sure that you include _all_ of them will ensure that those who support the newer versions of HTTP will gain the performance benefits they provide.

HTTP versions are an excellent example of [progressive enhancement]. All of your users can access your website over HTTP/1.1. Web browsers and server software modernized since 2015 can gain the benefits of connecting over HTTP/2. And the newest software can connect over the newest HTTP/3.

Nobody is left out, and modern software is able to take advantage of modern connectivity.

## Brief descriptions of HTTP

* [HTTP/1.0] and [HTTP/1.1] have been around for _decades_, so they're _expected_ at this point in history. Virtually 100% of websites support HTTP 1.1.

* [HTTP/2] became available in 2015 (roughly {{% years-ago 2015 %}} years ago). According to [w3techs.com](https://w3techs.com/technologies/comparison/ce-http2,ce-http3) (in research [cited by Mozilla](https://developer.mozilla.org/en-US/docs/Web/HTTP/Evolution_of_HTTP#http2_–_a_protocol_for_greater_performance)), approximately 50% of the top million websites support HTTP/2, and approximately 35% of **all** websites have added support.

* [HTTP/3] became available in 2022 (roughly {{% years-ago 2022 %}} years ago). Rather than being built atop TCP like previous versions of HTTP, HTTP/3 is built atop the [QUIC] protocol, which enables better performance by reducing the back-and-forth that happens when connecting to a web server.

    According to [w3techs.com](https://w3techs.com/technologies/comparison/ce-http2,ce-http3) (in research [cited by Mozilla](https://developer.mozilla.org/en-US/docs/Web/HTTP/Evolution_of_HTTP#http2_–_a_protocol_for_greater_performance)), approximately 37% of the top million websites support HTTP/3, and approximately 32% of **all** websites have added support.

## Learn more about HTTP…

* [HTTP Working Group](https://httpwg.org) (Official)
* [HTTP/2 vs. HTTP/1.1: How do they affect web performance?](https://www.cloudflare.com/learning/performance/http2-vs-http1.1/) (Cloudflare)
* [What is HTTP/3?](https://www.cloudflare.com/learning/performance/what-is-http3/) (Cloudflare)
* [HTTP/2](https://en.wikipedia.org/wiki/HTTP/2) (Wikipedia)
* [HTTP/3](https://en.wikipedia.org/wiki/HTTP/3) (Wikipedia)
* [Evolution of HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Evolution_of_HTTP) (Mozilla Developer Network)
* [Comparison of the usage statistics of HTTP/2 vs. HTTP/3 for websites](https://w3techs.com/technologies/comparison/ce-http2,ce-http3) (W3Techs)
* [HTTP/2 and HTTP/3 explained](https://alexandrehtrb.github.io/posts/2024/03/http2-and-http3-explained/)

## Learn more about QUIC…

* [QUIC Working Group](https://quicwg.org) (Official)
* [QUIC, a multiplexed transport over UDP](https://www.chromium.org/quic/) (Chromium)
* [Introducing QUIC support for HTTPS load balancing](https://cloud.google.com/blog/products/gcp/introducing-quic-support-https-load-balancing) (Google Cloud Platform)
* [The Road to QUIC](https://blog.cloudflare.com/the-road-to-quic/) (Cloudflare)
* [QUIC](https://en.wikipedia.org/wiki/QUIC) (Wikipedia)

[HTTP/1.0]: https://datatracker.ietf.org/doc/html/rfc1945
[HTTP/1.1]: https://datatracker.ietf.org/doc/html/rfc9112
[HTTP/2]: https://datatracker.ietf.org/doc/html/rfc9113
[HTTP/3]: https://datatracker.ietf.org/doc/html/rfc9114
[progressive enhancement]: https://www.smashingmagazine.com/2009/04/progressive-enhancement-what-it-is-and-how-to-use-it/
[QUIC]: https://datatracker.ietf.org/doc/html/rfc9000
