<h4>CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a procedure intentionally did not occur for
a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-procedurenotdone.html">USQualityCore-Procedurenotdone</a>.</p>

<p>The following example illustrates the use of the Procedure profile:</p>

<pre>
<code>define "Application of Intermittent Pneumatic Compression Devices":
  ["Procedure": "Application of Intermittent Pneumatic Compression Devices (IPC)"] DeviceApplied
    where DeviceApplied.status = 'completed'</code>
</pre>
