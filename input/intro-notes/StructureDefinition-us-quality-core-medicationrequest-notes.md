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

1. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-medicationrequest-patient.html)**, **[`intent`](SearchParameter-us-quality-core-medicationrequest-intent.html)**, and **[`do-not-perform`](SearchParameter-us-quality-core-medicationrequest-do-not-perform.html)** search parameters:

   - including support for *OR* search on `intent` (e.g. `intent={system|}[code],{system|}[code],...`)

   `GET [base]/MedicationRequest?patient={Patient/}[id]&intent=order&do-not-perform=true`

   Example:

     1. GET [base]/MedicationRequest?patient=Patient/1137192&intent=order&do-not-perform=true

   *Source/Rationale:* **US Quality Core-specific**. This search is included to support negation workflows and retrieval of records indicating the requested action should not be performed.

   *Implementation Notes:* Fetches a Bundle of records indicating the requested action should not be performed. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

2. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-medicationrequest-patient.html)** and **[`intent`](SearchParameter-us-quality-core-medicationrequest-intent.html)** search parameters:

   - including support for *OR* search on `intent` (e.g. `intent={system|}[code],{system|}[code],...`)

   `GET [base]/MedicationRequest?patient={Patient/}[id]&intent=order`

   Example:

     1. GET [base]/MedicationRequest?patient=Patient/1137192&intent=order

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of MedicationRequest resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

#### Related US Core Search Expectations Not Re-Stated:

The following US Core search expectations are not additional US Quality Core-specific search requirements for this profile:

1. `status`

   *Source/Rationale:* **US Core only, not re-stated in US Quality Core**. Implementations claiming US Core conformance still need to satisfy applicable US Core requirements independently. This search is not called out as US Quality Core-specific because the US Quality Core CapabilityStatement focuses on the search patterns needed for USCDI+ Quality retrieval.

<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a MedicationRequest intentionally did not occur for a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-medicationnotrequested.html">USQualityCore-Medicationnotrequested</a>.</p>

<p>The following example illustrates the use of the MedicationRequest profile:</p>

<pre>
<code>define "Antithrombotic Therapy at Discharge":
  ["MedicationRequest": medication in "Antithrombotic Therapy"] Antithrombotic
    where (Antithrombotic.isCommunity() or Antithrombotic.isDischarge())
      and Antithrombotic.status in { 'active', 'completed' }
      and Antithrombotic.intent = 'order'</code>
</pre>
