<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a communication intentionally did not occur for
a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-communicationnotdone.html">USQualityCore-communicationnotdone</a>.</p>

<p>The Communication and CommunicationNotDone profiles represent the positive and
  negative statements for a communication event. To ensure instances retrieved meet
  positive intent, applications should check the status as illustrated in this example:</p>

<pre>
<code>define Communication:
  [Communication] C
    where C.status in { 'preparation', 'in-progress', 'on-hold', 'completed' }
</code>
</pre>
