<h4>CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a MedicationRequest intentionally did not occur for a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-medicationnotrequested.html">USQualityCore-Medicationnotrequested</a>.</p>

<p>The following example illustrates the use of the MedicationRequest profile:</p>

<pre>
<code>define "Antithrombotic Therapy at Discharge":
  ["MedicationRequest": medication in "Antithrombotic Therapy"] Antithrombotic
    where (Antithrombotic.isCommunity() or Antithrombotic.isDischarge())
      and Antithrombotic.status in { 'active', 'completed' }
      and Antithrombotic.intent = 'order'</code>
</pre>
