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

1. **SHALL** support searching for records associated with a patient using the **[`patient`](SearchParameter-us-quality-core-condition-patient.html)** search parameter:

   `GET [base]/Condition?patient={Patient/}[id]`

   Example:

     1. GET [base]/Condition?patient=Patient/1137192

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Condition resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))

2. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-condition-patient.html)** and **[`category`](SearchParameter-us-quality-core-condition-category.html)** search parameters:

   - including support for *OR* search on `category` (e.g. `category={system|}[code],{system|}[code],...`)

   `GET [base]/Condition?patient={Patient/}[id]&category={system|}[code]`

   Example:

     1. GET [base]/Condition?patient=Patient/1137192&category=http://example.org/fhir/CodeSystem/category|quality

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Condition resources filtered by category. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

3. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-condition-patient.html)** and **[`code`](SearchParameter-us-quality-core-condition-code.html)** search parameters:

   - including support for *OR* search on `code` (e.g. `code={system|}[code],{system|}[code],...`)

   `GET [base]/Condition?patient={Patient/}[id]&code={system|}[code]`

   Example:

     1. GET [base]/Condition?patient=Patient/1137192&code=http://snomed.info/sct|123456

   *Source/Rationale:* **Adapted from US Core**. US Core defines the underlying retrieval pattern where applicable; US Quality Core makes this combination explicit for quality logic that filters by code.

   *Implementation Notes:* Fetches a Bundle of Condition resources filtered by code. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<pre>
<code>define "Active Diabetes Conditions":
  [ConditionProblemsHealthConcerns: Diabetes] Condition
    where Condition.isActive()</code>
</pre>
