<h4>CQL Authoring Usage (Informational)</h4>

<pre>
<code>define "Statin Allergy Intolerance":
  ["AllergyIntolerance": "Statin Allergen"] StatinAllergyIntolerance
    where StatinAllergyIntolerance.clinicalStatus ~ "allergy-active"
</code>
</pre>

<p>This example represents a situation where the subject is currently experiencing, or is at risk of, a reaction to the identified substance.</p>
