<h4>CQL Authoring Usage (Informational)</h4>

<p>The Communication and CommunicationNotDone profiles represent the positive and
  negative statements for a communication event.</p>

<p>This example meets measure intent for exclusion as defined in the following illustrative CQL (informational; not part of conformance requirements):</p>

<pre><code>[CommunicationNotDone: "Macular edema absent (finding)"] MacularEdemaAbsentNotCommunicated
  with "Diabetic Retinopathy Encounter" EncounterDiabeticRetinopathy
    such that MacularEdemaAbsentNotCommunicated.sent during EncounterDiabeticRetinopathy.period
      and ( MacularEdemaAbsentNotCommunicated.statusReason in "Medical Reason"
        or MacularEdemaAbsentNotCommunicated.statusReason in "Patient Reason"
      )</code></pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
