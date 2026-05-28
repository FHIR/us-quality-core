<h4>CQL Authoring Usage (Informational)</h4>

<pre>
<code>define "Active Diabetes Conditions":
  [ConditionProblemsHealthConcerns: Diabetes] Condition
    where Condition.isActive()</code>
</pre>
