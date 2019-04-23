import 'package:flutter_test/flutter_test.dart';
import 'dart:convert' as JSON;
import 'package:flutter_unite/flutter_unite.dart';

main() {
  test(
      '--- FHIR - Basic testing to make sure a few elements are populating without an exception. ---',
      () {
    var eob = ExplanationOfBenefit.fromJSON(JSON.jsonDecode(eobJSON));
    print("${eob.provider.reference}");
    expect(eob.provider.reference, equals('Practitioner/1'));

    print("${eob.total.first.amount.value}");
    expect(eob.total.first.amount.value, equals(135.57));

    print("${eob.total.first.amount.currency}");
    expect(eob.total.first.amount.currency, equals('USD'));

    var eob2 = ExplanationOfBenefit.fromJSON(JSON.jsonDecode(eobJSON2));
    print("${eob2.facility.extension.first.valueCoding.display}");
  });
}

String eobJSON = '''
  {
  "resourceType": "ExplanationOfBenefit",
  "id": "EB3500",
  "text": {
    "status": "generated",
    "div": "<div xmlns=>A human-readable rendering of the ExplanationOfBenefit</div>"
  },
  "identifier": [
    {
      "system": "http://www.BenefitsInc.com/fhir/explanationofbenefit",
      "value": "987654321"
    }
  ],
  "status": "active",
  "type": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/claim-type",
        "code": "oral"
      }
    ]
  },
  "use": "claim",
  "patient": {
    "reference": "Patient/pat1"
  },
  "created": "2014-08-16",
  "enterer": {
    "reference": "Practitioner/1"
  },
  "insurer": {
    "reference": "Organization/3"
  },
  "provider": {
    "reference": "Practitioner/1"
  },
  "payee": {
    "type": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/payeetype",
          "code": "provider"
        }
      ]
    },
    "party": {
      "reference": "Organization/2"
    }
  },
  "facility": {
    "reference": "Location/1"
  },
  "claim": {
    "reference": "Claim/100150"
  },
  "claimResponse": {
    "reference": "ClaimResponse/R3500"
  },
  "outcome": "complete",
  "disposition": "Claim settled as per contract.",
  "careTeam": [
    {
      "sequence": 1,
      "provider": {
        "reference": "Practitioner/example"
      }
    }
  ],
  "insurance": [
    {
      "focal": true,
      "coverage": {
        "reference": "Coverage/9876B1"
      }
    }
  ],
  "item": [
    {
      "sequence": 1,
      "careTeamSequence": [
        1
      ],
      "productOrService": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/ex-USCLS",
            "code": "1205"
          }
        ]
      },
      "servicedDate": "2014-08-16",
      "unitPrice": {
        "value": 135.57,
        "currency": "USD"
      },
      "net": {
        "value": 135.57,
        "currency": "USD"
      },
      "udi": [
        {
          "reference": "Device/example"
        }
      ],
      "encounter": [
        {
          "reference": "Encounter/example"
        }
      ],
      "adjudication": [
        {
          "category": {
            "coding": [
              {
                "code": "eligible"
              }
            ]
          },
          "amount": {
            "value": 120.00,
            "currency": "USD"
          }
        },
        {
          "category": {
            "coding": [
              {
                "code": "eligpercent"
              }
            ]
          },
          "value": 0.80
        },
        {
          "category": {
            "coding": [
              {
                "code": "benefit"
              }
            ]
          },
          "amount": {
            "value": 96.00,
            "currency": "USD"
          }
        }
      ]
    },
    {
      "sequence": 2,
      "careTeamSequence": [
        1
      ],
      "productOrService": {
        "coding": [
          {
            "code": "group"
          }
        ]
      },
      "servicedDate": "2014-08-16",
      "net": {
        "value": 200.00,
        "currency": "USD"
      },
      "adjudication": [
        {
          "category": {
            "coding": [
              {
                "code": "benefit"
              }
            ]
          },
          "amount": {
            "value": 180.00,
            "currency": "USD"
          }
        }
      ],
      "detail": [
        {
          "sequence": 1,
          "productOrService": {
            "coding": [
              {
                "code": "group"
              }
            ]
          },
          "net": {
            "value": 200.00,
            "currency": "USD"
          },
          "udi": [
            {
              "reference": "Device/example"
            }
          ],
          "adjudication": [
            {
              "category": {
                "coding": [
                  {
                    "code": "benefit"
                  }
                ]
              },
              "amount": {
                "value": 180.00,
                "currency": "USD"
              }
            }
          ],
          "subDetail": [
            {
              "sequence": 1,
              "productOrService": {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/ex-USCLS",
                    "code": "1205"
                  }
                ]
              },
              "unitPrice": {
                "value": 200.00,
                "currency": "USD"
              },
              "net": {
                "value": 200.00,
                "currency": "USD"
              },
              "udi": [
                {
                  "reference": "Device/example"
                }
              ],
              "adjudication": [
                {
                  "category": {
                    "coding": [
                      {
                        "code": "eligible"
                      }
                    ]
                  },
                  "amount": {
                    "value": 200.00,
                    "currency": "USD"
                  }
                },
                {
                  "category": {
                    "coding": [
                      {
                        "code": "eligpercent"
                      }
                    ]
                  },
                  "value": 0.90
                },
                {
                  "category": {
                    "coding": [
                      {
                        "code": "benefit"
                      }
                    ]
                  },
                  "amount": {
                    "value": 180.00,
                    "currency": "USD"
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ],
  "total": [
    {
      "category": {
        "coding": [
          {
            "code": "submitted"
          }
        ]
      },
      "amount": {
        "value": 135.57,
        "currency": "USD"
      }
    },
    {
      "category": {
        "coding": [
          {
            "code": "benefit"
          }
        ]
      },
      "amount": {
        "value": 96.00,
        "currency": "USD"
      }
    }
  ]
}
  ''';

