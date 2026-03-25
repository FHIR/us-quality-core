{: toc}

{: #changes}

This page lists the change history for each version of **US Quality Core**.  For
v0.1.0 it provides an overview of the changes made to the predecessor QI-Core v6.0.0.

### Draft (v0.1.0)

{: #v0.1.0}

This initial version of US Quality Core is
based on <a href="https://hl7.org/fhir/us/qicore/STU6/">QI-Core v6.0.0</a> and adds USCDI+ Quality v1 guidance and
requirements.  It is additive to QI-Core v6.0.0 and does not remove QI-Core content that
is not relevant to USCDI+ Quality.

The following pages containing USCDI+ Quality v1 guidance have been **added**:

* <a href="uscdiquality.html">USCDI+ Quality Guidance page</a> describes which US Quality Core profiles implement USCDI+ Quality data classes and elements
* <a href="capability-statements.html">Capability Statements page</a> provides specific requirements
on servers and clients for exchanging USCDI+ Quality data via a standard FHIR RESTful interface

The following QI-Core v6.0.0 Pages have been **altered**:
* The <a href="index.html">Home page</a> has been updated to include additional background and context beyond content provided in QI-Core v6.0.0
* All QI-Core profiles containing USCDI+ Quality elements have been updated to include USCDI+ Quality tags to indicate elements necessary for USCDI+ Quality implementation. For example, <a href="StructureDefinition-us-quality-core-adverseevent.html">AdverseEvent</a> includes a USCDI+ Quality Elements section with seven elements relating to USCDI+ Quality
* This <a href="changes.html">Change Log</a> has been reset to v0.1.0
* The Table of Contents and associated navigation header now include 'FHIR Artifacts' and 'Guidance' groups to accommodate limited horizontal space in the navigation header for the new pages

Several other updates have been made to provide this Implementation Guide
a separate identity from QI-Core, particularly around naming and machine-readable
content.  This includes:
* Updates Implementation Guide metadata to establish a separate identity from QI-Core, resulting in the following changes:
   * Title updated to US Quality Core
   * Computable name updated to USQualityCore
   * Version reset to v0.1.0
   * ID updated to us-quality-core
   * Canonical URL updated to match the ID
* Updates the ID prefix of all computable artifacts from QICore to USQualityCore
