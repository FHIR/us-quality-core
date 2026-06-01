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

1. **SHALL** support searching by resource id using the **[`_id`](SearchParameter-us-quality-core-relatedperson-id.html)** search parameter:

   `GET [base]/RelatedPerson?_id=[id]`

   Example:

     1. GET [base]/RelatedPerson?_id=example

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of RelatedPerson resources matching the specified id. ([how to search by token]({{site.data.fhir.path}}search.html#token))

2. **SHALL** support searching for records associated with a patient using the **[`patient`](SearchParameter-us-quality-core-relatedperson-patient.html)** search parameter:

   `GET [base]/RelatedPerson?patient={Patient/}[id]`

   Example:

     1. GET [base]/RelatedPerson?patient=Patient/1137192

   *Source/Rationale:* **Adapted from US Core**. US Core defines the underlying search pattern; US Quality Core carries it forward for in-scope USCDI+ Quality retrieval.

   *Implementation Notes:* Fetches a Bundle of RelatedPerson resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))
