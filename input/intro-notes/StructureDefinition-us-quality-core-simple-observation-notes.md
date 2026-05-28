<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>US Core and US Quality Core define precise profiles for specific observations, as well as a general profile for LOINC-code laboratory result observations. When creating expressions for eCQMs or CDS artifacts with US Quality Core, use the applicable specific profile directly rather than the generic US Quality Core Observation profile when one applies.</p>

<p>To create an expression specifically requesting information that an observation intentionally did not occur for a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-observationcancelled.html">USQualityCore Observation Cancelled</a>.</p>

<p>The following example illustrates the use of the observation profile.</p>

<pre>
<code>define "Pap Test with Results":
  [Observation: "Pap Test"] PapTest
    where PapTest.value is not null
      and PapTest.status in { 'final', 'amended', 'corrected', 'preliminary' }
</code>
</pre>
