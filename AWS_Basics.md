
# Account and IAM Basics

💡 **AWS Account**: Container for **identities** (users) and **resources**.

- Account **root user** has full control over all of the AWS account and any resources created within it. The root user can’t be restricted.
- IAM **User Groups** and **Roles** can also be created and given full or limited permissions. All identities start with no permissions.
- May be good practice to create multiple AWS Accounts for different uses (prod, dev, test).
- Every AWS account comes with its own running copy of IAM, which is a database.
- IAM is a globally resilient service, so any data is always secure across all AWS regions. (Exam Q)
- The IAM in each of your accounts is your own dedicated instance of IAM, separate from other accounts.


## IAM

- **User**
IDs which represent humans or apps that need access to your account
- **Group**
Collection of related users, e.g. dev team, finance or HR
- **Role**
Can be used by **AWS Services**, or for granting **external access** to your account.
Used when the number of things is uncertain.


### IAM Policy

- Allow or deny access to AWS services when and only when they’re attached to IAM users, groups or roles.


### IAM Three Main Jobs

1. **Manage identities** - An ID Provider (IDP)
Create, modify and delete IDs such as users and roles
2. **Authenticate identities**
Prove you are who you claim to be - generally username and passwords
3. **Authorize**
Allow or deny access to resources

- IAM is provided for free: No cost for users, groups and roles. Limits for number of each.
- IAM is a global service.
- Allow or deny its ids on its AWS account.
- No direct control on external accounts or users - only control local ids in your account.

**Identity federation and MFA**
Use Facebook, Twitter, Google etc. to access AWS resources.

# IAM Access Keys

- **Long-term credentials**
- Don’t update manually
- IAM User don’t need username and password - for CLI access key is enough
- IAM User can have up to two access keys
- Can be created, deleted, made inactive or made active


## Access Keys consist of two parts

- Both are provided when you create an access key
- These are only provided once - no ability to get access to the keys again. Need to be stored safely.
- Both parts are used when accessing AWS via CLI
- Access keys need to be deleted and recreated if they are leaked
- Possible to have two sets of keys such that you can create a new one, update all applications using the keys and then delete the old set

**Access Key ID:**
`ABABABABABABABA`

**Secret Access Key:**
`oierWRhoefWORIOF/DFLWAnljef`

Essential Characteristics of Cloud Computing
💡 On demand self-service: A consumer can unilaterally provision computing capabilities, such as server time and network storage, as needed automatically without requiring human interaction with each service provider. Can provision capabilities as needed without requiring human interaction.

Provision and terminate using a UI/CLI without human interaction.

Broad network access: Capabilities are available over the network and accessed through standard mechanisms that promote use by heterogeneous thin or thick client platforms (e.g., mobile phones, tablets, laptops, and workstations). Capabilities are available over the network and accessed through standard mechanisms.

Access services over any networks, on any devices, using standard protocols and methods.

Resource pooling: The provider’s computing resources are pooled to serve multiple consumers using a multi-tenant model, with different physical and virtual resources dynamically assigned and reassigned according to consumer demand. There is a sense of location independence in that the customer generally has no control or knowledge over the exact location of the provided resources but may be able to specify location at a higher level of abstraction (e.g., country, state, or datacenter). Examples of resources include storage, processing, memory, and network bandwidth. There is a sense of location independence… no control or knowledge over the exact location of the resources. Resources are pooled to serve multiple consumers using a multi-tenant model.

Economies of scale, cheaper service.

Rapid elasticity: Capabilities can be elastically provisioned and released, in some cases automatically, to scale rapidly outward and inward commensurate with demand. To the consumer, the capabilities available for provisioning often appear to be unlimited and can be appropriated in any quantity at any time. Capabilities can be elastically provisioned and released to scale rapidly outward and inward with demand. To the consumers, the capabilities available for provisioning ofter appear to be unlimited.

Scale UP (OUT) and DOWN (IN) automatically in response to system load.

Measured service: Cloud systems automatically control and optimize resource use by leveraging a metering capability at some level of abstraction appropriate to the type of service (e.g., storage, processing, bandwidth, and active user accounts). Resource usage can be monitored, controlled, and reported, providing transparency for both the provider and consumer of the utilized service. Resource usage can be monitored, controlled, reported and BILLED.

Usage is measured. Pay for what you consume.

