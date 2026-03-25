library USQualityCoreCommonFHIRTests

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include USQualityCoreCommonFHIR called Common

codesystem "Marital Status Codes": 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus'
codesystem "CDC Race and Ethnicity Codes": 'urn:oid:2.16.840.1.113883.6.238'

valueset "Marital Status": 'http://hl7.org/fhir/ValueSet/marital-status'

code "Marital Status - Married": 'M' from "Marital Status Codes"
code "American Indian or Alaska Native": '1002-5' from "CDC Race and Ethnicity Codes"
code "Alaska Native": '1735-0' from "CDC Race and Ethnicity Codes"
code "Blood pressure": '85354-9' from Common."LOINC" display 'Blood pressure panel with all children optional'
code "Diastolic blood pressure": '8462-4' from Common."LOINC" display 'Diastolic blood pressure'
code "Systolic blood pressure": '8480-6' from Common."LOINC" display 'Systolic blood pressure'

context Patient

// USQualityCoreAdverseEvent
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-adverseevent
define AdverseEvent:
  [AdverseEvent]

// USQualityCoreAllergyIntolerance
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-allergyintolerance
define AllergyIntolerance:
  [AllergyIntolerance]

// USQualityCoreBodyStructure
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-bodystructure
define BodyStructure:
  [BodyStructure]

// USQualityCoreCarePlan
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-careplan
define CarePlan:
  [CarePlan]

// USQualityCoreCareTeam
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-careteam
define CareTeam:
  [CareTeam]

// USQualityCoreClaim
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-claim
define Claim:
  [Claim]

// USQualityCoreCommunication
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-communication
define Communication:
  [Communication] C
    where C.status in { 'preparation', 'in-progress', 'on-hold', 'completed' }

// USQualityCoreCommunicationNotDone
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-communicationnotdone
define CommunicationNotDone:
  [Communication] C
    where C.status = 'not-done'

// USQualityCoreCommunicationRequest
// @profile: 	http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-communicationrequest
define CommunicationRequest:
  [CommunicationRequest]

// USQualityCoreCondition
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-condition
define Condition:
  [Condition]

// USQualityCoreCoverage
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-coverage
define Coverage:
  [Coverage]

// USQualityCoreDevice
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-device
define Device:
  [Device]

// USQualityCoreDeviceNotRequested
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-devicenotrequested
define DeviceNotRequested:
  [DeviceRequest] D
    where D.status = 'completed'
      and D.doNotPerform() is true

// USQualityCoreDeviceRequest
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-devicerequest
define DeviceRequest:
  [DeviceRequest] D
    where D.status in { 'draft', 'active', 'on-hold', 'revoked', 'completed' }
      and D.doNotPerform() is not true

// USQualityCoreDeviceUseStatement
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-deviceusestatement
define DeviceUseStatement:
  [DeviceUseStatement]

// USQualityCoreDiagnosticReportLab
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-diagnosticreport-lab
define DiagnosticReportLab:
  [DiagnosticReport] D
    //where D.category ~ "http://terminology.hl7.org/CodeSystem/v2-0074#LAB"

// USQualityCoreDiagnosticReportNote
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-diagnosticreport-note
define DiagnosticReportNote:
  [DiagnosticReport] D

// USQualityCoreEncounter
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-encounter
define Encounter:
  [Encounter]

define EncounterPerformed:
  Encounter E
    where E.status = 'finished'

// USQualityCoreFamilyMemberHistory
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-familymemberhistory
define FamilyMemberHistory:
  [FamilyMemberHistory]

// USQualityCoreFlag
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-flag
define Flag:
  [Flag]

// USQualityCoreGoal
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-goal
define Goal:
  [Goal]

// USQualityCoreImagingStudy
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-imagingstudy
define ImagingStudy:
  [ImagingStudy]

// USQualityCoreImmunization
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-immunization
define Immunization:
  [Immunization] I
    where I.status = 'completed'

// USQualityCoreImmunizationEvaluation
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-immunizationevaluation
define ImmunizationEvaluation:
  [ImmunizationEvaluation]

