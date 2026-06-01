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

1. **SHALL** support searching for records associated with a patient using the **[`patient`](SearchParameter-us-quality-core-medicationadministration-patient.html)** search parameter:

   `GET [base]/MedicationAdministration?patient={Patient/}[id]`

   Example:

     1. GET [base]/MedicationAdministration?patient=Patient/1137192

   *Source/Rationale:* **US Quality Core-specific**. US Core 6.1.0 does not define this profile, so US Quality Core defines this search for in-scope quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of MedicationAdministration resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))

2. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-medicationadministration-patient.html)** and **[`status`](SearchParameter-us-quality-core-medicationadministration-status.html)** search parameters:

   - including support for *OR* search on `status` (e.g. `status={system|}[code],{system|}[code],...`)

   `GET [base]/MedicationAdministration?patient={Patient/}[id]&status={system|}[code]`

   Example:

     1. GET [base]/MedicationAdministration?patient=Patient/1137192&status=completed

   *Source/Rationale:* **US Quality Core-specific**. US Core 6.1.0 does not define this profile, so US Quality Core defines this search for in-scope quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of MedicationAdministration resources filtered by status. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

3. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-medicationadministration-patient.html)** and **[`code`](SearchParameter-us-quality-core-medicationadministration-code.html)** search parameters:

   - including support for *OR* search on `code` (e.g. `code={system|}[code],{system|}[code],...`)

   `GET [base]/MedicationAdministration?patient={Patient/}[id]&code={system|}[code]`

   Example:

     1. GET [base]/MedicationAdministration?patient=Patient/1137192&code=http://snomed.info/sct|123456

   *Source/Rationale:* **US Quality Core-specific**. US Core 6.1.0 does not define this profile, so US Quality Core defines this search for in-scope quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of MedicationAdministration resources filtered by code. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

4. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-medicationadministration-patient.html)** and **[`effective-time`](SearchParameter-us-quality-core-medicationadministration-effective-time.html)** search parameters:

   - including support for these `effective-time` comparators: `eq,ne,gt,ge,lt,le,sa,eb,ap`
   - including support for *AND* search on `effective-time` (e.g. `effective-time=[date]&effective-time=[date]&...`)

   `GET [base]/MedicationAdministration?patient={Patient/}[id]&effective-time={gt|lt|ge|le}[dateTime]`

   Example:

     1. GET [base]/MedicationAdministration?patient=Patient/1137192&effective-time=ge2019-01-01

   *Source/Rationale:* **US Quality Core-specific**. US Core 6.1.0 does not define this profile, so US Quality Core defines this search for in-scope quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of MedicationAdministration resources filtered by date. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by date]({{site.data.fhir.path}}search.html#date))

<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a MedicationAdministration intentionally
did not occur for a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-medicationadministrationnotdone.html">USQualityCore MedicationAdministration Not Done</a>.</p>

<p>The following example illustrates accessing MedicationAdministration data:</p>

<pre><code>define "Low Dose Unfractionated Heparin Administration":
  ["MedicationAdministration": medication in "Low Dose Unfractionated Heparin for VTE Prophylaxis"] VTEMedication
    where VTEMedication.status = 'completed'</code>
</pre>