String eobJSON2 = '''
      {
                "resourceType": "ExplanationOfBenefit",
                "id": "pde-561123761",
                "identifier": [
                    {
                        "system": "https://bluebutton.cms.gov/resources/variables/pde_id",
                        "value": "561123761"
                    },
                    {
                        "system": "https://bluebutton.cms.gov/resources/identifier/claim-group",
                        "value": "9761390141"
                    },
                    {
                        "system": "https://bluebutton.cms.gov/resources/variables/rx_srvc_rfrnc_num",
                        "value": "71762922067"
                    }
                ],
                "status": "active",
                "type": {
                    "coding": [
                        {
                            "system": "https://bluebutton.cms.gov/resources/codesystem/eob-type",
                            "code": "PDE"
                        },
                        {
                            "system": "http://hl7.org/fhir/ex-claimtype",
                            "code": "pharmacy",
                            "display": "Pharmacy"
                        }
                    ]
                },
                "patient": {
                    "reference": "Patient/20140000010000"
                },
                "organization": {
                    "identifier": {
                        "system": "http://hl7.org/fhir/sid/us-npi",
                        "value": "999999999999999"
                    }
                },
                "facility": {
                    "extension": [
                        {
                            "url": "https://bluebutton.cms.gov/resources/variables/phrmcy_srvc_type_cd",
                            "valueCoding": {
                                "system": "https://bluebutton.cms.gov/resources/variables/phrmcy_srvc_type_cd",
                                "code": "06",
                                "display": "Mail order pharmacy"
                            }
                        }
                    ],
                    "identifier": {
                        "system": "http://hl7.org/fhir/sid/us-npi",
                        "value": "999999999999999"
                    }
                },
                "information": [
                    {
                        "sequence": 1,
                        "category": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/codesystem/information",
                                    "code": "https://bluebutton.cms.gov/resources/variables/daw_prod_slctn_cd",
                                    "display": "Dispense as Written (DAW) Product Selection Code"
                                }
                            ]
                        },
                        "code": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/variables/daw_prod_slctn_cd",
                                    "code": "0",
                                    "display": "No Product Selection Indicated (may also have missing values)"
                                }
                            ]
                        }
                    },
                    {
                        "sequence": 2,
                        "category": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/codesystem/information",
                                    "code": "https://bluebutton.cms.gov/resources/variables/drug_cvrg_stus_cd",
                                    "display": "Drug Coverage Status Code"
                                }
                            ]
                        },
                        "code": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/variables/drug_cvrg_stus_cd",
                                    "code": "C",
                                    "display": "Covered"
                                }
                            ]
                        }
                    },
                    {
                        "sequence": 3,
                        "category": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/codesystem/information",
                                    "code": "https://bluebutton.cms.gov/resources/variables/rx_orgn_cd",
                                    "display": "Prescription Origination Code"
                                }
                            ]
                        },
                        "code": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/variables/rx_orgn_cd",
                                    "code": "3",
                                    "display": "Electronic"
                                }
                            ]
                        }
                    },
                    {
                        "sequence": 4,
                        "category": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/codesystem/information",
                                    "code": "https://bluebutton.cms.gov/resources/variables/brnd_gnrc_cd",
                                    "display": "Brand-Generic Code Reported by Submitting Plan"
                                }
                            ]
                        },
                        "code": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/variables/brnd_gnrc_cd",
                                    "code": "G",
                                    "display": "Generic Null/missing"
                                }
                            ]
                        }
                    },
                    {
                        "sequence": 5,
                        "category": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/codesystem/information",
                                    "code": "https://bluebutton.cms.gov/resources/variables/phrmcy_srvc_type_cd",
                                    "display": "Pharmacy service type code"
                                }
                            ]
                        },
                        "code": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/variables/phrmcy_srvc_type_cd",
                                    "code": "06",
                                    "display": "Mail order pharmacy"
                                }
                            ]
                        }
                    },
                    {
                        "sequence": 6,
                        "category": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/codesystem/information",
                                    "code": "https://bluebutton.cms.gov/resources/variables/ptnt_rsdnc_cd",
                                    "display": "Patient Residence Code"
                                }
                            ]
                        },
                        "code": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/variables/ptnt_rsdnc_cd",
                                    "code": "98"
                                }
                            ]
                        }
                    },
                    {
                        "sequence": 7,
                        "category": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/codesystem/information",
                                    "code": "https://bluebutton.cms.gov/resources/variables/submsn_clr_cd",
                                    "display": "Submission clarification code"
                                }
                            ]
                        },
                        "code": {
                            "coding": [
                                {
                                    "system": "https://bluebutton.cms.gov/resources/variables/submsn_clr_cd",
                                    "code": "16",
                                    "display": "LTC emergency box (e box) /automated dispensing machine"
                                }
                            ]
                        }
                    }
                ],
                "careTeam": [
                    {
                        "sequence": 2,
                        "provider": {
                            "identifier": {
                                "system": "http://hl7.org/fhir/sid/us-npi",
                                "value": "999999999999999"
                            }
                        },
                        "role": {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/claimcareteamrole",
                                    "code": "primary",
                                    "display": "Primary provider"
                                }
                            ]
                        }
                    }
                ],
                "insurance": {
                    "coverage": {
                        "extension": [
                            {
                                "url": "https://bluebutton.cms.gov/resources/variables/plan_cntrct_rec_id",
                                "valueIdentifier": {
                                    "system": "https://bluebutton.cms.gov/resources/variables/plan_cntrct_rec_id",
                                    "value": "99999"
                                }
                            },
                            {
                                "url": "https://bluebutton.cms.gov/resources/variables/plan_pbp_rec_num",
                                "valueIdentifier": {
                                    "system": "https://bluebutton.cms.gov/resources/variables/plan_pbp_rec_num",
                                    "value": "999"
                                }
                            }
                        ],
                        "reference": "Coverage/part-d-20140000010000"
                    }
                },
                "item": [
                    {
                        "sequence": 1,
                        "careTeamLinkId": [
                            2
                        ],
                        "service": {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/sid/ndc",
                                    "code": "31722022205",
                                    "display": "Gabapentin - GABAPENTIN"
                                }
                            ]
                        },
                        "servicedDate": "2016-09-01",
                        "quantity": {
                            "extension": [
                                {
                                    "url": "https://bluebutton.cms.gov/resources/variables/fill_num",
                                    "valueQuantity": {
                                        "value": 61
                                    }
                                },
                                {
                                    "url": "https://bluebutton.cms.gov/resources/variables/days_suply_num",
                                    "valueQuantity": {
                                        "value": 90
                                    }
                                }
                            ],
                            "value": 630
                        },
                        "adjudication": [
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/cvrd_d_plan_pd_amt",
                                            "display": "Amount paid by Part D plan for the PDE (drug is covered by Part D)"
                                        }
                                    ]
                                },
                                "reason": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/variables/drug_cvrg_stus_cd",
                                            "code": "C",
                                            "display": "Covered"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 70,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            },
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/gdc_blw_oopt_amt",
                                            "display": "Gross Drug Cost Below Part D Out-of-Pocket Threshold (GDCB)"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 150,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            },
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/gdc_abv_oopt_amt",
                                            "display": "Gross Drug Cost Above Part D Out-of-Pocket Threshold (GDCA)"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 0,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            },
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/ptnt_pay_amt",
                                            "display": "Amount Paid by Patient"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 40,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            },
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/othr_troop_amt",
                                            "display": "Other True Out-of-Pocket (TrOOP) Amount"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 0,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            },
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/lics_amt",
                                            "display": "Amount paid for the PDE by Part D low income subsidy"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 0,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            },
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/plro_amt",
                                            "display": "Reduction in patient liability due to payments by other payers (PLRO)"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 20,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            },
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/tot_rx_cst_amt",
                                            "display": "Total drug cost (Part D)"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 150,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            },
                            {
                                "category": {
                                    "coding": [
                                        {
                                            "system": "https://bluebutton.cms.gov/resources/codesystem/adjudication",
                                            "code": "https://bluebutton.cms.gov/resources/variables/rptd_gap_dscnt_num",
                                            "display": "Gap Discount Amount"
                                        }
                                    ]
                                },
                                "amount": {
                                    "value": 0,
                                    "system": "urn:iso:std:iso:4217",
                                    "code": "USD"
                                }
                            }
                        ],
                        "detail": [
                            {
                                "type": {
                                    "coding": [
                                        {
                                            "system": "http://hl7.org/fhir/v3/ActCode",
                                            "code": "RXCINV",
                                            "display": "Rx compound invoice"
                                        }
                                    ]
                                }
                            }
                        ]
                    }
                ],
                "payment": {
                    "date": "2016-09-01"
                }
            }
''';
