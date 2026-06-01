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

1. **SHALL** support searching for records associated with a subject using the **[`subject`](SearchParameter-us-quality-core-adverseevent-subject.html)** search parameter:

   `GET [base]/AdverseEvent?subject={Patient/}[id]`

   Example:

     1. GET [base]/AdverseEvent?subject=Patient/1137192

   *Source/Rationale:* **US Quality Core-specific**. US Core 6.1.0 does not define this profile, so US Quality Core defines this search for in-scope quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of AdverseEvent resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))

2. **SHALL** support searching using the combination of the **[`subject`](SearchParameter-us-quality-core-adverseevent-subject.html)** and **[`event`](SearchParameter-us-quality-core-adverseevent-event.html)** search parameters:

   - including support for *OR* search on `event` (e.g. `event={system|}[code],{system|}[code],...`)

   `GET [base]/AdverseEvent?subject={Patient/}[id]&event={system|}[code]`

   Example:

     1. GET [base]/AdverseEvent?subject=Patient/1137192&event=http://snomed.info/sct|123456

   *Source/Rationale:* **US Quality Core-specific**. US Core 6.1.0 does not define this profile, so US Quality Core defines this search for in-scope quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of AdverseEvent resources filtered by code. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

3. **SHALL** support searching using the combination of the **[`subject`](SearchParameter-us-quality-core-adverseevent-subject.html)** and **[`recorded-date`](SearchParameter-us-quality-core-adverseevent-recorded-date.html)** search parameters:

   - including support for these `recorded-date` comparators: `eq,ne,gt,ge,lt,le,sa,eb,ap`
   - including support for *AND* search on `recorded-date` (e.g. `recorded-date=[date]&recorded-date=[date]&...`)

   `GET [base]/AdverseEvent?subject={Patient/}[id]&recorded-date={gt|lt|ge|le}[dateTime]`

   Example:

     1. GET [base]/AdverseEvent?subject=Patient/1137192&recorded-date=ge2019-01-01

   *Source/Rationale:* **US Quality Core-specific**. US Core 6.1.0 does not define this profile, so US Quality Core defines this search for in-scope quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of AdverseEvent resources filtered by date. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by date]({{site.data.fhir.path}}search.html#date))
