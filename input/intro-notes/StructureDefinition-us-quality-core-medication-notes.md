<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<pre>
<code>define function "GetMedicationCode"(request MedicationRequest):
  if request.medication is CodeableConcept then
    request.medication as CodeableConcept
  else
    (singleton from ([Medication] M where M.id = GetId((request.medication as Reference).reference))).code
</code>
</pre>
