<h4>CQL Authoring Usage (Informational)</h4>

<p>The FHIR R4 DeviceRequest resource and the US Quality Core DeviceRequest profile describe a request for a patient to use a device. The device
may be any pertinent device specified in the Device resource. Examples of devices that may be requested include a
wheelchair, hearing aids, or an insulin pump. The request may lead to the dispensing of the device to the patient
or for use by the patient. Orders or recommendations for use of a device for a patient use the ServiceRequest resource.</p>

<p>To create an expression specifically requesting information that a DeviceRequest intentionally did not occur for a
medical, patient or system reason, use the profile <a href="StructureDefinition-us-quality-core-devicenotrequested.html">USQualityCore-Devicenotrequested</a>.</p>

<p>The following example illustrates the use of DeviceRequest:</p>

<pre>
<code>define "Device Indicating Frailty":
  [DeviceRequest: "Frailty Device"] FrailtyDeviceOrder
    where FrailtyDeviceOrder.status in { 'active', 'on-hold', 'completed' }
      and FrailtyDeviceOrder.intent in { 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order' }</code>
</pre>
