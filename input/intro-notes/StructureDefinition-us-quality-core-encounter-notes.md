<h4>CQL Authoring Usage (Informational)</h4>

<p>The following example illustrates accessing an inpatient encounter:</p>

<pre>
<code>define "Ophthalmology Encounter Codes":
  [Encounter: class in "Inpatient Encounter Classes"] InpatientEncounter
    where InpatientEncounter.type in "Ophthalmology Encounter Codes"</code>
</pre>
