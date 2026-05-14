
### Search Requirement Selection

The US Quality Core CapabilityStatements are the authoritative source for RESTful search conformance expectations in this guide. Servers **SHALL** support the interactions, individual search parameters, and combined search parameters that have `SHALL` conformance expectations in the [US Quality Core Server CapabilityStatement](CapabilityStatement-us-quality-core-server.html). Clients use the [US Quality Core Client CapabilityStatement](CapabilityStatement-us-quality-core-client.html) to understand the search patterns they can use when requesting in-scope USCDI+ Quality data.

US Quality Core does not restate every search expectation from US Core. Search requirements are included here when they are necessary to retrieve in-scope USCDI+ Quality V1 data, when they are inherited US Core requirements directly relevant to that retrieval, or when they support quality-specific workflows such as negation, modifier handling, or the code paths commonly used by CQL-based quality logic. Search requirements from US Core that are not listed in the US Quality Core CapabilityStatement remain part of applicable US Core conformance, but they are not additional US Quality Core-specific search requirements.

The search expectations in this guide generally follow these rules:

| Search source or rationale | How it is represented in US Quality Core |
| --- | --- |
| US Core search expectations needed for in-scope USCDI+ Quality retrieval | Re-stated in the US Quality Core CapabilityStatement. |
| US Core search expectations not needed for in-scope USCDI+ Quality retrieval | Not re-stated as US Quality Core-specific requirements. Implementations still satisfy applicable US Core conformance independently. |
| Profiles with no corresponding US Core profile | US Quality Core adds the minimum search expectations needed for patient-scoped quality data retrieval and relevant filtering. |
| Negation and modifier handling | Search expectations include parameters such as `status` or `do-not-perform` where they are needed to retrieve or distinguish not-done, declined, cancelled, or otherwise negated records. |
| Quality logic code paths | Search expectations include code-oriented filters, such as `code` or `type`, where they align with quality retrieval patterns and QI-Core primary code path guidance. |

Individual search parameters with `MAY` expectations identify filters that can participate in required combined searches or support relevant optional filtering. Combined search parameter expectations identify specific multi-parameter searches that servers **SHALL** support for US Quality Core conformance.

### SearchParameter Artifacts

Some US Quality Core and US Core SearchParameter artifacts referenced by these CapabilityStatements are derived from standard FHIR SearchParameters. These artifacts are included to document server and client expectations, such as comparator support, and to support generation tooling. They do not create new search parameter names when a standard FHIR search parameter already exists; actual searches use the standard FHIR search parameter names.

The presence of a SearchParameter artifact in this guide does not, by itself, create a US Quality Core conformance expectation. Conformance expectations for search are established by the CapabilityStatements and their `SHALL` or `MAY` expectation extensions.

{% lang-fragment list-capabilitystatements.xhtml %}
