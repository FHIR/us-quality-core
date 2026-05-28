<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<p>The DeviceRequest and DeviceNotRequested profiles represent the positive and
negative statements for a device request.</p>

<p>The following example illustrates accessing DeviceRequest not requested data:</p>

<pre>
<code>define "Venous Foot Pumps Not Ordered":
[DeviceNotRequested: "Venous Foot Pumps (VFP)"] DeviceNotOrdered
  where (DeviceNotOrdered.doNotPerformReason() in "Medical Reason"
    or DeviceNotOrdered.doNotPerformReason() in "Patient Refusal"
  )</code>
</pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
