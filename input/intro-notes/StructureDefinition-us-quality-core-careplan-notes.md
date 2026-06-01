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

1. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-careplan-patient.html)** and **[`category`](SearchParameter-us-quality-core-careplan-category.html)** search parameters:

   - including support for *OR* search on `category` (e.g. `category={system|}[code],{system|}[code],...`)

   `GET [base]/CarePlan?patient={Patient/}[id]&category={system|}[code]`

   Example:

     1. GET [base]/CarePlan?patient=Patient/1137192&category=http://example.org/fhir/CodeSystem/category|quality

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of CarePlan resources filtered by category. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))
