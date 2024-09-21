# Idealogue

## Design

### Top-level ideas

* Track changes over time!

* Unauthenticated vs Authenticated vs Paying users

* Rate limits on submissions.
  * Very low for unauthed
  * Low for authed/non-paying
  * As high as they pay for for authed/paying

* Rate limit algo based on:
  * JWT knows is paid/unpaid
  * GitHub-like "complexity score" per hour
    * Points to spend. More complex query costs more points.

* Scalable, usage-based pricing (not pricing tiers) (authed only)
  * Don't bill if usage is under $10 USD.
  * Avoid billing surprises. Allow users to set limits.
    * By points?
    * Disable types of queries?

* Human auth (authed only)
  * Verify auth per-click?

* Robot auth (authed only)
  * Enforce usage of TokenGen.
  * Enforce token TTL

* IAM (Review GCP, AWS, Azure, GitHub) (authed only)
  * Users
  * Orgs
  * Teams
  * Groups
  * Roles

* Audit log (authed only)
  * User actions
  * System actions
  * Runner actions
  * Pay for retention?

### Areas of the website

* Login/logout
* Home/submission
* User account dashboard
  * Orgs part of
    * Rate limits
    * API keys
    * Billing
    * User management
    * Permissions, roles, etc
    * User groups
* Responses/results (made by API key or user)
* Trends, “things we noticed”
* Audit trail, logs
* Import from CSV
* Import from provider (Route 53, Google DNS, IWantMyName, Cloudflare)
* Establish ownership of domain
* Unexpected changes? Changes made outside the system?

### Web front-end

* <https://pages.cloudflare.com> for unauthed frontend
* Fall back to Lambda hybrid app for account management
* CloudFlare DNS
* CloudFlare CDN

### API backend

* Run all scalable things as AWS Lambda functions
* Internal APIs use gRPC (Ent)
* External APIs use GraphQL (by default)
* Enterprise customers MAY use GraphQL or gRPC
* 100% async. Submissions respond with receipts. Users may check status of receipts.
* Notifications to email, SMS, Slack, Teams, webhook
  * Custom webhook SDKs generated from Ent

### Database

* Amazon Aurora Serverless (PostgreSQL?)
* Schema managed with Ent.
* Burst-able

## Where to start?

### First

* Initial modeling in Ent
* Homepage (unauthed) to receive domains to scan
* POST request goes into a queue, returns receipt
* Lambda function spun-up to fetch data
* Lambda writes results into DB
* Page to get results of receipt

### Second

* Using Ent, get GQL mutation working to submit request to queue
* Using Ent, get gRPC working to submit request to queue

### Third

* Figure out how to unit/integ/fuzz test
* Figure out how to mock
* Implement initial stats.d-like metrics
  * Lambda launch time
  * Messages in queue
  * Lambdas in-flight, completed, per timeframe

### Fourth

* Design website with a few core pages
  * Homepage
  * List results
  * Get result
  * Signup/Login
  * Change pass/2fa/passkeys
  * Logout

### Fifth

* Rate limit algorithm
* Figure out costs to me, projections
* Determine cost “per-point” + any add-on services
* Define “free tier”
* Put together a basic calculator

### Sixth

* Display current charges on customer dashboard
* Figure out how to setup recurring billing
* Figure out how to track customer usage fees
* Figure out how to automatically charge customer accounts
  * Deal with chargebacks + other things
  * Determine number of retries before kicking down to free-tier

### Seventh

* Ship website 1.0
* Write any documentation

### Eighth

* Ship API(s)
