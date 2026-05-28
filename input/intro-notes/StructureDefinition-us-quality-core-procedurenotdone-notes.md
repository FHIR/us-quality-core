<h4>CQL Authoring Usage (Informational)</h4>

<p>The Procedure and ProcedureNotDone profiles represent the positive and
negative statements for a procedure.</p>

<p>The following example illustrates the use of the ProcedureNotDone profile:</p>

<pre>
<code>define "Intermittent Pneumatic Compression Devices Not Applied":
  [ProcedureNotDone: "Application of Intermittent Pneumatic Compression Devices (IPC)"] DeviceNotApplied
    where DeviceNotApplied.statusReason in "Medical Reason"
      or DeviceNotApplied.statusReason in "Patient Refusal"</code>
</pre>

<p>For a more complete discussion of representation of negation within US Quality Core and quality improvement artifacts, see the <a href="general-requirements.html#negation-in-us-quality-core">Negation in US Quality Core</a> topic.</p>
