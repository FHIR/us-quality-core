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

1. **SHALL** support searching for records associated with a patient using the **[`patient`](SearchParameter-us-quality-core-immunization-patient.html)** search parameter:

   `GET [base]/Immunization?patient={Patient/}[id]`

   Example:

     1. GET [base]/Immunization?patient=Patient/1137192

   *Source/Rationale:* **US Core-derived/re-stated**. This search is directly re-stated from US Core because it is needed for in-scope USCDI+ Quality data retrieval.

   *Implementation Notes:* Fetches a Bundle of Immunization resources for the specified patient. ([how to search by reference]({{site.data.fhir.path}}search.html#reference))

2. **SHALL** support searching using the combination of the **[`patient`](SearchParameter-us-quality-core-immunization-patient.html)** and **[`status`](SearchParameter-us-quality-core-immunization-status.html)** search parameters:

   - including support for *OR* search on `status` (e.g. `status={system|}[code],{system|}[code],...`)

   `GET [base]/Immunization?patient={Patient/}[id]&status={system|}[code]`

   Example:

     1. GET [base]/Immunization?patient=Patient/1137192&status=completed

   *Source/Rationale:* **Adapted from US Core**. US Core defines the underlying search parameter; US Quality Core makes this combination explicit for status-sensitive quality workflows.

   *Implementation Notes:* Fetches a Bundle of Immunization resources filtered by status. ([how to search by reference]({{site.data.fhir.path}}search.html#reference) and [how to search by token]({{site.data.fhir.path}}search.html#token))

<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>The Immunization and ImmunizationNotDone profiles represent the positive and
negative statements for an immunization event.</p>

<p>The following illustrative CQL shows an exclusion pattern for immunizations not performed:</p>

<pre><code>define "Reason for No Polio Immunization":
  ["ImmunizationNotDone": "Inactivated Polio Vaccine (IPV)"] PolioVaccination
    where PolioVaccination.statusReason in "Medical Reason"
      or PolioVaccination.statusReason in "Patient Refusal"</code></pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
