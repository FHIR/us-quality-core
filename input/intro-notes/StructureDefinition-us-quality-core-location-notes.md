<h4 id="cql-authoring-usage-informational">CQL Authoring Usage (Informational)</h4>

<pre>
<code>define "Encounter With ICU Location Stay 1 Day or More":
  "Encounter With Age Range and Without VTE Diagnosis or Obstetrical Conditions" QualifyingEncounter
    where exists ( QualifyingEncounter.location Location
      where Global.GetLocation(Location.location).type in "Intensive Care Unit"
        and Global."LengthInDays"(Location.period) >= 1
        and Location.period starts during TJC."CalendarDayOfOrDayAfter"(start of QualifyingEncounter.period)
    )
</code>
</pre>