// USQualityCoreImmunizationNotDone
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-immunizationnotdone
define ImmunizationNotDone:
  [Immunization] I
    where I.status = 'not-done'

// USQualityCoreImmunizationRecommendation
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-immunizationrec
define ImmunizationRecommendation:
  [ImmunizationRecommendation]

// USCoreImplantableDevice
// @profile: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
define ImplantableDevice:
  [Device]

// USQualityCoreLocation
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-location
define Location:
  [Location]

// USQualityCoreMedication
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-medication
define Medication:
  [Medication]

// USQualityCoreMedicationAdministration
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-medicationadministration
define MedicationAdministration:
  [MedicationAdministration] M
    where M.status in { 'in-progress', 'on-hold', 'completed' }

// USQualityCoreMedicationAdministrationNotDone
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-mednotadministered
define MedicationAdministrationNotDone:
  [MedicationAdministration] M
    where M.status = 'not-done'

// USQualityCoreMedicationDispense
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-medicationdispense
define MedicationDispense:
  [MedicationDispense] D
    where D.status in { 'preparation', 'in-progress', 'on-hold', 'completed' }

// USQualityCoreMedicationDispenseDeclined
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-medicationdispensedeclined
define MedicationDispenseDeclined:
  [MedicationDispense] D
    where D.status in { 'cancelled', 'declined' }

// USQualityCoreMedicationNotRequested
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-mednotrequested
define MedicationNotRequested:
  [MedicationRequest] R
    where R.status = 'completed'
      and R.doNotPerform is true

/*
define "Antithrombotic Not Given at Discharge":
  ["MedicationRequest": medication in "Antithrombotic Therapy"] NoAntithromboticDischarge
    where NoAntithromboticDischarge.doNotPerform is true
			and (NoAntithromboticDischarge.reasonCode in "Medical Reason"
				or NoAntithromboticDischarge.reasonCode in "Patient Refusal")
      and exists (NoAntithromboticDischarge.category C where FHIRHelpers.ToConcept(C) ~ FC."Community" or FHIRHelpers.ToConcept(C) ~ FC."Discharge")
      and NoAntithromboticDischarge.status = 'completed'
      and NoAntithromboticDischarge.intent = 'order'

define "Antithrombotic Not Given at Discharge":
  USQualityCore.MedicationNotRequested NoAntithromboticDischarge
    where NoAntithromboticDischarge.medication in "Antithrombotic Therapy"
      and (NoAntithromboticDischarge.reasonCode in "Medical Reason"
        or NoAntithromboticDischarge.reasonCode in "Patient Refusal")
      and (NoAntithromboticDischarge.isCommunity() or NoAntithromboticDischarge.isDischarge())
      and NoAntithromboticDischarge.intent = 'order'

define "Antithrombotic Not Given at Discharge":
  ["MedicationNotRequested": medication in "Antithrombotic Therapy"] NoAntithromboticDischarge
    where (NoAntithromboticDischarge.reasonCode in "Medical Reason"
        or NoAntithromboticDischarge.reasonCode in "Patient Refusal")
      and (NoAntithromboticDischarge.isCommunity() or NoAntithromboticDischarge.isDischarge())
      and NoAntithromboticDischarge.intent = 'order'
*/

// USQualityCoreMedicationRequest
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-medicationrequest
define MedicationRequest:
  [MedicationRequest] R
    where R.status in { 'active', 'on-hold', 'completed', 'draft' }
      and R.doNotPerform is not true

