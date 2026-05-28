<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a MedicationAdministration intentionally
did not occur for a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-medicationadministrationnotdone.html">USQualityCore MedicationAdministration Not Done</a>.</p>

<p>The following example illustrates accessing MedicationAdministration data:</p>

<pre><code>define "Low Dose Unfractionated Heparin Administration":
  ["MedicationAdministration": medication in "Low Dose Unfractionated Heparin for VTE Prophylaxis"] VTEMedication
    where VTEMedication.status = 'completed'</code>
</pre>
