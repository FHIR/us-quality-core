<h4>CQL Authoring Usage (Informational)</h4>

<p>The MedicationRequest and MedicationNotRequested profiles represent the positive and
negative statements for a medication order.</p>

<p>The following illustrative CQL shows an exclusion pattern for medications not requested:</p>

<pre><code>define "Reason for Not Ordering Antithrombotic":
  ["MedicationNotRequested": "Antithrombotic Therapy"] NoAntithromboticDischarge
    where (NoAntithromboticDischarge.reasonCode in "Medical Reason"
      or NoAntithromboticDischarge.reasonCode in "Patient Refusal")
      and (NoAntithromboticDischarge.isCommunity() or NoAntithromboticDischarge.isDischarge())
      and NoAntithromboticDischarge.status in { 'active', 'completed' }
      and NoAntithromboticDischarge.intent = 'order'</code></pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
