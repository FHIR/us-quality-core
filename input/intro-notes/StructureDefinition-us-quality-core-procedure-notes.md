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

1. **SHALL** support searching for records associated with a patient using the **[`patient`](SearchParameter-us-quality-core-procedure-patient.html)** search parameter:

   `GET [base]/Procedure?patient={Patient/}[id]`

   Example:

     1. GET [base]/Procedure?patient=Patient/1137192

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Procedure resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))

2. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-procedure-patient.html)** and **[`status`](SearchParameter-us-quality-core-procedure-status.html)** search parameters:

   - including support for *OR* search on `status` (e.g. `status={system|}[code],{system|}[code],...`)

   `GET [base]/Procedure?patient={Patient/}[id]&status={system|}[code]`

   Example:

     1. GET [base]/Procedure?patient=Patient/1137192&status=completed

   *Source/Rationale:* **Adapted from US Core**. US Core defines the underlying search parameter; US Quality Core makes this combination explicit for status-sensitive quality workflows.

   *Implementation Notes:* Fetches a Bundle of Procedure resources filtered by status. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

3. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-procedure-patient.html)** and **[`date`](SearchParameter-us-quality-core-procedure-date.html)** search parameters:

   - including support for these `date` comparators: `eq,ne,gt,ge,lt,le,sa,eb,ap`
   - including support for *AND* search on `date` (e.g. `date=[date]&date=[date]&...`)

   `GET [base]/Procedure?patient={Patient/}[id]&date={gt|lt|ge|le}[dateTime]`

   Example:

     1. GET [base]/Procedure?patient=Patient/1137192&date=ge2019-01-01

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Procedure resources filtered by date. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by date]({{site.data.fhir.path}}search.html#date))

<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a procedure intentionally did not occur for
a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-procedurenotdone.html">USQualityCore-Procedurenotdone</a>.</p>

<p>The following example illustrates the use of the Procedure profile:</p>

<pre>
<code>define "Application of Intermittent Pneumatic Compression Devices":
  ["Procedure": "Application of Intermittent Pneumatic Compression Devices (IPC)"] DeviceApplied
    where DeviceApplied.status = 'completed'</code>
</pre>
