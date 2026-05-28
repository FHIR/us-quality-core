<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>To create an expression specifically requesting information that a ServiceRequest intentionally did
not occur for a medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-servicenotrequested.html">USQualityCore-Servicenotrequested</a>.</p>

<p>The following example illustrates the use of the ServiceRequest profile:</p>

<pre>
<code>define "Intermittent Pneumatic Compression Devices Ordered":
  ["ServiceRequest": "Application of intermittent pneumatic compression devices (IPC)"] DeviceOrdered
    where DeviceOrdered.status in { 'active', 'completed', 'on-hold' }</code>
</pre>
