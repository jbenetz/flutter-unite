import "fhir.dart";

typedef Object CreateFHIRObject(Map json);

class FHIRObjectFactory {
  static Map<String, CreateFHIRObject> _builderLookup = {
    "Element": (Map json) => Element.fromJSON(json),
    "Extension": (Map json) => Extension.fromJSON(json),
    "Narrative": (Map json) => Narrative.fromJSON(json),
    "Annotation": (Map json) => Annotation.fromJSON(json),
    "Attachment": (Map json) => Attachment.fromJSON(json),
    "Identifier": (Map json) => Identifier.fromJSON(json),
    "CodeableConcept": (Map json) => CodeableConcept.fromJSON(json),
    "Coding": (Map json) => Coding.fromJSON(json),
    "Quantity": (Map json) => Quantity.fromJSON(json),
    "Duration": (Map json) => Duration.fromJSON(json),
    "Distance": (Map json) => Distance.fromJSON(json),
    "Count": (Map json) => Count.fromJSON(json),
    "Money": (Map json) => Money.fromJSON(json),
    "Age": (Map json) => Age.fromJSON(json),
    "Range": (Map json) => Range.fromJSON(json),
    "Period": (Map json) => Period.fromJSON(json),
    "Ratio": (Map json) => Ratio.fromJSON(json),
    "Reference": (Map json) => Reference.fromJSON(json),
    "SampledData": (Map json) => SampledData.fromJSON(json),
    "Signature": (Map json) => Signature.fromJSON(json),
    "HumanName": (Map json) => HumanName.fromJSON(json),
    "Address": (Map json) => Address.fromJSON(json),
    "ContactPoint": (Map json) => ContactPoint.fromJSON(json),
    "Timing": (Map json) => Timing.fromJSON(json),
    "TimingRepeat": (Map json) => TimingRepeat.fromJSON(json),
    "Meta": (Map json) => Meta.fromJSON(json),
    "ContactDetail": (Map json) => ContactDetail.fromJSON(json),
    "Contributor": (Map json) => Contributor.fromJSON(json),
    "DataRequirement": (Map json) => DataRequirement.fromJSON(json),
    "DataRequirementCodeFilter": (Map json) =>
        DataRequirementCodeFilter.fromJSON(json),
    "DataRequirementDateFilter": (Map json) =>
        DataRequirementDateFilter.fromJSON(json),
    "DataRequirementSort": (Map json) => DataRequirementSort.fromJSON(json),
    "ParameterDefinition": (Map json) => ParameterDefinition.fromJSON(json),
    "RelatedArtifact": (Map json) => RelatedArtifact.fromJSON(json),
    "TriggerDefinition": (Map json) => TriggerDefinition.fromJSON(json),
    "UsageContext": (Map json) => UsageContext.fromJSON(json),
    "Dosage": (Map json) => Dosage.fromJSON(json),
    "DosageDoseAndRate": (Map json) => DosageDoseAndRate.fromJSON(json),
    "Population": (Map json) => Population.fromJSON(json),
    "ProductShelfLife": (Map json) => ProductShelfLife.fromJSON(json),
    "ProdCharacteristic": (Map json) => ProdCharacteristic.fromJSON(json),
    "MarketingStatus": (Map json) => MarketingStatus.fromJSON(json),
    "SubstanceAmount": (Map json) => SubstanceAmount.fromJSON(json),
    "SubstanceAmountReferenceRange": (Map json) =>
        SubstanceAmountReferenceRange.fromJSON(json),
    "Expression": (Map json) => Expression.fromJSON(json),
    "ElementDefinition": (Map json) => ElementDefinition.fromJSON(json),
    "ElementDefinitionSlicing": (Map json) =>
        ElementDefinitionSlicing.fromJSON(json),
    "ElementDefinitionDiscriminator": (Map json) =>
        ElementDefinitionDiscriminator.fromJSON(json),
    "ElementDefinitionBase": (Map json) => ElementDefinitionBase.fromJSON(json),
    "ElementDefinitionType": (Map json) => ElementDefinitionType.fromJSON(json),
    "ElementDefinitionExample": (Map json) =>
        ElementDefinitionExample.fromJSON(json),
    "ElementDefinitionConstraint": (Map json) =>
        ElementDefinitionConstraint.fromJSON(json),
    "ElementDefinitionBinding": (Map json) =>
        ElementDefinitionBinding.fromJSON(json),
    "ElementDefinitionMapping": (Map json) =>
        ElementDefinitionMapping.fromJSON(json),
    "Account": (Map json) => Account.fromJSON(json),
    "AccountCoverage": (Map json) => AccountCoverage.fromJSON(json),
    "AccountGuarantor": (Map json) => AccountGuarantor.fromJSON(json),
    "ActivityDefinition": (Map json) => ActivityDefinition.fromJSON(json),
    "ActivityDefinitionParticipant": (Map json) =>
        ActivityDefinitionParticipant.fromJSON(json),
    "ActivityDefinitionDynamicValue": (Map json) =>
        ActivityDefinitionDynamicValue.fromJSON(json),
    "AdverseEvent": (Map json) => AdverseEvent.fromJSON(json),
    "AdverseEventSuspectEntity": (Map json) =>
        AdverseEventSuspectEntity.fromJSON(json),
    "AdverseEventCausality": (Map json) => AdverseEventCausality.fromJSON(json),
    "AllergyIntolerance": (Map json) => AllergyIntolerance.fromJSON(json),
    "AllergyIntoleranceReaction": (Map json) =>
        AllergyIntoleranceReaction.fromJSON(json),
    "Appointment": (Map json) => Appointment.fromJSON(json),
    "AppointmentParticipant": (Map json) =>
        AppointmentParticipant.fromJSON(json),
    "AppointmentResponse": (Map json) => AppointmentResponse.fromJSON(json),
    "AuditEvent": (Map json) => AuditEvent.fromJSON(json),
    "AuditEventAgent": (Map json) => AuditEventAgent.fromJSON(json),
    "AuditEventNetwork": (Map json) => AuditEventNetwork.fromJSON(json),
    "AuditEventSource": (Map json) => AuditEventSource.fromJSON(json),
    "AuditEventEntity": (Map json) => AuditEventEntity.fromJSON(json),
    "AuditEventDetail": (Map json) => AuditEventDetail.fromJSON(json),
    "Basic": (Map json) => Basic.fromJSON(json),
    "Binary": (Map json) => Binary.fromJSON(json),
    "BiologicallyDerivedProduct": (Map json) =>
        BiologicallyDerivedProduct.fromJSON(json),
    "BiologicallyDerivedProductCollection": (Map json) =>
        BiologicallyDerivedProductCollection.fromJSON(json),
    "BiologicallyDerivedProductProcessing": (Map json) =>
        BiologicallyDerivedProductProcessing.fromJSON(json),
    "BiologicallyDerivedProductManipulation": (Map json) =>
        BiologicallyDerivedProductManipulation.fromJSON(json),
    "BiologicallyDerivedProductStorage": (Map json) =>
        BiologicallyDerivedProductStorage.fromJSON(json),
    "BodyStructure": (Map json) => BodyStructure.fromJSON(json),
    "Bundle": (Map json) => Bundle.fromJSON(json),
    "BundleLink": (Map json) => BundleLink.fromJSON(json),
    "BundleEntry": (Map json) => BundleEntry.fromJSON(json),
    "BundleSearch": (Map json) => BundleSearch.fromJSON(json),
    "BundleRequest": (Map json) => BundleRequest.fromJSON(json),
    "BundleResponse": (Map json) => BundleResponse.fromJSON(json),
    "CapabilityStatement": (Map json) => CapabilityStatement.fromJSON(json),
    "CapabilityStatementSoftware": (Map json) =>
        CapabilityStatementSoftware.fromJSON(json),
    "CapabilityStatementImplementation": (Map json) =>
        CapabilityStatementImplementation.fromJSON(json),
    "CapabilityStatementRest": (Map json) =>
        CapabilityStatementRest.fromJSON(json),
    "CapabilityStatementSecurity": (Map json) =>
        CapabilityStatementSecurity.fromJSON(json),
    "CapabilityStatementResource": (Map json) =>
        CapabilityStatementResource.fromJSON(json),
    "CapabilityStatementInteraction": (Map json) =>
        CapabilityStatementInteraction.fromJSON(json),
    "CapabilityStatementSearchParam": (Map json) =>
        CapabilityStatementSearchParam.fromJSON(json),
    "CapabilityStatementOperation": (Map json) =>
        CapabilityStatementOperation.fromJSON(json),
    "CapabilityStatementInteraction1": (Map json) =>
        CapabilityStatementInteraction1.fromJSON(json),
    "CapabilityStatementMessaging": (Map json) =>
        CapabilityStatementMessaging.fromJSON(json),
    "CapabilityStatementEndpoint": (Map json) =>
        CapabilityStatementEndpoint.fromJSON(json),
    "CapabilityStatementSupportedMessage": (Map json) =>
        CapabilityStatementSupportedMessage.fromJSON(json),
    "CapabilityStatementDocument": (Map json) =>
        CapabilityStatementDocument.fromJSON(json),
    "CarePlan": (Map json) => CarePlan.fromJSON(json),
    "CarePlanActivity": (Map json) => CarePlanActivity.fromJSON(json),
    "CarePlanDetail": (Map json) => CarePlanDetail.fromJSON(json),
    "CareTeam": (Map json) => CareTeam.fromJSON(json),
    "CareTeamParticipant": (Map json) => CareTeamParticipant.fromJSON(json),
    "CatalogEntry": (Map json) => CatalogEntry.fromJSON(json),
    "CatalogEntryRelatedEntry": (Map json) =>
        CatalogEntryRelatedEntry.fromJSON(json),
    "ChargeItem": (Map json) => ChargeItem.fromJSON(json),
    "ChargeItemPerformer": (Map json) => ChargeItemPerformer.fromJSON(json),
    "ChargeItemDefinition": (Map json) => ChargeItemDefinition.fromJSON(json),
    "ChargeItemDefinitionApplicability": (Map json) =>
        ChargeItemDefinitionApplicability.fromJSON(json),
    "ChargeItemDefinitionPropertyGroup": (Map json) =>
        ChargeItemDefinitionPropertyGroup.fromJSON(json),
    "ChargeItemDefinitionPriceComponent": (Map json) =>
        ChargeItemDefinitionPriceComponent.fromJSON(json),
    "Claim": (Map json) => Claim.fromJSON(json),
    "ClaimRelated": (Map json) => ClaimRelated.fromJSON(json),
    "ClaimPayee": (Map json) => ClaimPayee.fromJSON(json),
    "ClaimCareTeam": (Map json) => ClaimCareTeam.fromJSON(json),
    "ClaimSupportingInfo": (Map json) => ClaimSupportingInfo.fromJSON(json),
    "ClaimDiagnosis": (Map json) => ClaimDiagnosis.fromJSON(json),
    "ClaimProcedure": (Map json) => ClaimProcedure.fromJSON(json),
    "ClaimInsurance": (Map json) => ClaimInsurance.fromJSON(json),
    "ClaimAccident": (Map json) => ClaimAccident.fromJSON(json),
    "ClaimItem": (Map json) => ClaimItem.fromJSON(json),
    "ClaimDetail": (Map json) => ClaimDetail.fromJSON(json),
    "ClaimSubDetail": (Map json) => ClaimSubDetail.fromJSON(json),
    "ClaimResponse": (Map json) => ClaimResponse.fromJSON(json),
    "ClaimResponseItem": (Map json) => ClaimResponseItem.fromJSON(json),
    "ClaimResponseAdjudication": (Map json) =>
        ClaimResponseAdjudication.fromJSON(json),
    "ClaimResponseDetail": (Map json) => ClaimResponseDetail.fromJSON(json),
    "ClaimResponseSubDetail": (Map json) =>
        ClaimResponseSubDetail.fromJSON(json),
    "ClaimResponseAddItem": (Map json) => ClaimResponseAddItem.fromJSON(json),
    "ClaimResponseDetail1": (Map json) => ClaimResponseDetail1.fromJSON(json),
    "ClaimResponseSubDetail1": (Map json) =>
        ClaimResponseSubDetail1.fromJSON(json),
    "ClaimResponseTotal": (Map json) => ClaimResponseTotal.fromJSON(json),
    "ClaimResponsePayment": (Map json) => ClaimResponsePayment.fromJSON(json),
    "ClaimResponseProcessNote": (Map json) =>
        ClaimResponseProcessNote.fromJSON(json),
    "ClaimResponseInsurance": (Map json) =>
        ClaimResponseInsurance.fromJSON(json),
    "ClaimResponseError": (Map json) => ClaimResponseError.fromJSON(json),
    "ClinicalImpression": (Map json) => ClinicalImpression.fromJSON(json),
    "ClinicalImpressionInvestigation": (Map json) =>
        ClinicalImpressionInvestigation.fromJSON(json),
    "ClinicalImpressionFinding": (Map json) =>
        ClinicalImpressionFinding.fromJSON(json),
    "CodeSystem": (Map json) => CodeSystem.fromJSON(json),
    "CodeSystemFilter": (Map json) => CodeSystemFilter.fromJSON(json),
    "CodeSystemProperty": (Map json) => CodeSystemProperty.fromJSON(json),
    "CodeSystemConcept": (Map json) => CodeSystemConcept.fromJSON(json),
    "CodeSystemDesignation": (Map json) => CodeSystemDesignation.fromJSON(json),
    "CodeSystemProperty1": (Map json) => CodeSystemProperty1.fromJSON(json),
    "Communication": (Map json) => Communication.fromJSON(json),
    "CommunicationPayload": (Map json) => CommunicationPayload.fromJSON(json),
    "CommunicationRequest": (Map json) => CommunicationRequest.fromJSON(json),
    "CommunicationRequestPayload": (Map json) =>
        CommunicationRequestPayload.fromJSON(json),
    "CompartmentDefinition": (Map json) => CompartmentDefinition.fromJSON(json),
    "CompartmentDefinitionResource": (Map json) =>
        CompartmentDefinitionResource.fromJSON(json),
    "Composition": (Map json) => Composition.fromJSON(json),
    "CompositionAttester": (Map json) => CompositionAttester.fromJSON(json),
    "CompositionRelatesTo": (Map json) => CompositionRelatesTo.fromJSON(json),
    "CompositionEvent": (Map json) => CompositionEvent.fromJSON(json),
    "CompositionSection": (Map json) => CompositionSection.fromJSON(json),
    "ConceptMap": (Map json) => ConceptMap.fromJSON(json),
    "ConceptMapGroup": (Map json) => ConceptMapGroup.fromJSON(json),
    "ConceptMapElement": (Map json) => ConceptMapElement.fromJSON(json),
    "ConceptMapTarget": (Map json) => ConceptMapTarget.fromJSON(json),
    "ConceptMapDependsOn": (Map json) => ConceptMapDependsOn.fromJSON(json),
    "ConceptMapUnmapped": (Map json) => ConceptMapUnmapped.fromJSON(json),
    "Condition": (Map json) => Condition.fromJSON(json),
    "ConditionStage": (Map json) => ConditionStage.fromJSON(json),
    "ConditionEvidence": (Map json) => ConditionEvidence.fromJSON(json),
    "Consent": (Map json) => Consent.fromJSON(json),
    "ConsentPolicy": (Map json) => ConsentPolicy.fromJSON(json),
    "ConsentVerification": (Map json) => ConsentVerification.fromJSON(json),
    "ConsentProvision": (Map json) => ConsentProvision.fromJSON(json),
    "ConsentActor": (Map json) => ConsentActor.fromJSON(json),
    "ConsentData": (Map json) => ConsentData.fromJSON(json),
    "Contract": (Map json) => Contract.fromJSON(json),
    "ContractContentDefinition": (Map json) =>
        ContractContentDefinition.fromJSON(json),
    "ContractTerm": (Map json) => ContractTerm.fromJSON(json),
    "ContractSecurityLabel": (Map json) => ContractSecurityLabel.fromJSON(json),
    "ContractOffer": (Map json) => ContractOffer.fromJSON(json),
    "ContractParty": (Map json) => ContractParty.fromJSON(json),
    "ContractAnswer": (Map json) => ContractAnswer.fromJSON(json),
    "ContractAsset": (Map json) => ContractAsset.fromJSON(json),
    "ContractContext": (Map json) => ContractContext.fromJSON(json),
    "ContractValuedItem": (Map json) => ContractValuedItem.fromJSON(json),
    "ContractAction": (Map json) => ContractAction.fromJSON(json),
    "ContractSubject": (Map json) => ContractSubject.fromJSON(json),
    "ContractSigner": (Map json) => ContractSigner.fromJSON(json),
    "ContractFriendly": (Map json) => ContractFriendly.fromJSON(json),
    "ContractLegal": (Map json) => ContractLegal.fromJSON(json),
    "ContractRule": (Map json) => ContractRule.fromJSON(json),
    "Coverage": (Map json) => Coverage.fromJSON(json),
    "CoverageClass": (Map json) => CoverageClass.fromJSON(json),
    "CoverageCostToBeneficiary": (Map json) =>
        CoverageCostToBeneficiary.fromJSON(json),
    "CoverageException": (Map json) => CoverageException.fromJSON(json),
    "CoverageEligibilityRequest": (Map json) =>
        CoverageEligibilityRequest.fromJSON(json),
    "CoverageEligibilityRequestSupportingInfo": (Map json) =>
        CoverageEligibilityRequestSupportingInfo.fromJSON(json),
    "CoverageEligibilityRequestInsurance": (Map json) =>
        CoverageEligibilityRequestInsurance.fromJSON(json),
    "CoverageEligibilityRequestItem": (Map json) =>
        CoverageEligibilityRequestItem.fromJSON(json),
    "CoverageEligibilityRequestDiagnosis": (Map json) =>
        CoverageEligibilityRequestDiagnosis.fromJSON(json),
    "CoverageEligibilityResponse": (Map json) =>
        CoverageEligibilityResponse.fromJSON(json),
    "CoverageEligibilityResponseInsurance": (Map json) =>
        CoverageEligibilityResponseInsurance.fromJSON(json),
    "CoverageEligibilityResponseItem": (Map json) =>
        CoverageEligibilityResponseItem.fromJSON(json),
    "CoverageEligibilityResponseBenefit": (Map json) =>
        CoverageEligibilityResponseBenefit.fromJSON(json),
    "CoverageEligibilityResponseError": (Map json) =>
        CoverageEligibilityResponseError.fromJSON(json),
    "DetectedIssue": (Map json) => DetectedIssue.fromJSON(json),
    "DetectedIssueEvidence": (Map json) => DetectedIssueEvidence.fromJSON(json),
    "DetectedIssueMitigation": (Map json) =>
        DetectedIssueMitigation.fromJSON(json),
    "Device": (Map json) => Device.fromJSON(json),
    "DeviceUdiCarrier": (Map json) => DeviceUdiCarrier.fromJSON(json),
    "DeviceDeviceName": (Map json) => DeviceDeviceName.fromJSON(json),
    "DeviceSpecialization": (Map json) => DeviceSpecialization.fromJSON(json),
    "DeviceVersion": (Map json) => DeviceVersion.fromJSON(json),
    "DeviceProperty": (Map json) => DeviceProperty.fromJSON(json),
    "DeviceDefinition": (Map json) => DeviceDefinition.fromJSON(json),
    "DeviceDefinitionUdiDeviceIdentifier": (Map json) =>
        DeviceDefinitionUdiDeviceIdentifier.fromJSON(json),
    "DeviceDefinitionDeviceName": (Map json) =>
        DeviceDefinitionDeviceName.fromJSON(json),
    "DeviceDefinitionSpecialization": (Map json) =>
        DeviceDefinitionSpecialization.fromJSON(json),
    "DeviceDefinitionCapability": (Map json) =>
        DeviceDefinitionCapability.fromJSON(json),
    "DeviceDefinitionProperty": (Map json) =>
        DeviceDefinitionProperty.fromJSON(json),
    "DeviceDefinitionMaterial": (Map json) =>
        DeviceDefinitionMaterial.fromJSON(json),
    "DeviceMetric": (Map json) => DeviceMetric.fromJSON(json),
    "DeviceMetricCalibration": (Map json) =>
        DeviceMetricCalibration.fromJSON(json),
    "DeviceRequest": (Map json) => DeviceRequest.fromJSON(json),
    "DeviceRequestParameter": (Map json) =>
        DeviceRequestParameter.fromJSON(json),
    "DeviceUseStatement": (Map json) => DeviceUseStatement.fromJSON(json),
    "DiagnosticReport": (Map json) => DiagnosticReport.fromJSON(json),
    "DiagnosticReportMedia": (Map json) => DiagnosticReportMedia.fromJSON(json),
    "DocumentManifest": (Map json) => DocumentManifest.fromJSON(json),
    "DocumentManifestRelated": (Map json) =>
        DocumentManifestRelated.fromJSON(json),
    "DocumentReference": (Map json) => DocumentReference.fromJSON(json),
    "DocumentReferenceRelatesTo": (Map json) =>
        DocumentReferenceRelatesTo.fromJSON(json),
    "DocumentReferenceContent": (Map json) =>
        DocumentReferenceContent.fromJSON(json),
    "DocumentReferenceContext": (Map json) =>
        DocumentReferenceContext.fromJSON(json),
    "EffectEvidenceSynthesis": (Map json) =>
        EffectEvidenceSynthesis.fromJSON(json),
    "EffectEvidenceSynthesisSampleSize": (Map json) =>
        EffectEvidenceSynthesisSampleSize.fromJSON(json),
    "EffectEvidenceSynthesisResultsByExposure": (Map json) =>
        EffectEvidenceSynthesisResultsByExposure.fromJSON(json),
    "EffectEvidenceSynthesisEffectEstimate": (Map json) =>
        EffectEvidenceSynthesisEffectEstimate.fromJSON(json),
    "EffectEvidenceSynthesisPrecisionEstimate": (Map json) =>
        EffectEvidenceSynthesisPrecisionEstimate.fromJSON(json),
    "EffectEvidenceSynthesisCertainty": (Map json) =>
        EffectEvidenceSynthesisCertainty.fromJSON(json),
    "EffectEvidenceSynthesisCertaintySubcomponent": (Map json) =>
        EffectEvidenceSynthesisCertaintySubcomponent.fromJSON(json),
    "Encounter": (Map json) => Encounter.fromJSON(json),
    "EncounterStatusHistory": (Map json) =>
        EncounterStatusHistory.fromJSON(json),
    "EncounterClassHistory": (Map json) => EncounterClassHistory.fromJSON(json),
    "EncounterParticipant": (Map json) => EncounterParticipant.fromJSON(json),
    "EncounterDiagnosis": (Map json) => EncounterDiagnosis.fromJSON(json),
    "EncounterHospitalization": (Map json) =>
        EncounterHospitalization.fromJSON(json),
    "EncounterLocation": (Map json) => EncounterLocation.fromJSON(json),
    "Endpoint": (Map json) => Endpoint.fromJSON(json),
    "EnrollmentRequest": (Map json) => EnrollmentRequest.fromJSON(json),
    "EnrollmentResponse": (Map json) => EnrollmentResponse.fromJSON(json),
    "EpisodeOfCare": (Map json) => EpisodeOfCare.fromJSON(json),
    "EpisodeOfCareStatusHistory": (Map json) =>
        EpisodeOfCareStatusHistory.fromJSON(json),
    "EpisodeOfCareDiagnosis": (Map json) =>
        EpisodeOfCareDiagnosis.fromJSON(json),
    "EventDefinition": (Map json) => EventDefinition.fromJSON(json),
    "Evidence": (Map json) => Evidence.fromJSON(json),
    "EvidenceVariable": (Map json) => EvidenceVariable.fromJSON(json),
    "EvidenceVariableCharacteristic": (Map json) =>
        EvidenceVariableCharacteristic.fromJSON(json),
    "ExampleScenario": (Map json) => ExampleScenario.fromJSON(json),
    "ExampleScenarioActor": (Map json) => ExampleScenarioActor.fromJSON(json),
    "ExampleScenarioInstance": (Map json) =>
        ExampleScenarioInstance.fromJSON(json),
    "ExampleScenarioVersion": (Map json) =>
        ExampleScenarioVersion.fromJSON(json),
    "ExampleScenarioContainedInstance": (Map json) =>
        ExampleScenarioContainedInstance.fromJSON(json),
    "ExampleScenarioProcess": (Map json) =>
        ExampleScenarioProcess.fromJSON(json),
    "ExampleScenarioStep": (Map json) => ExampleScenarioStep.fromJSON(json),
    "ExampleScenarioOperation": (Map json) =>
        ExampleScenarioOperation.fromJSON(json),
    "ExampleScenarioAlternative": (Map json) =>
        ExampleScenarioAlternative.fromJSON(json),
    "ExplanationOfBenefit": (Map json) => ExplanationOfBenefit.fromJSON(json),
    "ExplanationOfBenefitRelated": (Map json) =>
        ExplanationOfBenefitRelated.fromJSON(json),
    "ExplanationOfBenefitPayee": (Map json) =>
        ExplanationOfBenefitPayee.fromJSON(json),
    "ExplanationOfBenefitCareTeam": (Map json) =>
        ExplanationOfBenefitCareTeam.fromJSON(json),
    "ExplanationOfBenefitSupportingInfo": (Map json) =>
        ExplanationOfBenefitSupportingInfo.fromJSON(json),
    "ExplanationOfBenefitDiagnosis": (Map json) =>
        ExplanationOfBenefitDiagnosis.fromJSON(json),
    "ExplanationOfBenefitProcedure": (Map json) =>
        ExplanationOfBenefitProcedure.fromJSON(json),
    "ExplanationOfBenefitInsurance": (Map json) =>
        ExplanationOfBenefitInsurance.fromJSON(json),
    "ExplanationOfBenefitAccident": (Map json) =>
        ExplanationOfBenefitAccident.fromJSON(json),
    "ExplanationOfBenefitItem": (Map json) =>
        ExplanationOfBenefitItem.fromJSON(json),
    "ExplanationOfBenefitAdjudication": (Map json) =>
        ExplanationOfBenefitAdjudication.fromJSON(json),
    "ExplanationOfBenefitDetail": (Map json) =>
        ExplanationOfBenefitDetail.fromJSON(json),
    "ExplanationOfBenefitSubDetail": (Map json) =>
        ExplanationOfBenefitSubDetail.fromJSON(json),
    "ExplanationOfBenefitAddItem": (Map json) =>
        ExplanationOfBenefitAddItem.fromJSON(json),
    "ExplanationOfBenefitDetail1": (Map json) =>
        ExplanationOfBenefitDetail1.fromJSON(json),
    "ExplanationOfBenefitSubDetail1": (Map json) =>
        ExplanationOfBenefitSubDetail1.fromJSON(json),
    "ExplanationOfBenefitTotal": (Map json) =>
        ExplanationOfBenefitTotal.fromJSON(json),
    "ExplanationOfBenefitPayment": (Map json) =>
        ExplanationOfBenefitPayment.fromJSON(json),
    "ExplanationOfBenefitProcessNote": (Map json) =>
        ExplanationOfBenefitProcessNote.fromJSON(json),
    "ExplanationOfBenefitBenefitBalance": (Map json) =>
        ExplanationOfBenefitBenefitBalance.fromJSON(json),
    "ExplanationOfBenefitFinancial": (Map json) =>
        ExplanationOfBenefitFinancial.fromJSON(json),
    "FamilyMemberHistory": (Map json) => FamilyMemberHistory.fromJSON(json),
    "FamilyMemberHistoryCondition": (Map json) =>
        FamilyMemberHistoryCondition.fromJSON(json),
    "Flag": (Map json) => Flag.fromJSON(json),
    "Goal": (Map json) => Goal.fromJSON(json),
    "GoalTarget": (Map json) => GoalTarget.fromJSON(json),
    "GraphDefinition": (Map json) => GraphDefinition.fromJSON(json),
    "GraphDefinitionLink": (Map json) => GraphDefinitionLink.fromJSON(json),
    "GraphDefinitionTarget": (Map json) => GraphDefinitionTarget.fromJSON(json),
    "GraphDefinitionCompartment": (Map json) =>
        GraphDefinitionCompartment.fromJSON(json),
    "Group": (Map json) => Group.fromJSON(json),
    "GroupCharacteristic": (Map json) => GroupCharacteristic.fromJSON(json),
    "GroupMember": (Map json) => GroupMember.fromJSON(json),
    "GuidanceResponse": (Map json) => GuidanceResponse.fromJSON(json),
    "HealthcareService": (Map json) => HealthcareService.fromJSON(json),
    "HealthcareServiceEligibility": (Map json) =>
        HealthcareServiceEligibility.fromJSON(json),
    "HealthcareServiceAvailableTime": (Map json) =>
        HealthcareServiceAvailableTime.fromJSON(json),
    "HealthcareServiceNotAvailable": (Map json) =>
        HealthcareServiceNotAvailable.fromJSON(json),
    "ImagingStudy": (Map json) => ImagingStudy.fromJSON(json),
    "ImagingStudySeries": (Map json) => ImagingStudySeries.fromJSON(json),
    "ImagingStudyPerformer": (Map json) => ImagingStudyPerformer.fromJSON(json),
    "ImagingStudyInstance": (Map json) => ImagingStudyInstance.fromJSON(json),
    "Immunization": (Map json) => Immunization.fromJSON(json),
    "ImmunizationPerformer": (Map json) => ImmunizationPerformer.fromJSON(json),
    "ImmunizationEducation": (Map json) => ImmunizationEducation.fromJSON(json),
    "ImmunizationReaction": (Map json) => ImmunizationReaction.fromJSON(json),
    "ImmunizationProtocolApplied": (Map json) =>
        ImmunizationProtocolApplied.fromJSON(json),
    "ImmunizationEvaluation": (Map json) =>
        ImmunizationEvaluation.fromJSON(json),
    "ImmunizationRecommendation": (Map json) =>
        ImmunizationRecommendation.fromJSON(json),
    "ImmunizationRecommendationRecommendation": (Map json) =>
        ImmunizationRecommendationRecommendation.fromJSON(json),
    "ImmunizationRecommendationDateCriterion": (Map json) =>
        ImmunizationRecommendationDateCriterion.fromJSON(json),
    "ImplementationGuide": (Map json) => ImplementationGuide.fromJSON(json),
    "ImplementationGuideDependsOn": (Map json) =>
        ImplementationGuideDependsOn.fromJSON(json),
    "ImplementationGuideGlobal": (Map json) =>
        ImplementationGuideGlobal.fromJSON(json),
    "ImplementationGuideDefinition": (Map json) =>
        ImplementationGuideDefinition.fromJSON(json),
    "ImplementationGuideGrouping": (Map json) =>
        ImplementationGuideGrouping.fromJSON(json),
    "ImplementationGuideResource": (Map json) =>
        ImplementationGuideResource.fromJSON(json),
    "ImplementationGuidePage": (Map json) =>
        ImplementationGuidePage.fromJSON(json),
    "ImplementationGuideParameter": (Map json) =>
        ImplementationGuideParameter.fromJSON(json),
    "ImplementationGuideTemplate": (Map json) =>
        ImplementationGuideTemplate.fromJSON(json),
    "ImplementationGuideManifest": (Map json) =>
        ImplementationGuideManifest.fromJSON(json),
    "ImplementationGuideResource1": (Map json) =>
        ImplementationGuideResource1.fromJSON(json),
    "ImplementationGuidePage1": (Map json) =>
        ImplementationGuidePage1.fromJSON(json),
    "InsurancePlan": (Map json) => InsurancePlan.fromJSON(json),
    "InsurancePlanContact": (Map json) => InsurancePlanContact.fromJSON(json),
    "InsurancePlanCoverage": (Map json) => InsurancePlanCoverage.fromJSON(json),
    "InsurancePlanBenefit": (Map json) => InsurancePlanBenefit.fromJSON(json),
    "InsurancePlanLimit": (Map json) => InsurancePlanLimit.fromJSON(json),
    "InsurancePlanPlan": (Map json) => InsurancePlanPlan.fromJSON(json),
    "InsurancePlanGeneralCost": (Map json) =>
        InsurancePlanGeneralCost.fromJSON(json),
    "InsurancePlanSpecificCost": (Map json) =>
        InsurancePlanSpecificCost.fromJSON(json),
    "InsurancePlanBenefit1": (Map json) => InsurancePlanBenefit1.fromJSON(json),
    "InsurancePlanCost": (Map json) => InsurancePlanCost.fromJSON(json),
    "Invoice": (Map json) => Invoice.fromJSON(json),
    "InvoiceParticipant": (Map json) => InvoiceParticipant.fromJSON(json),
    "InvoiceLineItem": (Map json) => InvoiceLineItem.fromJSON(json),
    "InvoicePriceComponent": (Map json) => InvoicePriceComponent.fromJSON(json),
    "Library": (Map json) => Library.fromJSON(json),
    "Linkage": (Map json) => Linkage.fromJSON(json),
    "LinkageItem": (Map json) => LinkageItem.fromJSON(json),
    "FHIRList": (Map json) => FHIRList.fromJSON(json),
    "ListEntry": (Map json) => ListEntry.fromJSON(json),
    "Location": (Map json) => Location.fromJSON(json),
    "LocationPosition": (Map json) => LocationPosition.fromJSON(json),
    "LocationHoursOfOperation": (Map json) =>
        LocationHoursOfOperation.fromJSON(json),
    "Measure": (Map json) => Measure.fromJSON(json),
    "MeasureGroup": (Map json) => MeasureGroup.fromJSON(json),
    "MeasurePopulation": (Map json) => MeasurePopulation.fromJSON(json),
    "MeasureStratifier": (Map json) => MeasureStratifier.fromJSON(json),
    "MeasureComponent": (Map json) => MeasureComponent.fromJSON(json),
    "MeasureSupplementalData": (Map json) =>
        MeasureSupplementalData.fromJSON(json),
    "MeasureReport": (Map json) => MeasureReport.fromJSON(json),
    "MeasureReportGroup": (Map json) => MeasureReportGroup.fromJSON(json),
    "MeasureReportPopulation": (Map json) =>
        MeasureReportPopulation.fromJSON(json),
    "MeasureReportStratifier": (Map json) =>
        MeasureReportStratifier.fromJSON(json),
    "MeasureReportStratum": (Map json) => MeasureReportStratum.fromJSON(json),
    "MeasureReportComponent": (Map json) =>
        MeasureReportComponent.fromJSON(json),
    "MeasureReportPopulation1": (Map json) =>
        MeasureReportPopulation1.fromJSON(json),
    "Media": (Map json) => Media.fromJSON(json),
    "Medication": (Map json) => Medication.fromJSON(json),
    "MedicationIngredient": (Map json) => MedicationIngredient.fromJSON(json),
    "MedicationBatch": (Map json) => MedicationBatch.fromJSON(json),
    "MedicationAdministration": (Map json) =>
        MedicationAdministration.fromJSON(json),
    "MedicationAdministrationPerformer": (Map json) =>
        MedicationAdministrationPerformer.fromJSON(json),
    "MedicationAdministrationDosage": (Map json) =>
        MedicationAdministrationDosage.fromJSON(json),
    "MedicationDispense": (Map json) => MedicationDispense.fromJSON(json),
    "MedicationDispensePerformer": (Map json) =>
        MedicationDispensePerformer.fromJSON(json),
    "MedicationDispenseSubstitution": (Map json) =>
        MedicationDispenseSubstitution.fromJSON(json),
    "MedicationKnowledge": (Map json) => MedicationKnowledge.fromJSON(json),
    "MedicationKnowledgeRelatedMedicationKnowledge": (Map json) =>
        MedicationKnowledgeRelatedMedicationKnowledge.fromJSON(json),
    "MedicationKnowledgeMonograph": (Map json) =>
        MedicationKnowledgeMonograph.fromJSON(json),
    "MedicationKnowledgeIngredient": (Map json) =>
        MedicationKnowledgeIngredient.fromJSON(json),
    "MedicationKnowledgeCost": (Map json) =>
        MedicationKnowledgeCost.fromJSON(json),
    "MedicationKnowledgeMonitoringProgram": (Map json) =>
        MedicationKnowledgeMonitoringProgram.fromJSON(json),
    "MedicationKnowledgeAdministrationGuidelines": (Map json) =>
        MedicationKnowledgeAdministrationGuidelines.fromJSON(json),
    "MedicationKnowledgeDosage": (Map json) =>
        MedicationKnowledgeDosage.fromJSON(json),
    "MedicationKnowledgePatientCharacteristics": (Map json) =>
        MedicationKnowledgePatientCharacteristics.fromJSON(json),
    "MedicationKnowledgeMedicineClassification": (Map json) =>
        MedicationKnowledgeMedicineClassification.fromJSON(json),
    "MedicationKnowledgePackaging": (Map json) =>
        MedicationKnowledgePackaging.fromJSON(json),
    "MedicationKnowledgeDrugCharacteristic": (Map json) =>
        MedicationKnowledgeDrugCharacteristic.fromJSON(json),
    "MedicationKnowledgeRegulatory": (Map json) =>
        MedicationKnowledgeRegulatory.fromJSON(json),
    "MedicationKnowledgeSubstitution": (Map json) =>
        MedicationKnowledgeSubstitution.fromJSON(json),
    "MedicationKnowledgeSchedule": (Map json) =>
        MedicationKnowledgeSchedule.fromJSON(json),
    "MedicationKnowledgeMaxDispense": (Map json) =>
        MedicationKnowledgeMaxDispense.fromJSON(json),
    "MedicationKnowledgeKinetics": (Map json) =>
        MedicationKnowledgeKinetics.fromJSON(json),
    "MedicationRequest": (Map json) => MedicationRequest.fromJSON(json),
    "MedicationRequestDispenseRequest": (Map json) =>
        MedicationRequestDispenseRequest.fromJSON(json),
    "MedicationRequestInitialFill": (Map json) =>
        MedicationRequestInitialFill.fromJSON(json),
    "MedicationRequestSubstitution": (Map json) =>
        MedicationRequestSubstitution.fromJSON(json),
    "MedicationStatement": (Map json) => MedicationStatement.fromJSON(json),
    "MedicinalProduct": (Map json) => MedicinalProduct.fromJSON(json),
    "MedicinalProductName": (Map json) => MedicinalProductName.fromJSON(json),
    "MedicinalProductNamePart": (Map json) =>
        MedicinalProductNamePart.fromJSON(json),
    "MedicinalProductCountryLanguage": (Map json) =>
        MedicinalProductCountryLanguage.fromJSON(json),
    "MedicinalProductManufacturingBusinessOperation": (Map json) =>
        MedicinalProductManufacturingBusinessOperation.fromJSON(json),
    "MedicinalProductSpecialDesignation": (Map json) =>
        MedicinalProductSpecialDesignation.fromJSON(json),
    "MedicinalProductAuthorization": (Map json) =>
        MedicinalProductAuthorization.fromJSON(json),
    "MedicinalProductAuthorizationJurisdictionalAuthorization": (Map json) =>
        MedicinalProductAuthorizationJurisdictionalAuthorization.fromJSON(json),
    "MedicinalProductAuthorizationProcedure": (Map json) =>
        MedicinalProductAuthorizationProcedure.fromJSON(json),
    "MedicinalProductContraindication": (Map json) =>
        MedicinalProductContraindication.fromJSON(json),
    "MedicinalProductContraindicationOtherTherapy": (Map json) =>
        MedicinalProductContraindicationOtherTherapy.fromJSON(json),
    "MedicinalProductIndication": (Map json) =>
        MedicinalProductIndication.fromJSON(json),
    "MedicinalProductIndicationOtherTherapy": (Map json) =>
        MedicinalProductIndicationOtherTherapy.fromJSON(json),
    "MedicinalProductIngredient": (Map json) =>
        MedicinalProductIngredient.fromJSON(json),
    "MedicinalProductIngredientSpecifiedSubstance": (Map json) =>
        MedicinalProductIngredientSpecifiedSubstance.fromJSON(json),
    "MedicinalProductIngredientStrength": (Map json) =>
        MedicinalProductIngredientStrength.fromJSON(json),
    "MedicinalProductIngredientReferenceStrength": (Map json) =>
        MedicinalProductIngredientReferenceStrength.fromJSON(json),
    "MedicinalProductIngredientSubstance": (Map json) =>
        MedicinalProductIngredientSubstance.fromJSON(json),
    "MedicinalProductInteraction": (Map json) =>
        MedicinalProductInteraction.fromJSON(json),
    "MedicinalProductInteractionInteractant": (Map json) =>
        MedicinalProductInteractionInteractant.fromJSON(json),
    "MedicinalProductManufactured": (Map json) =>
        MedicinalProductManufactured.fromJSON(json),
    "MedicinalProductPackaged": (Map json) =>
        MedicinalProductPackaged.fromJSON(json),
    "MedicinalProductPackagedBatchIdentifier": (Map json) =>
        MedicinalProductPackagedBatchIdentifier.fromJSON(json),
    "MedicinalProductPackagedPackageItem": (Map json) =>
        MedicinalProductPackagedPackageItem.fromJSON(json),
    "MedicinalProductPharmaceutical": (Map json) =>
        MedicinalProductPharmaceutical.fromJSON(json),
    "MedicinalProductPharmaceuticalCharacteristics": (Map json) =>
        MedicinalProductPharmaceuticalCharacteristics.fromJSON(json),
    "MedicinalProductPharmaceuticalRouteOfAdministration": (Map json) =>
        MedicinalProductPharmaceuticalRouteOfAdministration.fromJSON(json),
    "MedicinalProductPharmaceuticalTargetSpecies": (Map json) =>
        MedicinalProductPharmaceuticalTargetSpecies.fromJSON(json),
    "MedicinalProductPharmaceuticalWithdrawalPeriod": (Map json) =>
        MedicinalProductPharmaceuticalWithdrawalPeriod.fromJSON(json),
    "MedicinalProductUndesirableEffect": (Map json) =>
        MedicinalProductUndesirableEffect.fromJSON(json),
    "MessageDefinition": (Map json) => MessageDefinition.fromJSON(json),
    "MessageDefinitionFocus": (Map json) =>
        MessageDefinitionFocus.fromJSON(json),
    "MessageDefinitionAllowedResponse": (Map json) =>
        MessageDefinitionAllowedResponse.fromJSON(json),
    "MessageHeader": (Map json) => MessageHeader.fromJSON(json),
    "MessageHeaderDestination": (Map json) =>
        MessageHeaderDestination.fromJSON(json),
    "MessageHeaderSource": (Map json) => MessageHeaderSource.fromJSON(json),
    "MessageHeaderResponse": (Map json) => MessageHeaderResponse.fromJSON(json),
    "MolecularSequence": (Map json) => MolecularSequence.fromJSON(json),
    "MolecularSequenceReferenceSeq": (Map json) =>
        MolecularSequenceReferenceSeq.fromJSON(json),
    "MolecularSequenceVariant": (Map json) =>
        MolecularSequenceVariant.fromJSON(json),
    "MolecularSequenceQuality": (Map json) =>
        MolecularSequenceQuality.fromJSON(json),
    "MolecularSequenceRoc": (Map json) => MolecularSequenceRoc.fromJSON(json),
    "MolecularSequenceRepository": (Map json) =>
        MolecularSequenceRepository.fromJSON(json),
    "MolecularSequenceStructureVariant": (Map json) =>
        MolecularSequenceStructureVariant.fromJSON(json),
    "MolecularSequenceOuter": (Map json) =>
        MolecularSequenceOuter.fromJSON(json),
    "MolecularSequenceInner": (Map json) =>
        MolecularSequenceInner.fromJSON(json),
    "NamingSystem": (Map json) => NamingSystem.fromJSON(json),
    "NamingSystemUniqueId": (Map json) => NamingSystemUniqueId.fromJSON(json),
    "NutritionOrder": (Map json) => NutritionOrder.fromJSON(json),
    "NutritionOrderOralDiet": (Map json) =>
        NutritionOrderOralDiet.fromJSON(json),
    "NutritionOrderNutrient": (Map json) =>
        NutritionOrderNutrient.fromJSON(json),
    "NutritionOrderTexture": (Map json) => NutritionOrderTexture.fromJSON(json),
    "NutritionOrderSupplement": (Map json) =>
        NutritionOrderSupplement.fromJSON(json),
    "NutritionOrderEnteralFormula": (Map json) =>
        NutritionOrderEnteralFormula.fromJSON(json),
    "NutritionOrderAdministration": (Map json) =>
        NutritionOrderAdministration.fromJSON(json),
    "Observation": (Map json) => Observation.fromJSON(json),
    "ObservationReferenceRange": (Map json) =>
        ObservationReferenceRange.fromJSON(json),
    "ObservationComponent": (Map json) => ObservationComponent.fromJSON(json),
    "ObservationDefinition": (Map json) => ObservationDefinition.fromJSON(json),
    "ObservationDefinitionQuantitativeDetails": (Map json) =>
        ObservationDefinitionQuantitativeDetails.fromJSON(json),
    "ObservationDefinitionQualifiedInterval": (Map json) =>
        ObservationDefinitionQualifiedInterval.fromJSON(json),
    "OperationDefinition": (Map json) => OperationDefinition.fromJSON(json),
    "OperationDefinitionParameter": (Map json) =>
        OperationDefinitionParameter.fromJSON(json),
    "OperationDefinitionBinding": (Map json) =>
        OperationDefinitionBinding.fromJSON(json),
    "OperationDefinitionReferencedFrom": (Map json) =>
        OperationDefinitionReferencedFrom.fromJSON(json),
    "OperationDefinitionOverload": (Map json) =>
        OperationDefinitionOverload.fromJSON(json),
    "OperationOutcome": (Map json) => OperationOutcome.fromJSON(json),
    "OperationOutcomeIssue": (Map json) => OperationOutcomeIssue.fromJSON(json),
    "Organization": (Map json) => Organization.fromJSON(json),
    "OrganizationContact": (Map json) => OrganizationContact.fromJSON(json),
    "OrganizationAffiliation": (Map json) =>
        OrganizationAffiliation.fromJSON(json),
    "Parameters": (Map json) => Parameters.fromJSON(json),
    "ParametersParameter": (Map json) => ParametersParameter.fromJSON(json),
    "Patient": (Map json) => Patient.fromJSON(json),
    "PatientContact": (Map json) => PatientContact.fromJSON(json),
    "PatientCommunication": (Map json) => PatientCommunication.fromJSON(json),
    "PatientLink": (Map json) => PatientLink.fromJSON(json),
    "PaymentNotice": (Map json) => PaymentNotice.fromJSON(json),
    "PaymentReconciliation": (Map json) => PaymentReconciliation.fromJSON(json),
    "PaymentReconciliationDetail": (Map json) =>
        PaymentReconciliationDetail.fromJSON(json),
    "PaymentReconciliationProcessNote": (Map json) =>
        PaymentReconciliationProcessNote.fromJSON(json),
    "Person": (Map json) => Person.fromJSON(json),
    "PersonLink": (Map json) => PersonLink.fromJSON(json),
    "PlanDefinition": (Map json) => PlanDefinition.fromJSON(json),
    "PlanDefinitionGoal": (Map json) => PlanDefinitionGoal.fromJSON(json),
    "PlanDefinitionTarget": (Map json) => PlanDefinitionTarget.fromJSON(json),
    "PlanDefinitionAction": (Map json) => PlanDefinitionAction.fromJSON(json),
    "PlanDefinitionCondition": (Map json) =>
        PlanDefinitionCondition.fromJSON(json),
    "PlanDefinitionRelatedAction": (Map json) =>
        PlanDefinitionRelatedAction.fromJSON(json),
    "PlanDefinitionParticipant": (Map json) =>
        PlanDefinitionParticipant.fromJSON(json),
    "PlanDefinitionDynamicValue": (Map json) =>
        PlanDefinitionDynamicValue.fromJSON(json),
    "Practitioner": (Map json) => Practitioner.fromJSON(json),
    "PractitionerQualification": (Map json) =>
        PractitionerQualification.fromJSON(json),
    "PractitionerRole": (Map json) => PractitionerRole.fromJSON(json),
    "PractitionerRoleAvailableTime": (Map json) =>
        PractitionerRoleAvailableTime.fromJSON(json),
    "PractitionerRoleNotAvailable": (Map json) =>
        PractitionerRoleNotAvailable.fromJSON(json),
    "Procedure": (Map json) => Procedure.fromJSON(json),
    "ProcedurePerformer": (Map json) => ProcedurePerformer.fromJSON(json),
    "ProcedureFocalDevice": (Map json) => ProcedureFocalDevice.fromJSON(json),
    "Provenance": (Map json) => Provenance.fromJSON(json),
    "ProvenanceAgent": (Map json) => ProvenanceAgent.fromJSON(json),
    "ProvenanceEntity": (Map json) => ProvenanceEntity.fromJSON(json),
    "Questionnaire": (Map json) => Questionnaire.fromJSON(json),
    "QuestionnaireItem": (Map json) => QuestionnaireItem.fromJSON(json),
    "QuestionnaireEnableWhen": (Map json) =>
        QuestionnaireEnableWhen.fromJSON(json),
    "QuestionnaireAnswerOption": (Map json) =>
        QuestionnaireAnswerOption.fromJSON(json),
    "QuestionnaireInitial": (Map json) => QuestionnaireInitial.fromJSON(json),
    "QuestionnaireResponse": (Map json) => QuestionnaireResponse.fromJSON(json),
    "QuestionnaireResponseItem": (Map json) =>
        QuestionnaireResponseItem.fromJSON(json),
    "QuestionnaireResponseAnswer": (Map json) =>
        QuestionnaireResponseAnswer.fromJSON(json),
    "RelatedPerson": (Map json) => RelatedPerson.fromJSON(json),
    "RelatedPersonCommunication": (Map json) =>
        RelatedPersonCommunication.fromJSON(json),
    "RequestGroup": (Map json) => RequestGroup.fromJSON(json),
    "RequestGroupAction": (Map json) => RequestGroupAction.fromJSON(json),
    "RequestGroupCondition": (Map json) => RequestGroupCondition.fromJSON(json),
    "RequestGroupRelatedAction": (Map json) =>
        RequestGroupRelatedAction.fromJSON(json),
    "ResearchDefinition": (Map json) => ResearchDefinition.fromJSON(json),
    "ResearchElementDefinition": (Map json) =>
        ResearchElementDefinition.fromJSON(json),
    "ResearchElementDefinitionCharacteristic": (Map json) =>
        ResearchElementDefinitionCharacteristic.fromJSON(json),
    "ResearchStudy": (Map json) => ResearchStudy.fromJSON(json),
    "ResearchStudyArm": (Map json) => ResearchStudyArm.fromJSON(json),
    "ResearchStudyObjective": (Map json) =>
        ResearchStudyObjective.fromJSON(json),
    "ResearchSubject": (Map json) => ResearchSubject.fromJSON(json),
    "RiskAssessment": (Map json) => RiskAssessment.fromJSON(json),
    "RiskAssessmentPrediction": (Map json) =>
        RiskAssessmentPrediction.fromJSON(json),
    "RiskEvidenceSynthesis": (Map json) => RiskEvidenceSynthesis.fromJSON(json),
    "RiskEvidenceSynthesisSampleSize": (Map json) =>
        RiskEvidenceSynthesisSampleSize.fromJSON(json),
    "RiskEvidenceSynthesisRiskEstimate": (Map json) =>
        RiskEvidenceSynthesisRiskEstimate.fromJSON(json),
    "RiskEvidenceSynthesisPrecisionEstimate": (Map json) =>
        RiskEvidenceSynthesisPrecisionEstimate.fromJSON(json),
    "RiskEvidenceSynthesisCertainty": (Map json) =>
        RiskEvidenceSynthesisCertainty.fromJSON(json),
    "RiskEvidenceSynthesisCertaintySubcomponent": (Map json) =>
        RiskEvidenceSynthesisCertaintySubcomponent.fromJSON(json),
    "Schedule": (Map json) => Schedule.fromJSON(json),
    "SearchParameter": (Map json) => SearchParameter.fromJSON(json),
    "SearchParameterComponent": (Map json) =>
        SearchParameterComponent.fromJSON(json),
    "ServiceRequest": (Map json) => ServiceRequest.fromJSON(json),
    "Slot": (Map json) => Slot.fromJSON(json),
    "Specimen": (Map json) => Specimen.fromJSON(json),
    "SpecimenCollection": (Map json) => SpecimenCollection.fromJSON(json),
    "SpecimenProcessing": (Map json) => SpecimenProcessing.fromJSON(json),
    "SpecimenContainer": (Map json) => SpecimenContainer.fromJSON(json),
    "SpecimenDefinition": (Map json) => SpecimenDefinition.fromJSON(json),
    "SpecimenDefinitionTypeTested": (Map json) =>
        SpecimenDefinitionTypeTested.fromJSON(json),
    "SpecimenDefinitionContainer": (Map json) =>
        SpecimenDefinitionContainer.fromJSON(json),
    "SpecimenDefinitionAdditive": (Map json) =>
        SpecimenDefinitionAdditive.fromJSON(json),
    "SpecimenDefinitionHandling": (Map json) =>
        SpecimenDefinitionHandling.fromJSON(json),
    "StructureDefinition": (Map json) => StructureDefinition.fromJSON(json),
    "StructureDefinitionMapping": (Map json) =>
        StructureDefinitionMapping.fromJSON(json),
    "StructureDefinitionContext": (Map json) =>
        StructureDefinitionContext.fromJSON(json),
    "StructureDefinitionSnapshot": (Map json) =>
        StructureDefinitionSnapshot.fromJSON(json),
    "StructureDefinitionDifferential": (Map json) =>
        StructureDefinitionDifferential.fromJSON(json),
    "StructureMap": (Map json) => StructureMap.fromJSON(json),
    "StructureMapStructure": (Map json) => StructureMapStructure.fromJSON(json),
    "StructureMapGroup": (Map json) => StructureMapGroup.fromJSON(json),
    "StructureMapInput": (Map json) => StructureMapInput.fromJSON(json),
    "StructureMapRule": (Map json) => StructureMapRule.fromJSON(json),
    "StructureMapSource": (Map json) => StructureMapSource.fromJSON(json),
    "StructureMapTarget": (Map json) => StructureMapTarget.fromJSON(json),
    "StructureMapParameter": (Map json) => StructureMapParameter.fromJSON(json),
    "StructureMapDependent": (Map json) => StructureMapDependent.fromJSON(json),
    "Subscription": (Map json) => Subscription.fromJSON(json),
    "SubscriptionChannel": (Map json) => SubscriptionChannel.fromJSON(json),
    "Substance": (Map json) => Substance.fromJSON(json),
    "SubstanceInstance": (Map json) => SubstanceInstance.fromJSON(json),
    "SubstanceIngredient": (Map json) => SubstanceIngredient.fromJSON(json),
    "SubstanceNucleicAcid": (Map json) => SubstanceNucleicAcid.fromJSON(json),
    "SubstanceNucleicAcidSubunit": (Map json) =>
        SubstanceNucleicAcidSubunit.fromJSON(json),
    "SubstanceNucleicAcidLinkage": (Map json) =>
        SubstanceNucleicAcidLinkage.fromJSON(json),
    "SubstanceNucleicAcidSugar": (Map json) =>
        SubstanceNucleicAcidSugar.fromJSON(json),
    "SubstancePolymer": (Map json) => SubstancePolymer.fromJSON(json),
    "SubstancePolymerMonomerSet": (Map json) =>
        SubstancePolymerMonomerSet.fromJSON(json),
    "SubstancePolymerStartingMaterial": (Map json) =>
        SubstancePolymerStartingMaterial.fromJSON(json),
    "SubstancePolymerRepeat": (Map json) =>
        SubstancePolymerRepeat.fromJSON(json),
    "SubstancePolymerRepeatUnit": (Map json) =>
        SubstancePolymerRepeatUnit.fromJSON(json),
    "SubstancePolymerDegreeOfPolymerisation": (Map json) =>
        SubstancePolymerDegreeOfPolymerisation.fromJSON(json),
    "SubstancePolymerStructuralRepresentation": (Map json) =>
        SubstancePolymerStructuralRepresentation.fromJSON(json),
    "SubstanceProtein": (Map json) => SubstanceProtein.fromJSON(json),
    "SubstanceProteinSubunit": (Map json) =>
        SubstanceProteinSubunit.fromJSON(json),
    "SubstanceReferenceInformation": (Map json) =>
        SubstanceReferenceInformation.fromJSON(json),
    "SubstanceReferenceInformationGene": (Map json) =>
        SubstanceReferenceInformationGene.fromJSON(json),
    "SubstanceReferenceInformationGeneElement": (Map json) =>
        SubstanceReferenceInformationGeneElement.fromJSON(json),
    "SubstanceReferenceInformationClassification": (Map json) =>
        SubstanceReferenceInformationClassification.fromJSON(json),
    "SubstanceReferenceInformationTarget": (Map json) =>
        SubstanceReferenceInformationTarget.fromJSON(json),
    "SubstanceSourceMaterial": (Map json) =>
        SubstanceSourceMaterial.fromJSON(json),
    "SubstanceSourceMaterialFractionDescription": (Map json) =>
        SubstanceSourceMaterialFractionDescription.fromJSON(json),
    "SubstanceSourceMaterialOrganism": (Map json) =>
        SubstanceSourceMaterialOrganism.fromJSON(json),
    "SubstanceSourceMaterialAuthor": (Map json) =>
        SubstanceSourceMaterialAuthor.fromJSON(json),
    "SubstanceSourceMaterialHybrid": (Map json) =>
        SubstanceSourceMaterialHybrid.fromJSON(json),
    "SubstanceSourceMaterialOrganismGeneral": (Map json) =>
        SubstanceSourceMaterialOrganismGeneral.fromJSON(json),
    "SubstanceSourceMaterialPartDescription": (Map json) =>
        SubstanceSourceMaterialPartDescription.fromJSON(json),
    "SubstanceSpecification": (Map json) =>
        SubstanceSpecification.fromJSON(json),
    "SubstanceSpecificationMoiety": (Map json) =>
        SubstanceSpecificationMoiety.fromJSON(json),
    "SubstanceSpecificationProperty": (Map json) =>
        SubstanceSpecificationProperty.fromJSON(json),
    "SubstanceSpecificationStructure": (Map json) =>
        SubstanceSpecificationStructure.fromJSON(json),
    "SubstanceSpecificationIsotope": (Map json) =>
        SubstanceSpecificationIsotope.fromJSON(json),
    "SubstanceSpecificationMolecularWeight": (Map json) =>
        SubstanceSpecificationMolecularWeight.fromJSON(json),
    "SubstanceSpecificationRepresentation": (Map json) =>
        SubstanceSpecificationRepresentation.fromJSON(json),
    "SubstanceSpecificationCode": (Map json) =>
        SubstanceSpecificationCode.fromJSON(json),
    "SubstanceSpecificationName": (Map json) =>
        SubstanceSpecificationName.fromJSON(json),
    "SubstanceSpecificationOfficial": (Map json) =>
        SubstanceSpecificationOfficial.fromJSON(json),
    "SubstanceSpecificationRelationship": (Map json) =>
        SubstanceSpecificationRelationship.fromJSON(json),
    "SupplyDelivery": (Map json) => SupplyDelivery.fromJSON(json),
    "SupplyDeliverySuppliedItem": (Map json) =>
        SupplyDeliverySuppliedItem.fromJSON(json),
    "SupplyRequest": (Map json) => SupplyRequest.fromJSON(json),
    "SupplyRequestParameter": (Map json) =>
        SupplyRequestParameter.fromJSON(json),
    "Task": (Map json) => Task.fromJSON(json),
    "TaskRestriction": (Map json) => TaskRestriction.fromJSON(json),
    "TaskInput": (Map json) => TaskInput.fromJSON(json),
    "TaskOutput": (Map json) => TaskOutput.fromJSON(json),
    "TerminologyCapabilities": (Map json) =>
        TerminologyCapabilities.fromJSON(json),
    "TerminologyCapabilitiesSoftware": (Map json) =>
        TerminologyCapabilitiesSoftware.fromJSON(json),
    "TerminologyCapabilitiesImplementation": (Map json) =>
        TerminologyCapabilitiesImplementation.fromJSON(json),
    "TerminologyCapabilitiesCodeSystem": (Map json) =>
        TerminologyCapabilitiesCodeSystem.fromJSON(json),
    "TerminologyCapabilitiesVersion": (Map json) =>
        TerminologyCapabilitiesVersion.fromJSON(json),
    "TerminologyCapabilitiesFilter": (Map json) =>
        TerminologyCapabilitiesFilter.fromJSON(json),
    "TerminologyCapabilitiesExpansion": (Map json) =>
        TerminologyCapabilitiesExpansion.fromJSON(json),
    "TerminologyCapabilitiesParameter": (Map json) =>
        TerminologyCapabilitiesParameter.fromJSON(json),
    "TerminologyCapabilitiesValidateCode": (Map json) =>
        TerminologyCapabilitiesValidateCode.fromJSON(json),
    "TerminologyCapabilitiesTranslation": (Map json) =>
        TerminologyCapabilitiesTranslation.fromJSON(json),
    "TerminologyCapabilitiesClosure": (Map json) =>
        TerminologyCapabilitiesClosure.fromJSON(json),
    "TestReport": (Map json) => TestReport.fromJSON(json),
    "TestReportParticipant": (Map json) => TestReportParticipant.fromJSON(json),
    "TestReportSetup": (Map json) => TestReportSetup.fromJSON(json),
    "TestReportAction": (Map json) => TestReportAction.fromJSON(json),
    "TestReportOperation": (Map json) => TestReportOperation.fromJSON(json),
    "TestReportAssert": (Map json) => TestReportAssert.fromJSON(json),
    "TestReportTest": (Map json) => TestReportTest.fromJSON(json),
    "TestReportAction1": (Map json) => TestReportAction1.fromJSON(json),
    "TestReportTeardown": (Map json) => TestReportTeardown.fromJSON(json),
    "TestReportAction2": (Map json) => TestReportAction2.fromJSON(json),
    "TestScript": (Map json) => TestScript.fromJSON(json),
    "TestScriptOrigin": (Map json) => TestScriptOrigin.fromJSON(json),
    "TestScriptDestination": (Map json) => TestScriptDestination.fromJSON(json),
    "TestScriptMetadata": (Map json) => TestScriptMetadata.fromJSON(json),
    "TestScriptLink": (Map json) => TestScriptLink.fromJSON(json),
    "TestScriptCapability": (Map json) => TestScriptCapability.fromJSON(json),
    "TestScriptFixture": (Map json) => TestScriptFixture.fromJSON(json),
    "TestScriptVariable": (Map json) => TestScriptVariable.fromJSON(json),
    "TestScriptSetup": (Map json) => TestScriptSetup.fromJSON(json),
    "TestScriptAction": (Map json) => TestScriptAction.fromJSON(json),
    "TestScriptOperation": (Map json) => TestScriptOperation.fromJSON(json),
    "TestScriptRequestHeader": (Map json) =>
        TestScriptRequestHeader.fromJSON(json),
    "TestScriptAssert": (Map json) => TestScriptAssert.fromJSON(json),
    "TestScriptTest": (Map json) => TestScriptTest.fromJSON(json),
    "TestScriptAction1": (Map json) => TestScriptAction1.fromJSON(json),
    "TestScriptTeardown": (Map json) => TestScriptTeardown.fromJSON(json),
    "TestScriptAction2": (Map json) => TestScriptAction2.fromJSON(json),
    "ValueSet": (Map json) => ValueSet.fromJSON(json),
    "ValueSetCompose": (Map json) => ValueSetCompose.fromJSON(json),
    "ValueSetInclude": (Map json) => ValueSetInclude.fromJSON(json),
    "ValueSetConcept": (Map json) => ValueSetConcept.fromJSON(json),
    "ValueSetDesignation": (Map json) => ValueSetDesignation.fromJSON(json),
    "ValueSetFilter": (Map json) => ValueSetFilter.fromJSON(json),
    "ValueSetExpansion": (Map json) => ValueSetExpansion.fromJSON(json),
    "ValueSetParameter": (Map json) => ValueSetParameter.fromJSON(json),
    "ValueSetContains": (Map json) => ValueSetContains.fromJSON(json),
    "VerificationResult": (Map json) => VerificationResult.fromJSON(json),
    "VerificationResultPrimarySource": (Map json) =>
        VerificationResultPrimarySource.fromJSON(json),
    "VerificationResultAttestation": (Map json) =>
        VerificationResultAttestation.fromJSON(json),
    "VerificationResultValidator": (Map json) =>
        VerificationResultValidator.fromJSON(json),
    "VisionPrescription": (Map json) => VisionPrescription.fromJSON(json),
    "VisionPrescriptionLensSpecification": (Map json) =>
        VisionPrescriptionLensSpecification.fromJSON(json),
    "VisionPrescriptionPrism": (Map json) =>
        VisionPrescriptionPrism.fromJSON(json),
  };

  static Object buildFromJSON(String objectName, Map json) {
    return _builderLookup[objectName](json);
  }

  static void registerClass(String className, CreateFHIRObject function) {
    _builderLookup[className] = function;
  }
}
