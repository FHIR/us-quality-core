<h4>CQL Authoring Usage (Informational)</h4>

<p>The Simple Observation and ObservationCancelled profiles represent the positive and
negative statements for an observation. To ensure instances retrieved meet
negative intent, applications should check the status element as illustrated in
this example:</p>

<pre>
<code>define "Pap Test Refused":
  ["ObservationCancelled": "Pap Test"] PapTest
    where PapTest.notDoneReason in "Patient Refusal"</code>
</pre>

<p>Note that when a more specific observation, such as a Blood Pressure, is negated, the
resource instance should conform to both the specific observation profile and the
general negation profile.</p>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
