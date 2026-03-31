
This page documents requirements common to all US Quality Core actors in this guide. The conformance verbs - **SHALL**, **SHOULD**, **MAY** - used in this guide are defined in [FHIR Conformance Rules](https://hl7.org/fhir/R4/conformance-rules.html).

### Summary of Conformance Requirements

In addition to adherence to core FHIR requirements, conformance to this US Quality Core Implementation Guide also requires the following:

- Implementations **SHALL** support all profile types that contain at least one USCDI+ Quality flagged data element, as described in the [USCDI+ Quality](uscdiquality.html) page.
- Implementations **SHALL** support all USCDI+ Quality flagged data elements, and those flagged as MustSupport from underlying US Core profiles.
- Server implementations **SHALL** support the requirements described in the [US Quality Core Server CapabilityStatement](capabilityStatement-us-quality-core-server.html).
- Server implementations **SHALL** declare their support of the US Quality Core profiles in a FHIR CapabilityStatement.
- Quality improvement applications **SHALL** recognize and process all MustSupport elements in US Quality Core.
- Modifier elements **SHALL** be treated as MustSupport, even if not explicitly declared.
    - Applications **SHALL NOT** process resource instances that include unknown modifier elements.
- The resources in "Any" references **SHALL** conform to US Quality Core profiles if the base resource has a US Quality Core profile.
- Quality improvement applications **SHALL** be simultaneously compliant with US Quality Core profiles and US Core profiles. Because US Quality Core profiles are derived from US Core, the more restrictive US Quality Core bindings SHALL be applied where they exist. 
- Applications **SHOULD** use the preferred value sets as defined by US Quality Core profiles.

### Modifier Elements

Within FHIR resources, some elements are considered [Modifier Elements]({{site.data.fhir.path}}conformance-rules.html#isModifier), indicating that the value of that element may change the interpretation of the resource. Typical examples of modifier elements are elements such as `status` that exists in many resources and `doNotPerform` element in MedicationRequest. For example, `Procedure.status` with a value of not-done indicating that the procedure was not performed. 

Decision support and quality implementations MUST always check the values of modifier elements. For example, in processing a Procedure resource, the application must inspect the `status` element to determine whether the procedure was performed or not performed to the patient. For this reason, modifier elements SHALL be treated as MustSupport, even if not declared.

### Negation in US Quality Core
{: #negation-in-us-quality-core}

US Quality Core adopts QI-Core’s concept of negation and its approach to constraining negated concepts, which follows the informative publication established by HL7.[^2] 

US Quality Core constrains these negated concepts as follows:

[^2]: For further information about representing negatives in HL7 standards, see: HL7 Cross Paradigm Specification: Representing Negatives, Release I. April 2022. Available at: <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=592>. Retrieved 31 December 2023.

1.  Absence of data

    The measure or Clinical Decision Support (CDS) artifact uses CQL to determine that an expected record artifact does not exist.

2.  Documented absence of data with a valid reason

    The measure or CDS artifact uses a specifically designed US Quality Core profile to indicate that an activity intentionally did not occur for a valid reason.

When there is a need to document evidence that an expected activity was not done due to patient preference and/or specific criteria, systems should use one of the ten US Quality Core specific *negation* *rationale* profiles that align with existing profiles representing the expected actions.
The [US Quality Core Negation](negation.html) page of this guide provides detailed descriptions and guidance on these profiles.

### Terminology Bindings

Quality improvement artifact authors should pay close attention to binding parameters specified in the
profiles to determine whether the value set defined in the binding is exemplar or should be constrained to a specific value set when used. For example, the `code` element of the US Quality Core Medication profile is bound to the complete value set for the RxNorm code system, indicating that all Medication instances SHALL use codes from the RxNorm code system, but within any given artifact, instances will typically use a restricted value set.

### Resource References and "Any"

FHIR resources frequently contain references (pointers) to other FHIR resources. For example, `Encounter.subject` is a reference to a Patient resource. In US Quality Core, most references are constrained to US Quality Core profiled resources. For example, the US Quality Core Encounter profile's `Encounter.patient` must point to a Patient resource that conforms to the US Quality Core Patient profile. Consequently, any extensions or bindings expected to exist in US Quality Core Patient are also present in the resource pointed to by `Encounter.patient`. References to US Quality Core extensions accessed through references are guaranteed to be valid. References to resources that do not currently have US Quality Core profiles are not constrained, and as such, only the core FHIR properties and bindings are guaranteed to exist.

A particular problem occurs when a resource reference permits any type of resource, such as Encounter.indication. When
dealing with "Any" references, the current method of specifying profiles does not allow the profile author to specify
something to the effect of "a US Quality Core resource when there is one, and a FHIR core resource if there isn't." As stated in the [Summary of Conformance Requirements](general-requirements.html#summary-of-conformance-requirements) section above, in US Quality Core, the resources in "Any" references SHALL conform to US Quality Core profiles if the base resource has been profiled.

---
Footnotes: