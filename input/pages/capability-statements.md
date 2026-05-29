
{% lang-fragment list-capabilitystatements.xhtml %}

### Search Requirement Selection

The US Quality Core CapabilityStatements are the computable source for RESTful search conformance expectations in this guide. Entries with `SHALL` expectation extensions identify required interactions, individual search parameters, and search parameter combinations.

US Quality Core does not restate every search expectation from US Core. Search requirements are included when they support retrieval of in-scope USCDI+ Quality V1 data or quality-specific workflows. Search requirements from US Core that are not listed in the US Quality Core CapabilityStatement remain part of applicable US Core conformance, but they are not additional US Quality Core-specific search requirements.

Considerations for inclusion or exclusion:

- Re-state US Core search expectations when they are needed for in-scope USCDI+ Quality retrieval.
- Do not re-state US Core search expectations that are outside the US Quality Core retrieval scope.
- Add the minimum search expectations needed for patient-scoped quality data retrieval and relevant filtering when a resource has no corresponding US Core profile.
- Include parameters such as `status` or `do-not-perform` when needed to retrieve or distinguish not-done, declined, cancelled, or otherwise negated records.
- Include code-oriented filters, such as `code` or `type`, when they support quality retrieval patterns or QI-Core primary code path guidance.

Individual search parameters with `MAY` expectations identify filters that can participate in required combined searches or support relevant optional filtering. Combined search parameter expectations identify the multi-parameter searches required for US Quality Core conformance.

### SearchParameter Artifacts

Some US Quality Core and US Core SearchParameter artifacts referenced by these CapabilityStatements are derived from standard FHIR SearchParameters. These artifacts are included to document server and client expectations, such as comparator support, and to support generation tooling. They do not create new search parameter names when a standard FHIR search parameter already exists; actual searches use the standard FHIR search parameter names.

The presence of a SearchParameter artifact in this guide does not, by itself, create a US Quality Core conformance expectation. Conformance expectations for search are established by the CapabilityStatements and their `SHALL` or `MAY` expectation extensions.
