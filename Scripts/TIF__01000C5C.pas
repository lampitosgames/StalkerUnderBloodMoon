.info
  .source "TIF__01000C5C.psc"
  .modifyTime 1554914595
  .compileTime 1554914598
  .user "User"
  .computer "MSI"
.endInfo
.userFlagsRef
  .flag conditional 1
  .flag hidden 0
.endUserFlagsRef
.objectTable
  .object TIF__01000C5C TopicInfo
    .userFlags 1
    .docString ""
    .autoState 
    .variableTable
    .endVariableTable
    .propertyTable
    .endPropertyTable
    .stateTable
      .state
        .function GetState
          .userFlags 0
          .docString "Function that returns the current state"
          .return String
          .paramTable
          .endParamTable
          .localTable
          .endLocalTable
          .code
            RETURN ::state
          .endCode
        .endFunction
        .function GotoState
          .userFlags 0
          .docString "Function that switches this object to the specified state"
          .return None
          .paramTable
            .param newState String
          .endParamTable
          .localTable
            .local ::NoneVar None
          .endLocalTable
          .code
            CALLMETHOD onEndState self ::NoneVar
            ASSIGN ::state newState
            CALLMETHOD onBeginState self ::NoneVar
          .endCode
        .endFunction
        .function Fragment_0 
          .userFlags 0
          .docString ""
          .return NONE
          .paramTable
            .param akSpeakerRef ObjectReference
          .endParamTable
          .localTable
            .local ::temp0 actor
            .local ::temp1 quest
            .local ::temp2 bool
            .local akSpeaker Actor
          .endLocalTable
          .code
            CAST ::temp0 akSpeakerRef ;@line 7
            ASSIGN akSpeaker ::temp0 ;@line 7
            CALLMETHOD GetOwningQuest self ::temp1  ;@line 9
            CALLMETHOD setstage ::temp1 ::temp2 160 ;@line 9
          .endCode
        .endFunction
      .endState
    .endStateTable
  .endObject
.endObjectTable