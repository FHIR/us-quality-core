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

1. **SHALL** support searching by clinical code using the **[`code`](SearchParameter-us-quality-core-medication-code.html)** search parameter:

   - including support for *OR* search on `code` (e.g. `code={system|}[code],{system|}[code],...`)

   `GET [base]/Medication?code={system|}[code]`

   Example:

     1. GET [base]/Medication?code=http://snomed.info/sct|123456

   *Source/Rationale:* **US Quality Core-specific**. This search is included to support quality logic retrieval by the relevant clinical concept.

   *Implementation Notes:* Fetches a Bundle of Medication resources filtered by code. ([how to search by token]({{site.data.fhir.path}}search.html#token))

<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<pre>
<code>define function "GetMedicationCode"(request MedicationRequest):
  if request.medication is CodeableConcept then
    request.medication as CodeableConcept
  else
    (singleton from ([Medication] M where M.id = GetId((request.medication as Reference).reference))).code
</code>
</pre>
