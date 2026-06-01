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

1. **SHALL** support searching for records associated with a patient using the **[`patient`](SearchParameter-us-quality-core-claim-patient.html)** search parameter:

   `GET [base]/Claim?patient={Patient/}[id]`

   Example:

     1. GET [base]/Claim?patient=Patient/1137192

   *Source/Rationale:* **US Quality Core-specific**. US Core 6.1.0 does not define this profile, so US Quality Core defines this search for in-scope quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Claim resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))
