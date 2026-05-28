<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>The following illustrative CQL shows an exclusion pattern for medication administrations not performed:</p>

<pre><code>define "Low Dose Unfractionated Heparin for VTE Prophylaxis Not Administered":
  ["MedicationAdministrationNotDone": "Low Dose Unfractionated Heparin for VTE Prophylaxis"] VTEMedication
    where VTEMedication.reasonCode in "Medical Reason" or VTEMedication.reasonCode in "Patient Refusal"</code></pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
