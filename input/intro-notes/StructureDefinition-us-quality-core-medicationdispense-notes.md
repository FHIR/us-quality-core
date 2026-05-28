<h4>CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a MedicationDispense intentionally
did not occur for a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-medicationdispensedeclined.html">USQualityCore-medicationnotdispensed</a>.</p>

<p>The following example illustrates the use of the MedicationDispense profile:</p>

<pre>
<code>define "Dementia Medication Dispensed":
  ["MedicationDispense": "Dementia Medications"] MedicationDispense
    where MedicationDispense.status in { 'active', 'completed', 'on-hold' }</code>
</pre>
