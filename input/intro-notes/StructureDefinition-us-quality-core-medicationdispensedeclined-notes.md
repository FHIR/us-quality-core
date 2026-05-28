<h4>CQL Authoring Usage (Informational)</h4>

<p>The following example illustrates the use of the MedicationDispenseDeclined profile:</p>

<pre>
<code>define "Dementia Medication Not Dispensed":
    ["MedicationDispenseNotDone": "Dementia Medications"] MedicationDispense
      where MedicationDispense.statusReason in "Medical Reason"
        or MedicationDispense.statusReason in "Patient Refusal"</code>
</pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