/*
define "Antithrombotic Therapy at Discharge":
  ["MedicationRequest": medication in "Antithrombotic Therapy"] Antithrombotic
    where exists (Antithrombotic.category C where FHIRHelpers.ToConcept(C) in { Global."Community", Global."Discharge" })
      and Antithrombotic.status in { 'active', 'completed' }
      and Antithrombotic.intent.value = 'order'

define "Antithrombotic Therapy at Discharge":
  USQualityCore.MedicationRequest Antithrombotic
    where Antithrombotic.medication in "Antithrombotic Therapy"
      and (Antithrombotic.isCommunity() or Antithrombotic.isDischarge())
      and Antithrombotic.status in { 'active', 'completed' }
      and Antithrombotic.intent = 'order'

define "Antithrombotic Therapy at Discharge":
  [MedicationRequest: medication in "Antithrombotic Therapy"] Antithrombotic
    where (Antithrombotic.isCommunity() or Antithrombotic.isDischarge())
      and Antithrombotic.status in { 'active', 'completed' }
      and Antithrombotic.intent = 'order'
*/

// USQualityCoreMedicationStatement
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-medicationstatement
define MedicationStatement:
  [MedicationStatement]

// USQualityCoreNutritionOrder
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-nutritionorder
define NutritionOrder:
  [NutritionOrder]

// USQualityCoreObservation
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-observation
define Observation:
  [Observation] O
    where O.status in { 'registered', 'preliminary', 'final', 'amended', 'corrected' }

// USQualityCoreObservationCancelled
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-observationcancelled
define ObservationCancelled:
  [Observation] O
    where O.status = 'cancelled'

// FHIR Vital Signs

// USCore Smoking Status

// USCore Laboratory Result

// USCore Pediatric BMI for Age

// USCore Pediatric Weight for Height

// USCore Pulse Oximetry

// USQualityCoreOrganization
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-organization
define Organization:
  [Organization]

// USQualityCorePatient
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-patient
//define Patient:
//  [Patient]

// USQualityCorePractitioner
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-practitioner
define Practitioner:
  [Practitioner]

// USQualityCorePractitionerRole
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-practitionerrole
define PractitionerRole:
  [PractitionerRole]

// USQualityCoreProcedure
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-procedure
define Procedure:
  [Procedure] P
    where P.status in { 'preparation', 'in-progress', 'on-hold', 'completed' }

define ProcedurePerformed:
  Procedure P
    where P.status = 'completed'

/*
define "Flexible Sigmoidoscopy Performed":
 [Procedure: "Flexible Sigmoidoscopy"] FlexibleSigmoidoscopy
	 where FlexibleSigmoidoscopy.status = 'completed'
		 and Global."Normalize Interval"(FlexibleSigmoidoscopy.performed) ends 5 years or less on or before end of "Measurement Period"

define "Flexible Sigmoidoscopy Performed":
  USQualityCore.ProcedurePerformed FlexibleSigmoidoscopy
    where FlexibleSigmoidoscopy.code in "Flexible Sigmoidoscopy"
      and FlexibleSigmoidoscopy.performed.toInterval() ends 5 years or less on or before end of "Measurement Period"
*/

// USQualityCoreProcedureNotDone
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-procedurenotdone
define ProcedureNotDone:
  [Procedure] P
    where P.status = 'not-done'

/*
define "No VTE Prophylaxis Device Applied":
  ["Procedure": "Device Application"] DeviceApplied
    let DeviceNotDoneTiming: Global.GetExtension(DeviceApplied, 'us-quality-core-recorded').value
    where (DeviceApplied.usedCode in "Intermittent pneumatic compression devices (IPC)"
      or DeviceApplied.usedCode in "Venous foot pumps (VFP)"
      or DeviceApplied.usedCode in "Graduated compression stockings (GCS)"
    )
      and  DeviceApplied.status = 'not-done'
    return {id: DeviceApplied.id, requestStatusReason: DeviceApplied.statusReason, authoredOn: DeviceNotDoneTiming}

define "No VTE Prophylaxis Device Applied":
  USQualityCore.ProcedureNotDone DeviceApplied
    where DeviceApplied.code in "Device Application"
      and (DeviceApplied.usedCode in "Intermittent pneumatic compression devices (IPC)"
        or DeviceApplied.usedCode in "Venous foot pumps (VFP)"
        or DeviceApplied.usedCode in "Graduated compression stockings (GCS)")
    return {
      id: DeviceApplied.id,
      requestStatusReason: DeviceApplied.statusReason,
      authoredOn: DeviceApplied.recorded()
    }

*/

