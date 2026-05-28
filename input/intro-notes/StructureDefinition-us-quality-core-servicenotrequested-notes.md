<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>The ServiceRequest and ServiceNotRequested profiles represent the positive and
negative statements for a service request.</p>

<p>The following illustrative CQL shows an exclusion pattern for services not requested:</p>

<pre><code>define "Intermittent Pneumatic Compression Devices Not Ordered":
  ["ServiceNotRequested": "Application of intermittent pneumatic compression devices (IPC)"] DeviceNotOrdered
    where (DeviceNotOrdered.reasonRefused() in "Medical Reason"
      or DeviceNotOrdered.reasonRefused() in "Patient Refusal")
      and DeviceNotOrdered.status in { 'active', 'completed', 'on-hold' }</code></pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
