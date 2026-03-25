{: toc}

{: #modelinfo}

To support implementations using Clinical Quality Language (CQL) and US Quality Core, model information (ModelInfo) for this IG is provided in conformance with [Using ModelInfo](https://hl7.org/fhir/uv/cql/using-modelinfo.html) in the Using CQL with FHIR IG.

This implementation guide includes a [derived](https://hl7.org/fhir/uv/cql/using-modelinfo.html#derived-modelinfo) type [USQualityCore ModelInfo](assets/us-quality-core-modelinfo-derived-0.1.0.xml) and corresponding [USQualityCore ModelInfo Library](Library-us-quality-core-modelinfo-derived.html) that provides model information for the profiles and extensions defined in US Quality Core. To use the US Quality Core model, include a using declaration as shown in the example below:

```cql
using USQualityCore version '0.1.0'
```

Although not required by CQL, current best-practice is to include the version of the model. For more information about how this library is constructed, refer to the [Using ModelInfo topic in the Using CQL with FHIR IG](https://hl7.org/fhir/uv/cql/using-modelinfo.html).
