cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  coronary-ischaemic-heart-disease---primary:
    run: coronary-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  cardiovascular-ischaemic-heart-disease---primary:
    run: cardiovascular-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: coronary-ischaemic-heart-disease---primary/output
  ventricular-ischaemic-heart-disease---primary:
    run: ventricular-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cardiovascular-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-angio---primary:
    run: ischaemic-heart-disease-angio---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ventricular-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-operation---primary:
    run: ischaemic-heart-disease-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-angio---primary/output
  ischaemic-heart-disease-three---primary:
    run: ischaemic-heart-disease-three---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-operation---primary/output
  ischaemic-heart-disease-implantation---primary:
    run: ischaemic-heart-disease-implantation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-three---primary/output
  myocardal-ischaemic-heart-disease---primary:
    run: myocardal-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-implantation---primary/output
  ischaemic-heart-disease-angina---primary:
    run: ischaemic-heart-disease-angina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: myocardal-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-xother---primary:
    run: ischaemic-heart-disease-xother---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-angina---primary/output
  ischaemic-heart-disease-declined---primary:
    run: ischaemic-heart-disease-declined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-xother---primary/output
  double-ischaemic-heart-disease---primary:
    run: double-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-declined---primary/output
  ischaemic-heart-disease-review---primary:
    run: ischaemic-heart-disease-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: double-ischaemic-heart-disease---primary/output
  unstable-ischaemic-heart-disease---primary:
    run: unstable-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-review---primary/output
  ischaemic-heart-disease-revision---primary:
    run: ischaemic-heart-disease-revision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: unstable-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-vpresence---primary:
    run: ischaemic-heart-disease-vpresence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-revision---primary/output
  ischaemic-heart-disease-pectoris---primary:
    run: ischaemic-heart-disease-pectoris---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-vpresence---primary/output
  ischaemic-heart-disease-enzyme---primary:
    run: ischaemic-heart-disease-enzyme---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-pectoris---primary/output
  ischaemic-heart-disease-atherectomy---primary:
    run: ischaemic-heart-disease-atherectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-enzyme---primary/output
  ischaemic-heart-disease-insufficiency---primary:
    run: ischaemic-heart-disease-insufficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-atherectomy---primary/output
  ischaemic-heart-disease-letter---primary:
    run: ischaemic-heart-disease-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-insufficiency---primary/output
  ischaemic-heart-disease-therapy---primary:
    run: ischaemic-heart-disease-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-letter---primary/output
  ischaemic-heart-disease-decubitus---primary:
    run: ischaemic-heart-disease-decubitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-therapy---primary/output
  ischaemic-heart-disease-spasm---primary:
    run: ischaemic-heart-disease-spasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-decubitus---primary/output
  ischaemic-heart-disease-connection---primary:
    run: ischaemic-heart-disease-connection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-spasm---primary/output
  atherosclerotic-ischaemic-heart-disease---primary:
    run: atherosclerotic-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-connection---primary/output
  ischaemic-heart-disease-level---primary:
    run: ischaemic-heart-disease-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: atherosclerotic-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-monitoring---primary:
    run: ischaemic-heart-disease-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-level---primary/output
  ischaemic-heart-disease-allograft---primary:
    run: ischaemic-heart-disease-allograft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-monitoring---primary/output
  positive-ischaemic-heart-disease---primary:
    run: positive-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-allograft---primary/output
  ischaemic-heart-disease-phase---primary:
    run: ischaemic-heart-disease-phase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: positive-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-aneurysm---primary:
    run: ischaemic-heart-disease-aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-phase---primary/output
  subendocardial-ischaemic-heart-disease---primary:
    run: subendocardial-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-aneurysm---primary/output
  lateral-ischaemic-heart-disease---primary:
    run: lateral-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: subendocardial-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-posterior---primary:
    run: ischaemic-heart-disease-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: lateral-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-nurse---primary:
    run: ischaemic-heart-disease-nurse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-posterior---primary/output
  ischaemic-heart-disease-attack---primary:
    run: ischaemic-heart-disease-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-nurse---primary/output
  ischaemic-heart-disease-subacute---primary:
    run: ischaemic-heart-disease-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-attack---primary/output
  ischaemic-heart-disease-worsening---primary:
    run: ischaemic-heart-disease-worsening---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-subacute---primary/output
  ischaemic-heart-disease-preinfarction---primary:
    run: ischaemic-heart-disease-preinfarction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-worsening---primary/output
  ischaemic-heart-disease-chest---primary:
    run: ischaemic-heart-disease-chest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-preinfarction---primary/output
  ischaemic-heart-disease-rehabilitation---primary:
    run: ischaemic-heart-disease-rehabilitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-chest---primary/output
  ischaemic-heart-disease-control---primary:
    run: ischaemic-heart-disease-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-rehabilitation---primary/output
  ischaemic-heart-disease---primary:
    run: ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-control---primary/output
  ischaemic-heart-disease-streptokinase---primary:
    run: ischaemic-heart-disease-streptokinase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease---primary/output
  prosthetic-ischaemic-heart-disease---primary:
    run: prosthetic-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-streptokinase---primary/output
  ischaemic-heart-disease-thrombolysis---primary:
    run: ischaemic-heart-disease-thrombolysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: prosthetic-ischaemic-heart-disease---primary/output
  heart---primary:
    run: heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-thrombolysis---primary/output
  ischaemic-heart-disease-artery---primary:
    run: ischaemic-heart-disease-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: heart---primary/output
  ischaemic-heart-disease-replacement---primary:
    run: ischaemic-heart-disease-replacement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-artery---primary/output
  anteroseptal-ischaemic-heart-disease---primary:
    run: anteroseptal-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-replacement---primary/output
  ischaemic-heart-disease-infarct---primary:
    run: ischaemic-heart-disease-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: anteroseptal-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-vessel---primary:
    run: ischaemic-heart-disease-vessel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-infarct---primary/output
  ischaemic-heart-disease-insertion---primary:
    run: ischaemic-heart-disease-insertion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-vessel---primary/output
  ischaemic-heart-disease-ischaemia---primary:
    run: ischaemic-heart-disease-ischaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-insertion---primary/output
  ischaemic-heart-disease-dressler---primary:
    run: ischaemic-heart-disease-dressler---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-ischaemia---primary/output
  angioplasty-ischaemic-heart-disease---primary:
    run: angioplasty-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-dressler---primary/output
  certain-ischaemic-heart-disease---primary:
    run: certain-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: angioplasty-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-elevation---primary:
    run: ischaemic-heart-disease-elevation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: certain-ischaemic-heart-disease---primary/output
  abnormal-ischaemic-heart-disease---primary:
    run: abnormal-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-elevation---primary/output
  ischaemic-heart-disease-programme---primary:
    run: ischaemic-heart-disease-programme---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: abnormal-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-aborted---primary:
    run: ischaemic-heart-disease-aborted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-programme---primary/output
  ischaemic-heart-disease-ruptur---primary:
    run: ischaemic-heart-disease-ruptur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-aborted---primary/output
  ischaemic-heart-disease-chordae---primary:
    run: ischaemic-heart-disease-chordae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-ruptur---primary/output
  cardiomyopathy-ischaemic-heart-disease---primary:
    run: cardiomyopathy-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-chordae---primary/output
  mechanical-ischaemic-heart-disease---primary:
    run: mechanical-ischaemic-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: cardiomyopathy-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-anastomosis---primary:
    run: ischaemic-heart-disease-anastomosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: mechanical-ischaemic-heart-disease---primary/output
  ischaemic-heart-disease-stenocardia---primary:
    run: ischaemic-heart-disease-stenocardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-anastomosis---primary/output
  ischaemic-heart-disease-blade---primary:
    run: ischaemic-heart-disease-blade---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-stenocardia---primary/output
  ischaemic-heart-disease-cardiac---primary:
    run: ischaemic-heart-disease-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-blade---primary/output
  ischaemic-heart-disease-mammary---primary:
    run: ischaemic-heart-disease-mammary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-cardiac---primary/output
  ischaemic-heart-disease-anginosus---primary:
    run: ischaemic-heart-disease-anginosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-mammary---primary/output
  ischaemic-heart-disease-unspecif---primary:
    run: ischaemic-heart-disease-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-anginosus---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: ischaemic-heart-disease-unspecif---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
