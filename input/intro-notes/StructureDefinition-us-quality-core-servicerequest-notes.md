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

1. **SHALL** support searching by resource id using the **[`_id`](SearchParameter-us-quality-core-servicerequest-id.html)** search parameter:

   `GET [base]/ServiceRequest?_id=[id]`

   Example:

     1. GET [base]/ServiceRequest?_id=example

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of ServiceRequest resources matching the specified id. ([how to search by token]({{site.data.fhir.path}}search.html#token))

2. **SHALL** support searching for records associated with a patient using the **[`patient`](SearchParameter-us-quality-core-servicerequest-patient.html)** search parameter:

   `GET [base]/ServiceRequest?patient={Patient/}[id]`

   Example:

     1. GET [base]/ServiceRequest?patient=Patient/1137192

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of ServiceRequest resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))

3. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-servicerequest-patient.html)** and **[`category`](SearchParameter-us-quality-core-servicerequest-category.html)** search parameters:

   - including support for *OR* search on `category` (e.g. `category={system|}[code],{system|}[code],...`)

   `GET [base]/ServiceRequest?patient={Patient/}[id]&category={system|}[code]`

   Example:

     1. GET [base]/ServiceRequest?patient=Patient/1137192&category=http://example.org/fhir/CodeSystem/category|quality

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of ServiceRequest resources filtered by category. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

4. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-servicerequest-patient.html)**, **[`category`](SearchParameter-us-quality-core-servicerequest-category.html)**, and **[`authored`](SearchParameter-us-quality-core-servicerequest-authored.html)** search parameters:

   - including support for *OR* search on `category` (e.g. `category={system|}[code],{system|}[code],...`)
   - including support for these `authored` comparators: `eq,ne,gt,ge,lt,le,sa,eb,ap`
   - including support for *AND* search on `authored` (e.g. `authored=[date]&authored=[date]&...`)

   `GET [base]/ServiceRequest?patient={Patient/}[id]&category={system|}[code]&authored={gt|lt|ge|le}[dateTime]`

   Example:

     1. GET [base]/ServiceRequest?patient=Patient/1137192&category=http://example.org/fhir/CodeSystem/category|quality&authored=ge2019-01-01

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of ServiceRequest resources filtered by date. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token) and [how to search by date]({{site.data.fhir.path}}search.html#date))

5. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-servicerequest-patient.html)** and **[`code`](SearchParameter-us-quality-core-servicerequest-code.html)** search parameters:

   - including support for *OR* search on `code` (e.g. `code={system|}[code],{system|}[code],...`)

   `GET [base]/ServiceRequest?patient={Patient/}[id]&code={system|}[code]`

   Example:

     1. GET [base]/ServiceRequest?patient=Patient/1137192&code=http://snomed.info/sct|123456

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of ServiceRequest resources filtered by code. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

6. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-servicerequest-patient.html)** and **[`do-not-perform`](SearchParameter-us-quality-core-servicerequest-do-not-perform.html)** search parameters:

   `GET [base]/ServiceRequest?patient={Patient/}[id]&do-not-perform=true`

   Example:

     1. GET [base]/ServiceRequest?patient=Patient/1137192&do-not-perform=true

   *Source/Rationale:* **US Quality Core-specific**. This search is included to support negation workflows and retrieval of records indicating the requested action should not be performed.

   *Implementation Notes:* Fetches a Bundle of records indicating the requested action should not be performed. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a ServiceRequest intentionally did
not occur for a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-servicenotrequested.html">USQualityCore-Servicenotrequested</a>.</p>

<p>The following example illustrates the use of the ServiceRequest profile:</p>

<pre>
<code>define "Intermittent Pneumatic Compression Devices Ordered":
  ["ServiceRequest": "Application of intermittent pneumatic compression devices (IPC)"] DeviceOrdered
    where DeviceOrdered.status in { 'active', 'completed', 'on-hold' }</code>
</pre>
