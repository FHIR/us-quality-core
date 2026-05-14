### Relationship with US Core

The profiles defined in US Quality Core are derived from US Core profiles
whenever possible. As a result, conforming to US Core automatically satisfies a
significant subset of the conformance requirements of US Quality Core. US
Quality Core conformance involves supporting certain additional data elements
not required by US Core, because they are needed for quality measurement and reporting.

Because US Quality Core profiles derive from US Core profiles where possible,
wherever US Core defines a binding, the US Quality Core profiles inherit that
binding. US Quality Core may specify additional constraints, such as requiring a
binding that is only preferred in the US Core base profile, but in general, the
US Quality Core profiles use the same bindings as US Core.

### Search Expectations and US Core
{: #search-expectations-and-us-core}

US Quality Core actors follow the applicable [US Quality Core Server CapabilityStatement](CapabilityStatement-us-quality-core-server.html) and [US Quality Core Client CapabilityStatement](CapabilityStatement-us-quality-core-client.html). Servers **SHALL** support the capabilities described in the US Core Server CapabilityStatement, and clients use the server capabilities to determine which searches can be used to retrieve US Quality Core data. The US Quality Core CapabilityStatements do not repeat every US Core search expectation. Instead, they identify the additional or specifically relevant RESTful search expectations needed to retrieve [in-scope USCDI+ Quality V1 data](uscdiquality.html#in-scope-uscdi-quality-v1-data-elements).

When a US Core search expectation is listed in a US Quality Core CapabilityStatement, it is listed because the search is directly relevant to USCDI+ Quality data access. When a US Core search expectation is not listed in the US Quality Core CapabilityStatements, that omission does not remove the underlying US Core requirement for systems claiming US Core conformance; it only means the search is not called out as a US Quality Core-specific search expectation.

US Quality Core also defines search expectations that are not direct copies of US Core requirements. These occur when a US Quality Core profile has no corresponding US Core profile, when a search is needed to retrieve or distinguish negated records and modifier states such as `status` or `do-not-perform`, or when a search aligns with quality logic retrieval patterns such as the QI-Core primary code path for a resource.

Profile pages include brief search expectation notes where a resource's search rationale is important for implementers. The [US Quality Core Server CapabilityStatement](CapabilityStatement-us-quality-core-server.html) and [US Quality Core Client CapabilityStatement](CapabilityStatement-us-quality-core-client.html) remain the authoritative computable sources for which searches are required or optional.

### Relationship with QI-Core

As described in the [Background](index.html#background) section of this guide, US Quality Core is a direct descendant of QI-Core. This version of US Quality Core is derived from QI-Core 6.0.0 and carries forward the QI-Core profile set to support continuity for existing QI-Core implementers. Carrying forward a profile does not mean every inherited profile is required for US Quality Core conformance.

Only profiles that include at least one USCDI+ Quality-flagged element are in scope for this version's conformance requirements. The [Summary List of In-Scope Profiles for Conformance](uscdiquality.html#summary-list-of-in-scope-profiles-for-conformance) identifies the profiles that **SHALL** be supported. Profiles inherited from QI-Core 6.0.0 that do not include USCDI+ Quality-flagged elements are listed in the [Summary List of Out-of-Scope Profiles for Conformance](uscdiquality.html#summary-list-of-out-of-scope-profiles-for-conformance); they are included in this guide to ease adoption and preserve alignment with QI-Core, but they are not required for USCDI+ Quality V1 conformance.

Several QI-Core-derived materials in this guide, including the model information and CQL pattern content, are informational. They are retained to support the quality measurement tooling ecosystem and to make the relationship to QI-Core clear, but they do not add conformance requirements beyond those stated in the conformance pages, the USCDI+ Quality mapping, and the CapabilityStatements.

See the [Scope](index.html#scope), [USCDI+ Quality](uscdiquality.html), and [Change Log](changes.html) sections of this guide for additional details on the scope of changes made from QI-Core 6.0.0.
