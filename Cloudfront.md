
```
What Is CloudFront?
Amazon CloudFront is a content delivery service designed to accelerate the distribution of both static and dynamic web content. It achieves this by caching your content on a worldwide network of edge locations. When a user sends a request, CloudFront directs it to the nearest edge location, providing a rapid response without repeatedly accessing the origin server.
In essence, CloudFront acts as a cache for your web application’s assets—whether they are static files like images or dynamic content. This caching not only improves application speed but also reduces the load on your primary server.
CloudFront Architecture
CloudFront's architecture is designed to be both intuitive and efficient. At its core, you define an "origin" for your content, which can be an [S3 bucket](https://learn.kodekloud.com/user/courses/amazon-simple-storage-service-amazon-s3), an [EC2 instance](https://learn.kodekloud.com/user/courses/amazon-elastic-compute-cloud-ec2), or even a custom HTTP server. Once the origin is designated, CloudFront caches the content at various edge locations around the globe. When a user request is made, the following process occurs:
If the file is cached at the edge location, CloudFront returns it immediately.
If the file is not cached (a cache miss), CloudFront retrieves it from the origin server, caches it at the edge, and then responds to the user.

Consider a scenario where you use an S3 bucket as your origin. When you create a CloudFront distribution—a unit that configures how CloudFront interacts with your origin—it provides a unique URL. End users send their requests to this URL. On the first request, if the content (like an image) is not cached at an edge location, CloudFront retrieves it from the S3 bucket. Any subsequent requests for the same content benefit from the cache, resulting in faster responses.

This caching behavior remains consistent whether your origin is an [S3 bucket](https://learn.kodekloud.com/user/courses/amazon-simple-storage-service-amazon-s3), a custom HTTP backend, or any other supported source.

For other origins, such as a custom HTTP backend, the process is identical: The user sends a request to CloudFront, which checks the cache at the nearest edge location. In the event of a cache miss, CloudFront requests the content from the origin, caches the new data, and then serves it to the user.

Time to Live (TTL) in CloudFront
When CloudFront caches your content at an edge location, it retains that content for a specified duration known as the Time to Live (TTL). By default, the TTL is set to 24 hours, meaning the cached content becomes stale after one day. You have the flexibility to customize the TTL based on your specific needs or set precise expiration times for individual objects.
Note
If you create a CloudFront distribution with an S3 bucket as your origin and leave the TTL at the default value, your content remains cached for 24 hours. Any changes made to a file during this period will not be visible to users until the TTL expires.

Cache Invalidation
There are scenarios when you need to update content before the TTL expires—for example, when replacing an old file with a new version. CloudFront supports cache invalidation for such cases. When you invalidate cached content, CloudFront removes it from all edge locations. On the next user request for that content, CloudFront fetches the latest version from the origin.

Origin Groups for Redundancy
To enhance the availability and reliability of your web application, CloudFront offers the Origin Groups feature. This allows you to configure both a primary and a secondary (fallback) origin. In case the primary origin is unreachable due to an outage or any other issues, CloudFront automatically switches to the secondary origin, ensuring minimal disruption for your users.
Logging and Analysis
CloudFront’s robust logging capabilities provide deep insights into your application's performance. The logs capture various details—including request time, IP address, and request method—which are critical for analyzing traffic patterns, troubleshooting issues, and gaining a comprehensive understanding of your application's behavior.

```markdown
# What Is CloudFront?

Amazon CloudFront is a **content delivery service** designed to accelerate the distribution of both static and dynamic web content. It achieves this by caching your content on a worldwide network of edge locations. When a user sends a request, CloudFront directs it to the nearest edge location, providing a rapid response without repeatedly accessing the origin server.

In essence, CloudFront acts as a **cache** for your web application’s assets—whether they are static files like images or dynamic content. This caching not only improves application speed but also reduces the load on your primary server.

---

## CloudFront Architecture

CloudFront's architecture is designed to be both intuitive and efficient:

- You define an **origin** for your content. This origin can be an [S3 bucket](https://learn.kodekloud.com/user/courses/amazon-simple-storage-service-amazon-s3), an [EC2 instance](https://learn.kodekloud.com/user/courses/amazon-elastic-compute-cloud-ec2), or a custom HTTP server.
- CloudFront caches the content at various **edge locations** around the globe.
- When a user request is made:
  - If the file is cached at the edge location, CloudFront returns it immediately.
  - If the file is not cached (a cache miss), CloudFront retrieves it from the origin server, caches it at the edge, then responds to the user.

### Example Using an S3 Origin

- You create a **CloudFront distribution**, which configures how CloudFront interacts with your origin, and provides a unique URL.
- End users send requests to this CloudFront URL.
- On the first request, if the content is not cached at an edge location, CloudFront fetches it from the S3 bucket. 
- Subsequent requests serve the cached content from the edge location — delivering faster responses.

This same process applies whether your origin is an S3 bucket, a custom HTTP backend, or any other supported source.

---

## Time to Live (TTL) in CloudFront

- When CloudFront caches content, it retains it for a duration called the **Time to Live (TTL)**.
- The default TTL is **24 hours**, after which the cached content becomes stale.
- You can customize the TTL or set precise expiration times per object.

> **Note:** If you use an S3 bucket as origin and keep the default TTL, changes to files won't be visible until the TTL expires.

---

## Cache Invalidation

- When you update content before TTL expiry, you can use **cache invalidation**.
- Invalidation removes the cached content from all edge locations.
- On the next request for that content, CloudFront fetches the latest version from the origin.

---

## Origin Groups for Redundancy

- CloudFront supports **Origin Groups**, allowing you to configure:
  - A **primary origin**
  - A **secondary (fallback) origin**
- If the primary origin is unreachable, CloudFront automatically switches to the secondary, ensuring high availability.

---

## Logging and Analysis

CloudFront’s **logging capabilities** capture detailed information including request time, IP address, and request method. These logs help:

- Analyze traffic patterns
- Troubleshoot issues
- Gain insights into application behavior

---
```

This README file summarizes the key concepts and features of Amazon CloudFront for customers or developers to understand the service quickly and apply it effectively.

<div style="text-align: center">⁂</div>

[^1]: https://amnic.com/blogs/what-is-cloudfront

[^2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html

[^3]: https://aws.amazon.com/cloudfront/faqs/

[^4]: https://notes.kodekloud.com/docs/AWS-Certified-Developer-Associate/CDNs-CloudFront/CDN-CloudFront-Basics

[^5]: https://www.geeksforgeeks.org/devops/aws-cloudfront/

[^6]: https://dev.to/aws-builders/supercharging-your-content-delivery-with-aws-cloudfront-2edg

[^7]: https://aws.amazon.com/cloudfront/

[^8]: https://www.youtube.com/watch?v=DCjklZ8kHw4

[^9]: https://quizlet.com/au/771586478/cloudfront-flash-cards/

[^10]: https://github.com/aws-samples/amazon-cloudfront-dynamic-websites

[^11]: https://awsfundamentals.com/blog/amazon-cloudfront-pricing

[^12]: https://aws.amazon.com/cloudfront/dynamic-content/

[^13]: https://github.com/aws-samples/amazon-cloudfront-secure-static-site

[^14]: https://aws.amazon.com/awstv/watch/e38f864ae69/

[^15]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/getting-started-cloudfront-overview.html

