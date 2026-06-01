<!-- US Quality Core profile search quick start. Format aligned with US Core profile search notes. -->

---

**Quick Start**{:#search style="font-size: 20px;"}
<a name="quick-start"> </a>

---

Below is an overview of the Server RESTful FHIR search interactions for this profile when supporting US Quality Core data access. See the [US Quality Core Server CapabilityStatement](CapabilityStatement-us-quality-core-server.html) for the computable conformance expectations.

- See the [Search Capability Requirements](general-requirements.html#search-capability-requirements) section for additional search conformance guidance.
- See the [Relationship with US Core and QI-Core](relationship-with-uscore-qicore.html#search-expectations-and-us-core) section for how US Quality Core selects search expectations relative to US Core.

#### No US Quality Core-Specific Search Requirements:

The US Quality Core Server CapabilityStatement does not add US Quality Core-specific search requirements for Organization. This resource is generally reached through references from in-scope quality resources rather than used as a primary USCDI+ Quality retrieval entry point.

#### Related US Core Search Expectations Not Re-Stated:

The following US Core search expectations are not additional US Quality Core-specific search requirements for this profile:

1. `name`

   *Source/Rationale:* **US Core only, not re-stated in US Quality Core**. Implementations claiming US Core conformance still need to satisfy applicable US Core requirements independently. This search is not called out as US Quality Core-specific because Organization is generally reached through references from in-scope quality resources rather than used as a primary USCDI+ Quality retrieval entry point.

2. `address`

   *Source/Rationale:* **US Core only, not re-stated in US Quality Core**. Implementations claiming US Core conformance still need to satisfy applicable US Core requirements independently. This search is not called out as US Quality Core-specific because Organization is generally reached through references from in-scope quality resources rather than used as a primary USCDI+ Quality retrieval entry point.
