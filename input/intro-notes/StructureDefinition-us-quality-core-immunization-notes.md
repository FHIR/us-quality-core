<h4>CQL Authoring Usage (Informational)</h4>

<p>The following example illustrates the use of the Immunization profile:</p>

<pre><code>define "Polio Immunizations":
  ["Immunization": "Inactivated Polio Vaccine (IPV)"] PolioVaccination
    where PolioVaccination.status = 'completed'</code></pre>
