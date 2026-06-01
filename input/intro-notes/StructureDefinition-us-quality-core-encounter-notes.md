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

1. **SHALL** support searching by resource id using the **[`_id`](SearchParameter-us-quality-core-encounter-id.html)** search parameter:

   `GET [base]/Encounter?_id=[id]`

   Example:

     1. GET [base]/Encounter?_id=example

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Encounter resources matching the specified id. ([how to search by token]({{site.data.fhir.path}}search.html#token))

2. **SHALL** support searching for records associated with a patient using the **[`patient`](SearchParameter-us-quality-core-encounter-patient.html)** search parameter:

   `GET [base]/Encounter?patient={Patient/}[id]`

   Example:

     1. GET [base]/Encounter?patient=Patient/1137192

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Encounter resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))

3. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-encounter-patient.html)** and **[`type`](SearchParameter-us-quality-core-encounter-type.html)** search parameters:

   - including support for *OR* search on `type` (e.g. `type={system|}[code],{system|}[code],...`)

   `GET [base]/Encounter?patient={Patient/}[id]&type={system|}[code]`

   Example:

     1. GET [base]/Encounter?patient=Patient/1137192&type=http://snomed.info/sct|123456

   *Source/Rationale:* **Adapted from US Core**. US Core defines the underlying retrieval pattern where applicable; US Quality Core makes this combination explicit for quality logic that filters by code.

   *Implementation Notes:* Fetches a Bundle of Encounter resources filtered by code. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

4. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-encounter-patient.html)** and **[`date`](SearchParameter-us-quality-core-encounter-date.html)** search parameters:

   - including support for these `date` comparators: `eq,ne,gt,ge,lt,le,sa,eb,ap`
   - including support for *AND* search on `date` (e.g. `date=[date]&date=[date]&...`)

   `GET [base]/Encounter?patient={Patient/}[id]&date={gt|lt|ge|le}[dateTime]`

   Example:

     1. GET [base]/Encounter?patient=Patient/1137192&date=ge2019-01-01

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Encounter resources filtered by date. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by date]({{site.data.fhir.path}}search.html#date))

<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>The following example illustrates accessing an inpatient encounter:</p>

<pre>
<code>define "Ophthalmology Encounter Codes":
  [Encounter: class in "Inpatient Encounter Classes"] InpatientEncounter
    where InpatientEncounter.type in "Ophthalmology Encounter Codes"</code>
</pre>
