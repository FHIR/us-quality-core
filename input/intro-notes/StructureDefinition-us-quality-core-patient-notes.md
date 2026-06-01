<!-- US Quality Core profile search quick start. Format aligned with US Core profile search notes. -->

---

**Quick Start**{:#search style="font-size: 20px;"}
<a name="quick-start"> </a>

---

Below is an overview of the Server RESTful FHIR search interactions for this profile when supporting US Quality Core data access. See the [US Quality Core Server CapabilityStatement](CapabilityStatement-us-quality-core-server.html) for the computable conformance expectations.

- See the [Search Capability Requirements](general-requirements.html#search-capability-requirements) section for additional search conformance guidance.
- See the [Relationship with US Core and QI-Core](relationship-with-uscore-qicore.html#search-expectations-and-us-core) section for how US Quality Core selects search expectations relative to US Core.

#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching by resource id using the **[`_id`](SearchParameter-us-quality-core-patient-id.html)** search parameter:

   `GET [base]/Patient?_id=[id]`

   Example:

     1. GET [base]/Patient?_id=example

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Patient resources matching the specified id. ([how to search by token]({{site.data.fhir.path}}search.html#token))

#### Related US Core Search Expectations Not Re-Stated:

The following US Core search expectations are not additional US Quality Core-specific search requirements for this profile:

1. `identifier`

   *Source/Rationale:* **US Core only, not re-stated in US Quality Core**. Implementations claiming US Core conformance still need to satisfy applicable US Core requirements independently. This search is not called out as US Quality Core-specific because USCDI+ Quality retrieval is generally scoped to an identified patient.

2. `name`

   *Source/Rationale:* **US Core only, not re-stated in US Quality Core**. Implementations claiming US Core conformance still need to satisfy applicable US Core requirements independently. This search is not called out as US Quality Core-specific because USCDI+ Quality retrieval is generally scoped to an identified patient.

3. `birthdate+name`

   *Source/Rationale:* **US Core only, not re-stated in US Quality Core**. Implementations claiming US Core conformance still need to satisfy applicable US Core requirements independently. This search is not called out as US Quality Core-specific because USCDI+ Quality retrieval is generally scoped to an identified patient.

4. `gender+name`

   *Source/Rationale:* **US Core only, not re-stated in US Quality Core**. Implementations claiming US Core conformance still need to satisfy applicable US Core requirements independently. This search is not called out as US Quality Core-specific because USCDI+ Quality retrieval is generally scoped to an identified patient.