// USQualityCoreRelatedPerson
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-relatedperson
define RelatedPerson:
  [RelatedPerson]

// USQualityCoreServiceNotRequested
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-servicenotrequested
define ServiceNotRequested:
  [ServiceRequest] SR
    where SR.status = 'completed'
      and SR.doNotPerform is true

/*
define "No VTE Prophylaxis Device Order":
  (["ServiceRequest": "Venous foot pumps (VFP)"]
    union ["ServiceRequest": "Intermittent pneumatic compression devices (IPC)"]
    union ["ServiceRequest": "Graduated compression stockings (GCS)"]
  ) DeviceOrder
    where DeviceOrder.status = 'completed'
      and DeviceOrder.doNotPerform is true

define "No VTE Prophylaxis Device Order":
  USQualityCore.ServiceNotRequested DeviceOrder
    where DeviceOrder.code in "Venous foot pumps (VFP)"
      or DeviceOrder.code in "Intermittent pneumatic compression devices (IPC)"
      or DeviceOrder.code in "Graduated compression stockings (GCS)"
*/

// USQualityCoreServiceRequest
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-servicerequest
define ServiceRequest:
  [ServiceRequest] SR
    where SR.status in { 'draft', 'active', 'on-hold', 'completed' }
      and SR.doNotPerform is not true

/*
define "Intervention Comfort Measures":
  (["ServiceRequest": "Comfort Measures"] P
    where P.intent = 'order'
  )
    union (["Procedure": "Comfort Measures"] InterventionPerformed
      where InterventionPerformed.status in {'completed', 'in-progress'}
    )

define "Intervention Comfort Measures":
  (USQualityCore.ServiceRequest SR
    where SR.code in "Comfort Measures"
      and SR.intent = 'order'
  )
    union (
      USQualityCore.Procedure InterventionPerformed
        where InterventionPerformed.code in "Comfort Measures"
          and InterventionPerformed.status in { 'completed', 'in-progress' }
    )
*/

// USQualityCoreSpecimen
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-specimen
define Specimen:
  [Specimen]

// USQualityCoreSubstance
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-substance
define Substance:
  [Substance]

// USQualityCoreTask
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-task
define Task:
  [Task] T
    where T.status in { 'draft', 'requested', 'received', 'accepted', 'ready', 'in-progress', 'on-hold', 'completed' }

// USQualityCoreTaskRejected
// @profile: http://fhir.org/guides/astp/us-quality-core/StructureDefinition/us-quality-core-taskrejected
// TODO: What about cancelled and failed?
define TaskRejected:
  [Task] T
    where T.status = 'rejected'

define TestPatientGender:
  Patient P
    where P.gender = 'male'

define TestPatientActive:
  Patient P
    where P.active is true

define TestPatientBirthDate:
  Patient P
    where P.birthDate before Today()

define TestPatientMaritalStatusMembership:
  Patient P
    where P.maritalStatus in "Marital Status"

define TestPatientMartialStatusComparison:
  Patient P
    where P.maritalStatus ~ "Marital Status - Married"

define TestPatientDeceasedAsBoolean:
  Patient P
    where P.deceased is false

define TestPatientDeceasedAsDateTime:
  Patient P
    where P.deceased before Today()

define TestSlices:
  [Observation: "Blood pressure"] O
    let
      systolicBP: singleton from (O.component SBP where SBP.code ~ "Systolic blood pressure"),
      diastolicBP: singleton from (O.component DBP where DBP.code ~ "Diastolic blood pressure")
    where O.status in { 'registered', 'preliminary', 'final', 'amended', 'corrected' }
      and systolicBP.value < 140 'mm[Hg]'
      and diastolicBP.value < 90 'mm[Hg]'

define TestSimpleExtensions:
  Patient P
    where P.birthsex() = 'M'

define TestComplexExtensions:
  Patient P
    where exists ((P.race().ombCategory) C where C ~ "American Indian or Alaska Native")
      and exists ((P.race().detailed) C where C ~ "Alaska Native")
