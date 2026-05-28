<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>The Immunization and ImmunizationNotDone profiles represent the positive and
negative statements for an immunization event.</p>

<p>The following illustrative CQL shows an exclusion pattern for immunizations not performed:</p>

<pre><code>define "Reason for No Polio Immunization":
  ["ImmunizationNotDone": "Inactivated Polio Vaccine (IPV)"] PolioVaccination
    where PolioVaccination.statusReason in "Medical Reason"
      or PolioVaccination.statusReason in "Patient Refusal"</code></pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
