<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<pre>
<code>define "SDE Payer":
  [Coverage: type in "Payer"] Payer
    return {
      code: Payer.type,
      period: Payer.period
    }
</code>
</pre>
