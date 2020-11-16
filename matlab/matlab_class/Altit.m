Model {
  Name			  "altit"
  Version		  7.5
  MdlSubVersion		  0
  GraphicalInterface {
    NumRootInports	    0
    NumRootOutports	    0
    ParameterArgumentNames  ""
    ComputedModelVersion    "1.24"
    NumModelReferences	    0
    NumTestPointedSignals   0
  }
  SavedCharacterEncoding  "windows-1252"
  SaveDefaultBlockParams  on
  ScopeRefreshTime	  0.035000
  OverrideScopeRefreshTime on
  DisableAllScopes	  off
  DataTypeOverride	  "UseLocalSettings"
  MinMaxOverflowLogging	  "UseLocalSettings"
  MinMaxOverflowArchiveMode "Overwrite"
  MaxMDLFileLineLength	  120
  Created		  "Thu Oct 21 17:33:57 2004"
  Creator		  "Compaq_Propietario"
  UpdateHistory		  "UpdateHistoryNever"
  ModifiedByFormat	  "%<Auto>"
  LastModifiedBy	  "Compaq_Propietario"
  ModifiedDateFormat	  "%<Auto>"
  LastModifiedDate	  "Sun Apr 08 00:58:18 2012"
  RTWModifiedTimeStamp	  255747458
  ModelVersionFormat	  "1.%<AutoIncrement:24>"
  ConfigurationManager	  "None"
  SampleTimeColors	  off
  SampleTimeAnnotations	  off
  LibraryLinkDisplay	  "none"
  WideLines		  on
  ShowLineDimensions	  off
  ShowPortDataTypes	  off
  ShowLoopsOnError	  on
  IgnoreBidirectionalLines off
  ShowStorageClass	  off
  ShowTestPointIcons	  on
  ShowSignalResolutionIcons on
  ShowViewerIcons	  on
  SortedOrder		  off
  ExecutionContextIcon	  off
  ShowLinearizationAnnotations on
  BlockNameDataTip	  off
  BlockParametersDataTip  off
  BlockDescriptionStringDataTip	off
  ToolBar		  on
  StatusBar		  on
  BrowserShowLibraryLinks off
  BrowserLookUnderMasks	  off
  SimulationMode	  "normal"
  LinearizationMsg	  "none"
  Profile		  off
  ParamWorkspaceSource	  "MATLABWorkspace"
  AccelSystemTargetFile	  "accel.tlc"
  AccelTemplateMakefile	  "accel_default_tmf"
  AccelMakeCommand	  "make_rtw"
  TryForcingSFcnDF	  off
  RecordCoverage	  off
  CovPath		  "/"
  CovSaveName		  "covdata"
  CovMetricSettings	  "dw"
  CovNameIncrementing	  off
  CovHtmlReporting	  on
  CovForceBlockReductionOff on
  covSaveCumulativeToWorkspaceVar on
  CovSaveSingleToWorkspaceVar on
  CovCumulativeVarName	  "covCumulativeData"
  CovCumulativeReport	  off
  CovReportOnPause	  on
  CovModelRefEnable	  "Off"
  CovExternalEMLEnable	  off
  ExtModeBatchMode	  off
  ExtModeEnableFloating	  on
  ExtModeTrigType	  "manual"
  ExtModeTrigMode	  "normal"
  ExtModeTrigPort	  "1"
  ExtModeTrigElement	  "any"
  ExtModeTrigDuration	  1000
  ExtModeTrigDurationFloating "auto"
  ExtModeTrigHoldOff	  0
  ExtModeTrigDelay	  0
  ExtModeTrigDirection	  "rising"
  ExtModeTrigLevel	  0
  ExtModeArchiveMode	  "off"
  ExtModeAutoIncOneShot	  off
  ExtModeIncDirWhenArm	  off
  ExtModeAddSuffixToVar	  off
  ExtModeWriteAllDataToWs off
  ExtModeArmWhenConnect	  on
  ExtModeSkipDownloadWhenConnect off
  ExtModeLogAll		  on
  ExtModeAutoUpdateStatusClock on
  BufferReuse		  on
  ShowModelReferenceBlockVersion off
  ShowModelReferenceBlockIO off
  Array {
    Type		    "Handle"
    Dimension		    1
    Simulink.ConfigSet {
      $ObjectID		      1
      Version		      "1.10.0"
      Array {
	Type			"Handle"
	Dimension		8
	Simulink.SolverCC {
	  $ObjectID		  2
	  Version		  "1.10.0"
	  StartTime		  "0.0"
	  StopTime		  "300"
	  AbsTol		  "1e-6"
	  FixedStep		  "auto"
	  InitialStep		  "auto"
	  MaxNumMinSteps	  "-1"
	  MaxOrder		  5
	  ZcThreshold		  "auto"
	  ConsecutiveZCsStepRelTol "10*128*eps"
	  MaxConsecutiveZCs	  "1000"
	  ExtrapolationOrder	  4
	  NumberNewtonIterations  1
	  MaxStep		  "auto"
	  MinStep		  "auto"
	  MaxConsecutiveMinStep	  "1"
	  RelTol		  "1e-3"
	  SolverMode		  "SingleTasking"
	  Solver		  "ode23"
	  SolverName		  "ode23"
	  SolverJacobianMethodControl "auto"
	  ShapePreserveControl	  "DisableAll"
	  ZeroCrossControl	  "UseLocalSettings"
	  ZeroCrossAlgorithm	  "Nonadaptive"
	  AlgebraicLoopSolver	  "TrustRegion"
	  SolverResetMethod	  "Fast"
	  PositivePriorityOrder	  off
	  AutoInsertRateTranBlk	  off
	  SampleTimeConstraint	  "Unconstrained"
	  InsertRTBMode		  "Whenever possible"
	}
	Simulink.DataIOCC {
	  $ObjectID		  3
	  Version		  "1.10.0"
	  Decimation		  "1"
	  ExternalInput		  "[t, u]"
	  FinalStateName	  "xFinal"
	  InitialState		  "xInitial"
	  LimitDataPoints	  off
	  MaxDataPoints		  "1000"
	  LoadExternalInput	  off
	  LoadInitialState	  off
	  SaveFinalState	  off
	  SaveCompleteFinalSimState off
	  SaveFormat		  "Array"
	  SaveOutput		  on
	  SaveState		  off
	  SignalLogging		  on
	  DSMLogging		  on
	  InspectSignalLogs	  off
	  SaveTime		  on
	  ReturnWorkspaceOutputs  off
	  StateSaveName		  "xout"
	  TimeSaveName		  "tout"
	  OutputSaveName	  "yout"
	  SignalLoggingName	  "sigsOut"
	  DSMLoggingName	  "dsmout"
	  OutputOption		  "RefineOutputTimes"
	  OutputTimes		  "[]"
	  ReturnWorkspaceOutputsName "out"
	  Refine		  "1"
	}
	Simulink.OptimizationCC {
	  $ObjectID		  4
	  Version		  "1.10.0"
	  Array {
	    Type		    "Cell"
	    Dimension		    4
	    Cell		    "ZeroExternalMemoryAtStartup"
	    Cell		    "ZeroInternalMemoryAtStartup"
	    Cell		    "NoFixptDivByZeroProtection"
	    Cell		    "OptimizeModelRefInitCode"
	    PropName		    "DisabledProps"
	  }
	  BlockReduction	  on
	  BooleanDataType	  off
	  ConditionallyExecuteInputs on
	  InlineParams		  off
	  UseIntDivNetSlope	  off
	  InlineInvariantSignals  off
	  OptimizeBlockIOStorage  on
	  BufferReuse		  on
	  EnhancedBackFolding	  off
	  StrengthReduction	  off
	  EnforceIntegerDowncast  on
	  ExpressionFolding	  on
	  BooleansAsBitfields	  off
	  BitfieldContainerType	  "uint_T"
	  EnableMemcpy		  on
	  MemcpyThreshold	  64
	  PassReuseOutputArgsAs	  "Structure reference"
	  ExpressionDepthLimit	  2147483647
	  FoldNonRolledExpr	  on
	  LocalBlockOutputs	  on
	  RollThreshold		  5
	  SystemCodeInlineAuto	  off
	  StateBitsets		  off
	  DataBitsets		  off
	  UseTempVars		  off
	  ZeroExternalMemoryAtStartup on
	  ZeroInternalMemoryAtStartup on
	  InitFltsAndDblsToZero	  on
	  NoFixptDivByZeroProtection off
	  EfficientFloat2IntCast  off
	  EfficientMapNaN2IntZero on
	  OptimizeModelRefInitCode off
	  LifeSpan		  "inf"
	  MaxStackSize		  "Inherit from target"
	  BufferReusableBoundary  on
	  SimCompilerOptimization "Off"
	  AccelVerboseBuild	  off
	}
	Simulink.DebuggingCC {
	  $ObjectID		  5
	  Version		  "1.10.0"
	  RTPrefix		  "error"
	  ConsistencyChecking	  "none"
	  ArrayBoundsChecking	  "none"
	  SignalInfNanChecking	  "none"
	  SignalRangeChecking	  "none"
	  ReadBeforeWriteMsg	  "UseLocalSettings"
	  WriteAfterWriteMsg	  "UseLocalSettings"
	  WriteAfterReadMsg	  "UseLocalSettings"
	  AlgebraicLoopMsg	  "warning"
	  ArtificialAlgebraicLoopMsg "warning"
	  SaveWithDisabledLinksMsg "warning"
	  SaveWithParameterizedLinksMsg	"none"
	  CheckSSInitialOutputMsg on
	  UnderspecifiedInitializationDetection	"Classic"
	  MergeDetectMultiDrivingBlocksExec "none"
	  CheckExecutionContextPreStartOutputMsg off
	  CheckExecutionContextRuntimeOutputMsg	off
	  SignalResolutionControl "TryResolveAllWithWarning"
	  BlockPriorityViolationMsg "warning"
	  MinStepSizeMsg	  "warning"
	  TimeAdjustmentMsg	  "none"
	  MaxConsecutiveZCsMsg	  "error"
	  SolverPrmCheckMsg	  "none"
	  InheritedTsInSrcMsg	  "warning"
	  DiscreteInheritContinuousMsg "warning"
	  MultiTaskDSMMsg	  "warning"
	  MultiTaskCondExecSysMsg "none"
	  MultiTaskRateTransMsg	  "error"
	  SingleTaskRateTransMsg  "none"
	  TasksWithSamePriorityMsg "warning"
	  SigSpecEnsureSampleTimeMsg "warning"
	  CheckMatrixSingularityMsg "none"
	  IntegerOverflowMsg	  "warning"
	  Int32ToFloatConvMsg	  "warning"
	  ParameterDowncastMsg	  "error"
	  ParameterOverflowMsg	  "error"
	  ParameterUnderflowMsg	  "none"
	  ParameterPrecisionLossMsg "warning"
	  ParameterTunabilityLossMsg "warning"
	  FixptConstUnderflowMsg  "none"
	  FixptConstOverflowMsg	  "none"
	  FixptConstPrecisionLossMsg "none"
	  UnderSpecifiedDataTypeMsg "none"
	  UnnecessaryDatatypeConvMsg "none"
	  VectorMatrixConversionMsg "none"
	  InvalidFcnCallConnMsg	  "error"
	  FcnCallInpInsideContextMsg "Use local settings"
	  SignalLabelMismatchMsg  "none"
	  UnconnectedInputMsg	  "warning"
	  UnconnectedOutputMsg	  "warning"
	  UnconnectedLineMsg	  "warning"
	  SFcnCompatibilityMsg	  "none"
	  UniqueDataStoreMsg	  "none"
	  BusObjectLabelMismatch  "warning"
	  RootOutportRequireBusObject "warning"
	  AssertControl		  "UseLocalSettings"
	  EnableOverflowDetection off
	  ModelReferenceIOMsg	  "none"
	  ModelReferenceVersionMismatchMessage "none"
	  ModelReferenceIOMismatchMessage "none"
	  ModelReferenceCSMismatchMessage "none"
	  UnknownTsInhSupMsg	  "warning"
	  ModelReferenceDataLoggingMessage "warning"
	  ModelReferenceSymbolNameMessage "warning"
	  ModelReferenceExtraNoncontSigs "error"
	  StateNameClashWarn	  "warning"
	  SimStateInterfaceChecksumMismatchMsg "warning"
	  StrictBusMsg		  "None"
	  BusNameAdapt		  "WarnAndRepair"
	  NonBusSignalsTreatedAsBus "none"
	  LoggingUnavailableSignals "error"
	  BlockIODiagnostic	  "none"
	}
	Simulink.HardwareCC {
	  $ObjectID		  6
	  Version		  "1.10.0"
	  ProdBitPerChar	  8
	  ProdBitPerShort	  16
	  ProdBitPerInt		  32
	  ProdBitPerLong	  32
	  ProdIntDivRoundTo	  "Undefined"
	  ProdEndianess		  "Unspecified"
	  ProdWordSize		  32
	  ProdShiftRightIntArith  on
	  ProdHWDeviceType	  "32-bit Generic"
	  TargetBitPerChar	  8
	  TargetBitPerShort	  16
	  TargetBitPerInt	  32
	  TargetBitPerLong	  32
	  TargetShiftRightIntArith on
	  TargetIntDivRoundTo	  "Undefined"
	  TargetEndianess	  "Unspecified"
	  TargetWordSize	  32
	  TargetTypeEmulationWarnSuppressLevel 0
	  TargetPreprocMaxBitsSint 32
	  TargetPreprocMaxBitsUint 32
	  TargetHWDeviceType	  "Specified"
	  TargetUnknown		  on
	  ProdEqTarget		  on
	}
	Simulink.ModelReferenceCC {
	  $ObjectID		  7
	  Version		  "1.10.0"
	  UpdateModelReferenceTargets "IfOutOfDateOrStructuralChange"
	  CheckModelReferenceTargetMessage "error"
	  EnableParallelModelReferenceBuilds off
	  ParallelModelReferenceMATLABWorkerInit "None"
	  ModelReferenceNumInstancesAllowed "Multi"
	  PropagateVarSize	  "Infer from blocks in model"
	  ModelReferencePassRootInputsByReference on
	  ModelReferenceMinAlgLoopOccurrences off
	  PropagateSignalLabelsOutOfModel off
	  SupportModelReferenceSimTargetCustomCode off
	}
	Simulink.SFSimCC {
	  $ObjectID		  8
	  Version		  "1.10.0"
	  SFSimEnableDebug	  on
	  SFSimOverflowDetection  on
	  SFSimEcho		  on
	  SimBlas		  on
	  SimCtrlC		  on
	  SimExtrinsic		  on
	  SimIntegrity		  on
	  SimUseLocalCustomCode	  off
	  SimBuildMode		  "sf_incremental_build"
	}
	Simulink.RTWCC {
	  $BackupClass		  "Simulink.RTWCC"
	  $ObjectID		  9
	  Version		  "1.10.0"
	  Array {
	    Type		    "Cell"
	    Dimension		    1
	    Cell		    "IncludeHyperlinkInReport"
	    PropName		    "DisabledProps"
	  }
	  SystemTargetFile	  "grt.tlc"
	  GenCodeOnly		  off
	  MakeCommand		  "make_rtw"
	  GenerateMakefile	  on
	  TemplateMakefile	  "grt_default_tmf"
	  GenerateReport	  off
	  SaveLog		  off
	  RTWVerbose		  on
	  RetainRTWFile		  off
	  ProfileTLC		  off
	  TLCDebug		  off
	  TLCCoverage		  off
	  TLCAssert		  off
	  ProcessScriptMode	  "Default"
	  ConfigurationMode	  "Optimized"
	  ConfigAtBuild		  off
	  RTWUseLocalCustomCode	  off
	  RTWUseSimCustomCode	  off
	  IncludeHyperlinkInReport off
	  LaunchReport		  off
	  TargetLang		  "C"
	  IncludeBusHierarchyInRTWFileBlockHierarchyMap	off
	  IncludeERTFirstTime	  on
	  GenerateTraceInfo	  off
	  GenerateTraceReport	  off
	  GenerateTraceReportSl	  off
	  GenerateTraceReportSf	  off
	  GenerateTraceReportEml  off
	  GenerateCodeInfo	  off
	  RTWCompilerOptimization "Off"
	  CheckMdlBeforeBuild	  "Off"
	  CustomRebuildMode	  "OnUpdate"
	  Array {
	    Type		    "Handle"
	    Dimension		    2
	    Simulink.CodeAppCC {
	      $ObjectID		      10
	      Version		      "1.10.0"
	      Array {
		Type			"Cell"
		Dimension		9
		Cell			"IgnoreCustomStorageClasses"
		Cell			"InsertBlockDesc"
		Cell			"SFDataObjDesc"
		Cell			"SimulinkDataObjDesc"
		Cell			"DefineNamingRule"
		Cell			"SignalNamingRule"
		Cell			"ParamNamingRule"
		Cell			"InlinedPrmAccess"
		Cell			"CustomSymbolStr"
		PropName		"DisabledProps"
	      }
	      ForceParamTrailComments off
	      GenerateComments	      on
	      IgnoreCustomStorageClasses on
	      IgnoreTestpoints	      off
	      IncHierarchyInIds	      off
	      MaxIdLength	      31
	      PreserveName	      off
	      PreserveNameWithParent  off
	      ShowEliminatedStatement off
	      IncAutoGenComments      off
	      SimulinkDataObjDesc     off
	      SFDataObjDesc	      off
	      IncDataTypeInIds	      off
	      MangleLength	      1
	      CustomSymbolStrGlobalVar "$R$N$M"
	      CustomSymbolStrType     "$N$R$M"
	      CustomSymbolStrField    "$N$M"
	      CustomSymbolStrFcn      "$R$N$M$F"
	      CustomSymbolStrFcnArg   "rt$I$N$M"
	      CustomSymbolStrBlkIO    "rtb_$N$M"
	      CustomSymbolStrTmpVar   "$N$M"
	      CustomSymbolStrMacro    "$R$N$M"
	      DefineNamingRule	      "None"
	      ParamNamingRule	      "None"
	      SignalNamingRule	      "None"
	      InsertBlockDesc	      off
	      SimulinkBlockComments   on
	      EnableCustomComments    off
	      InlinedPrmAccess	      "Literals"
	      ReqsInCode	      off
	      UseSimReservedNames     off
	    }
	    Simulink.GRTTargetCC {
	      $BackupClass	      "Simulink.TargetCC"
	      $ObjectID		      11
	      Version		      "1.10.0"
	      Array {
		Type			"Cell"
		Dimension		12
		Cell			"IncludeMdlTerminateFcn"
		Cell			"CombineOutputUpdateFcns"
		Cell			"SuppressErrorStatus"
		Cell			"ERTCustomFileBanners"
		Cell			"GenerateSampleERTMain"
		Cell			"MultiInstanceERTCode"
		Cell			"PurelyIntegerCode"
		Cell			"SupportNonFinite"
		Cell			"SupportComplex"
		Cell			"SupportAbsoluteTime"
		Cell			"SupportContinuousTime"
		Cell			"SupportNonInlinedSFcns"
		PropName		"DisabledProps"
	      }
	      TargetFcnLib	      "ansi_tfl_tmw.mat"
	      TargetLibSuffix	      ""
	      TargetPreCompLibLocation ""
	      TargetFunctionLibrary   "ANSI_C"
	      UtilityFuncGeneration   "Auto"
	      ERTMultiwordTypeDef     "System defined"
	      ERTCodeCoverageTool     "None"
	      ERTMultiwordLength      256
	      MultiwordLength	      2048
	      GenerateFullHeader      on
	      GenerateSampleERTMain   off
	      GenerateTestInterfaces  off
	      IsPILTarget	      off
	      ModelReferenceCompliant on
	      ParMdlRefBuildCompliant on
	      CompOptLevelCompliant   on
	      IncludeMdlTerminateFcn  on
	      GeneratePreprocessorConditionals "Disable all"
	      CombineOutputUpdateFcns off
	      SuppressErrorStatus     off
	      ERTFirstTimeCompliant   off
	      IncludeFileDelimiter    "Auto"
	      ERTCustomFileBanners    off
	      SupportAbsoluteTime     on
	      LogVarNameModifier      "rt_"
	      MatFileLogging	      on
	      MultiInstanceERTCode    off
	      SupportNonFinite	      on
	      SupportComplex	      on
	      PurelyIntegerCode	      off
	      SupportContinuousTime   on
	      SupportNonInlinedSFcns  on
	      SupportVariableSizeSignals off
	      EnableShiftOperators    on
	      ParenthesesLevel	      "Nominal"
	      PortableWordSizes	      off
	      ModelStepFunctionPrototypeControlCompliant off
	      CPPClassGenCompliant    off
	      AutosarCompliant	      off
	      UseMalloc		      off
	      ExtMode		      off
	      ExtModeStaticAlloc      off
	      ExtModeTesting	      off
	      ExtModeStaticAllocSize  1000000
	      ExtModeTransport	      0
	      ExtModeMexFile	      "ext_comm"
	      ExtModeIntrfLevel	      "Level1"
	      RTWCAPISignals	      off
	      RTWCAPIParams	      off
	      RTWCAPIStates	      off
	      GenerateASAP2	      off
	    }
	    PropName		    "Components"
	  }
	}
	PropName		"Components"
      }
      Name		      "Configuration"
      CurrentDlgPage	      "Solver"
      ConfigPrmDlgPosition    " [ 200, 197, 1080, 827 ] "
    }
    PropName		    "ConfigurationSets"
  }
  Simulink.ConfigSet {
    $PropName		    "ActiveConfigurationSet"
    $ObjectID		    1
  }
  BlockDefaults {
    ForegroundColor	    "black"
    BackgroundColor	    "white"
    DropShadow		    off
    NamePlacement	    "normal"
    FontName		    "Helvetica"
    FontSize		    10
    FontWeight		    "normal"
    FontAngle		    "normal"
    ShowName		    on
    BlockRotation	    0
    BlockMirror		    off
  }
  AnnotationDefaults {
    HorizontalAlignment	    "center"
    VerticalAlignment	    "middle"
    ForegroundColor	    "black"
    BackgroundColor	    "white"
    DropShadow		    off
    FontName		    "Helvetica"
    FontSize		    10
    FontWeight		    "normal"
    FontAngle		    "normal"
    UseDisplayTextAsClickCallback off
  }
  LineDefaults {
    FontName		    "Helvetica"
    FontSize		    9
    FontWeight		    "normal"
    FontAngle		    "normal"
  }
  BlockParameterDefaults {
    Block {
      BlockType		      Clock
      DisplayTime	      off
    }
    Block {
      BlockType		      Constant
      Value		      "1"
      VectorParams1D	      on
      SamplingMode	      "Sample based"
      OutMin		      "[]"
      OutMax		      "[]"
      OutDataTypeMode	      "Inherit from 'Constant value'"
      OutDataType	      "fixdt(1,16,0)"
      ConRadixGroup	      "Use specified scaling"
      OutScaling	      "[]"
      OutDataTypeStr	      "Inherit: Inherit from 'Constant value'"
      LockScale		      off
      SampleTime	      "inf"
      FramePeriod	      "inf"
      PreserveConstantTs      off
    }
    Block {
      BlockType		      Demux
      Outputs		      "4"
      DisplayOption	      "none"
      BusSelectionMode	      off
    }
    Block {
      BlockType		      FromWorkspace
      VariableName	      "simulink_input"
      SampleTime	      "-1"
      Interpolate	      on
      ZeroCross		      off
      OutputAfterFinalValue   "Extrapolation"
    }
    Block {
      BlockType		      Gain
      Gain		      "1"
      Multiplication	      "Element-wise(K.*u)"
      ParamMin		      "[]"
      ParamMax		      "[]"
      ParameterDataTypeMode   "Same as input"
      ParameterDataType	      "fixdt(1,16,0)"
      ParameterScalingMode    "Best Precision: Matrix-wise"
      ParameterScaling	      "[]"
      ParamDataTypeStr	      "Inherit: Same as input"
      OutMin		      "[]"
      OutMax		      "[]"
      OutDataTypeMode	      "Same as input"
      OutDataType	      "fixdt(1,16,0)"
      OutScaling	      "[]"
      OutDataTypeStr	      "Inherit: Same as input"
      LockScale		      off
      RndMeth		      "Floor"
      SaturateOnIntegerOverflow	on
      SampleTime	      "-1"
    }
    Block {
      BlockType		      Inport
      Port		      "1"
      UseBusObject	      off
      BusObject		      "BusObject"
      BusOutputAsStruct	      off
      PortDimensions	      "-1"
      VarSizeSig	      "Inherit"
      SampleTime	      "-1"
      OutMin		      "[]"
      OutMax		      "[]"
      DataType		      "auto"
      OutDataType	      "fixdt(1,16,0)"
      OutScaling	      "[]"
      OutDataTypeStr	      "Inherit: auto"
      LockScale		      off
      SignalType	      "auto"
      SamplingMode	      "auto"
      LatchByDelayingOutsideSignal off
      LatchInputForFeedbackSignals off
      Interpolate	      on
    }
    Block {
      BlockType		      Mux
      Inputs		      "4"
      DisplayOption	      "none"
      UseBusObject	      off
      BusObject		      "BusObject"
      NonVirtualBus	      off
    }
    Block {
      BlockType		      Outport
      Port		      "1"
      UseBusObject	      off
      BusObject		      "BusObject"
      BusOutputAsStruct	      off
      PortDimensions	      "-1"
      VarSizeSig	      "Inherit"
      SampleTime	      "-1"
      OutMin		      "[]"
      OutMax		      "[]"
      DataType		      "auto"
      OutDataType	      "fixdt(1,16,0)"
      OutScaling	      "[]"
      OutDataTypeStr	      "Inherit: auto"
      LockScale		      off
      SignalType	      "auto"
      SamplingMode	      "auto"
      SourceOfInitialOutputValue "Dialog"
      OutputWhenDisabled      "held"
      InitialOutput	      "[]"
    }
    Block {
      BlockType		      Saturate
      UpperLimit	      "0.5"
      LowerLimit	      "-0.5"
      LinearizeAsGain	      on
      ZeroCross		      on
      SampleTime	      "-1"
      OutMin		      "[]"
      OutMax		      "[]"
      OutDataTypeMode	      "Same as input"
      OutDataType	      "fixdt(1,16,0)"
      OutScaling	      "[]"
      OutDataTypeStr	      "Inherit: Same as input"
      LockScale		      off
      RndMeth		      "Floor"
    }
    Block {
      BlockType		      Scope
      ModelBased	      off
      TickLabels	      "OneTimeTick"
      ZoomMode		      "on"
      Grid		      "on"
      TimeRange		      "auto"
      YMin		      "-5"
      YMax		      "5"
      SaveToWorkspace	      off
      SaveName		      "ScopeData"
      LimitDataPoints	      on
      MaxDataPoints	      "5000"
      Decimation	      "1"
      SampleInput	      off
      SampleTime	      "-1"
    }
    Block {
      BlockType		      StateSpace
      A			      "1"
      B			      "1"
      C			      "1"
      D			      "1"
      X0		      "0"
      AbsoluteTolerance	      "auto"
      ContinuousStateAttributes	"''"
      Realization	      "auto"
    }
    Block {
      BlockType		      SubSystem
      ShowPortLabels	      "FromPortIcon"
      Permissions	      "ReadWrite"
      PermitHierarchicalResolution "All"
      TreatAsAtomicUnit	      off
      CheckFcnCallInpInsideContextMsg off
      SystemSampleTime	      "-1"
      RTWFcnNameOpts	      "Auto"
      RTWFileNameOpts	      "Auto"
      RTWMemSecFuncInitTerm   "Inherit from model"
      RTWMemSecFuncExecute    "Inherit from model"
      RTWMemSecDataConstants  "Inherit from model"
      RTWMemSecDataInternal   "Inherit from model"
      RTWMemSecDataParameters "Inherit from model"
      SimViewingDevice	      off
      DataTypeOverride	      "UseLocalSettings"
      MinMaxOverflowLogging   "UseLocalSettings"
    }
    Block {
      BlockType		      Sum
      IconShape		      "rectangular"
      Inputs		      "++"
      CollapseMode	      "All dimensions"
      CollapseDim	      "1"
      InputSameDT	      on
      AccumDataTypeStr	      "Inherit: Inherit via internal rule"
      OutMin		      "[]"
      OutMax		      "[]"
      OutDataTypeMode	      "Same as first input"
      OutDataType	      "fixdt(1,16,0)"
      OutScaling	      "[]"
      OutDataTypeStr	      "Inherit: Same as first input"
      LockScale		      off
      RndMeth		      "Floor"
      SaturateOnIntegerOverflow	on
      SampleTime	      "-1"
    }
    Block {
      BlockType		      Terminator
    }
    Block {
      BlockType		      ToWorkspace
      VariableName	      "simulink_output"
      MaxDataPoints	      "1000"
      Decimation	      "1"
      SampleTime	      "0"
      FixptAsFi		      off
    }
    Block {
      BlockType		      TransferFcn
      Numerator		      "[1]"
      Denominator	      "[1 2 1]"
      AbsoluteTolerance	      "auto"
      ContinuousStateAttributes	"''"
      Realization	      "auto"
    }
  }
  System {
    Name		    "altit"
    Location		    [93, 152, 1191, 570]
    Open		    on
    ModelBrowserVisibility  off
    ModelBrowserWidth	    200
    ScreenColor		    "white"
    PaperOrientation	    "landscape"
    PaperPositionMode	    "auto"
    PaperType		    "usletter"
    PaperUnits		    "inches"
    TiledPaperMargins	    [0.500000, 0.500000, 0.500000, 0.500000]
    TiledPageScale	    1
    ShowPageBoundaries	    off
    ZoomFactor		    "100"
    ReportName		    "simulink-default.rpt"
    SIDHighWatermark	    43
    Block {
      BlockType		      Clock
      Name		      "Clock"
      SID		      1
      Position		      [870, 170, 890, 190]
      FontSize		      12
      Decimation	      "10"
    }
    Block {
      BlockType		      Constant
      Name		      "Constant"
      SID		      2
      Position		      [205, 165, 225, 185]
      ShowName		      off
      FontSize		      12
      Value		      "0"
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
      Port {
	PortNumber		1
	Name			"u_ref"
	RTWStorageClass		"Auto"
	DataLoggingNameMode	"SignalName"
      }
    }
    Block {
      BlockType		      Constant
      Name		      "Constant1"
      SID		      3
      Position		      [30, 60, 50, 80]
      Value		      "0"
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      TransferFcn
      Name		      "Elevator Lag"
      SID		      4
      Position		      [580, 97, 635, 133]
      FontSize		      12
      Numerator		      "JNe"
      Denominator	      "JDe"
    }
    Block {
      BlockType		      TransferFcn
      Name		      "Engine Dynamics"
      SID		      5
      Position		      [580, 167, 635, 203]
      FontSize		      12
      Numerator		      "JNt"
      Denominator	      "JDt"
    }
    Block {
      BlockType		      TransferFcn
      Name		      "Engine Lead"
      SID		      6
      Position		      [320, 167, 375, 203]
      FontSize		      12
      Numerator		      "Kun"
      Denominator	      "Kud"
    }
    Block {
      BlockType		      Gain
      Name		      "Gain"
      SID		      7
      Position		      [730, 40, 780, 70]
      BlockMirror	      on
      ShowName		      off
      FontSize		      12
      Gain		      "K_q"
      ParameterDataType	      "sfix(16)"
      ParameterScaling	      "2^0"
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      Gain
      Name		      "Gain1"
      SID		      8
      Position		      [675, 14, 730, 46]
      BlockMirror	      on
      ShowName		      off
      FontSize		      12
      Gain		      "K_th"
      ParameterDataType	      "sfix(16)"
      ParameterScaling	      "2^0"
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      Gain
      Name		      "Gain2"
      SID		      9
      Position		      [405, 166, 445, 204]
      ShowName		      off
      FontSize		      12
      Gain		      "K_u"
      ParameterDataType	      "sfix(16)"
      ParameterScaling	      "2^0"
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      Gain
      Name		      "Gain3"
      SID		      10
      Position		      [915, 281, 955, 319]
      ShowName		      off
      FontSize		      12
      Gain		      "[180/pi 10]"
      ParameterDataType	      "sfix(16)"
      ParameterScaling	      "2^0"
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      SubSystem
      Name		      "Longitudinal Model"
      SID		      11
      Ports		      [2, 6]
      Position		      [685, 75, 785, 220]
      ForegroundColor	      "green"
      FontSize		      12
      MinAlgLoopOccurrences   off
      PropExecContextOutsideSubsystem off
      RTWSystemCode	      "Auto"
      FunctionWithSeparateData off
      Opaque		      off
      RequestExecContextInheritance off
      MaskHideContents	      off
      Port {
	PortNumber		1
	Name			"u"
	RTWStorageClass		"Auto"
	DataLoggingNameMode	"SignalName"
      }
      Port {
	PortNumber		5
	Name			"h"
	RTWStorageClass		"Auto"
	DataLoggingNameMode	"SignalName"
      }
      System {
	Name			"Longitudinal Model"
	Location		[539, 557, 937, 826]
	Open			off
	ModelBrowserVisibility	off
	ModelBrowserWidth	200
	ScreenColor		"white"
	PaperOrientation	"landscape"
	PaperPositionMode	"auto"
	PaperType		"usletter"
	PaperUnits		"inches"
	TiledPaperMargins	[0.500000, 0.500000, 0.500000, 0.500000]
	TiledPageScale		1
	ShowPageBoundaries	off
	ZoomFactor		"100"
	Block {
	  BlockType		  Inport
	  Name			  "Dele"
	  SID			  12
	  Position		  [25, 33, 55, 47]
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	}
	Block {
	  BlockType		  Inport
	  Name			  "Delt"
	  SID			  13
	  Position		  [25, 113, 55, 127]
	  Port			  "2"
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	}
	Block {
	  BlockType		  Demux
	  Name			  "Demux"
	  SID			  14
	  Ports			  [1, 5]
	  Position		  [225, 30, 265, 230]
	  Outputs		  "5"
	}
	Block {
	  BlockType		  Mux
	  Name			  "Mux"
	  SID			  15
	  Ports			  [2, 1]
	  Position		  [80, 32, 115, 68]
	  Inputs		  "2"
	}
	Block {
	  BlockType		  StateSpace
	  Name			  "State-Space"
	  SID			  16
	  Position		  [145, 32, 205, 68]
	  A			  "A"
	  B			  "B"
	  C			  "C(1:5,:)"
	  D			  "D(1:5,:)"
	  X0			  "[0 0 0 0 0 0 0]"
	}
	Block {
	  BlockType		  Outport
	  Name			  "u"
	  SID			  17
	  Position		  [290, 13, 320, 27]
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	  InitialOutput		  "0"
	}
	Block {
	  BlockType		  Outport
	  Name			  "w"
	  SID			  18
	  Position		  [295, 48, 325, 62]
	  Port			  "2"
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	  InitialOutput		  "0"
	}
	Block {
	  BlockType		  Outport
	  Name			  "q"
	  SID			  19
	  Position		  [295, 83, 325, 97]
	  Port			  "3"
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	  InitialOutput		  "0"
	}
	Block {
	  BlockType		  Outport
	  Name			  "theta"
	  SID			  20
	  Position		  [295, 128, 325, 142]
	  Port			  "4"
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	  InitialOutput		  "0"
	}
	Block {
	  BlockType		  Outport
	  Name			  "h"
	  SID			  21
	  Position		  [295, 158, 325, 172]
	  Port			  "5"
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	  InitialOutput		  "0"
	}
	Block {
	  BlockType		  Outport
	  Name			  "all"
	  SID			  22
	  Position		  [295, 198, 325, 212]
	  Port			  "6"
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	  InitialOutput		  "0"
	}
	Line {
	  SrcBlock		  "Mux"
	  SrcPort		  1
	  DstBlock		  "State-Space"
	  DstPort		  1
	}
	Line {
	  SrcBlock		  "Demux"
	  SrcPort		  1
	  Points		  [0, -30]
	  DstBlock		  "u"
	  DstPort		  1
	}
	Line {
	  SrcBlock		  "Dele"
	  SrcPort		  1
	  DstBlock		  "Mux"
	  DstPort		  1
	}
	Line {
	  SrcBlock		  "Demux"
	  SrcPort		  2
	  Points		  [0, -35]
	  DstBlock		  "w"
	  DstPort		  1
	}
	Line {
	  SrcBlock		  "Demux"
	  SrcPort		  3
	  Points		  [0, -40]
	  DstBlock		  "q"
	  DstPort		  1
	}
	Line {
	  SrcBlock		  "Demux"
	  SrcPort		  4
	  Points		  [0, -35]
	  DstBlock		  "theta"
	  DstPort		  1
	}
	Line {
	  SrcBlock		  "Demux"
	  SrcPort		  5
	  Points		  [0, -45]
	  DstBlock		  "h"
	  DstPort		  1
	}
	Line {
	  SrcBlock		  "Delt"
	  SrcPort		  1
	  Points		  [0, -60]
	  DstBlock		  "Mux"
	  DstPort		  2
	}
	Line {
	  SrcBlock		  "State-Space"
	  SrcPort		  1
	  Points		  [0, 0; 0, 20]
	  Branch {
	    DstBlock		    "Demux"
	    DstPort		    1
	  }
	  Branch {
	    Points		    [0, 180; 70, 0]
	    DstBlock		    "all"
	    DstPort		    1
	  }
	}
      }
    }
    Block {
      BlockType		      Mux
      Name		      "Mux"
      SID		      23
      Ports		      [4, 1]
      Position		      [955, 164, 985, 286]
      ShowName		      off
      FontSize		      12
    }
    Block {
      BlockType		      Mux
      Name		      "Mux1"
      SID		      24
      Ports		      [2, 1]
      Position		      [560, 222, 595, 258]
      ShowName		      off
      Inputs		      "2"
    }
    Block {
      BlockType		      Mux
      Name		      "Mux2"
      SID		      25
      Ports		      [2, 1]
      Position		      [875, 317, 910, 353]
      ShowName		      off
      Inputs		      "2"
    }
    Block {
      BlockType		      Saturate
      Name		      "Sat"
      SID		      27
      Ports		      [1, 1]
      Position		      [475, 85, 505, 115]
      FontSize		      12
      UpperLimit	      "5*pi/180"
      LowerLimit	      "-5*pi/180"
    }
    Block {
      BlockType		      Saturate
      Name		      "Saturation"
      SID		      28
      Ports		      [1, 1]
      Position		      [475, 170, 505, 200]
      FontSize		      12
      UpperLimit	      ".2"
      LowerLimit	      "-.219"
    }
    Block {
      BlockType		      Scope
      Name		      "Scope1"
      SID		      30
      Ports		      [1]
      Position		      [1025, 285, 1055, 315]
      Floating		      off
      Location		      [138, 471, 938, 1018]
      Open		      off
      NumInputPorts	      "1"
      TickLabels	      "on"
      List {
	ListType		AxesTitles
	axes1			"%<SignalLabel>"
      }
      TimeRange		      "300"
      YMax		      "10"
      DataFormat	      "Array"
      SampleTime	      "0"
    }
    Block {
      BlockType		      SubSystem
      Name		      "Signal Builder"
      SID		      32
      Tag		      "STV Subsys"
      Ports		      [0, 1]
      Position		      [15, 100, 90, 140]
      CopyFcn		      "sigbuilder_block('copy');"
      DeleteFcn		      "sigbuilder_block('delete');"
      LoadFcn		      "sigbuilder_block('load');"
      ModelCloseFcn	      "sigbuilder_block('modelClose');"
      PreSaveFcn	      "sigbuilder_block('preSave');"
      StartFcn		      "sigbuilder_block('start');"
      StopFcn		      "sigbuilder_block('stop');"
      NameChangeFcn	      "sigbuilder_block('namechange');"
      ClipboardFcn	      "sigbuilder_block('clipboard');"
      OpenFcn		      "sigbuilder_block('open',[50.25 52.5 519.75 397.5 ]);"
      CloseFcn		      "sigbuilder_block('close');"
      MinAlgLoopOccurrences   off
      PropExecContextOutsideSubsystem off
      RTWSystemCode	      "Auto"
      FunctionWithSeparateData off
      Opaque		      off
      RequestExecContextInheritance off
      MaskHideContents	      on
      MaskType		      "Sigbuilder block"
      MaskDescription	      "Sigbuilder GUI"
      MaskInitialization      "if ~strcmp(get_param(bdroot(gcb),'SimulationStatus'),'stopped') tuvar = sigbuilder_bloc"
      "k('maskInit'); end"
      MaskDisplay	      "plot(0,0,100,100,[10,10,40,40,10],[80,20,20,80,80],[40,10],[50,50], [40,27,10],[65,72,56],[40"
      ",25,25,10],[28,28,43,43]);"
      MaskIconFrame	      on
      MaskIconOpaque	      off
      MaskIconRotate	      "port"
      MaskPortRotate	      "default"
      MaskIconUnits	      "autoscale"
      System {
	Name			"Signal Builder"
	Location		[480, 85, 980, 386]
	Open			off
	ModelBrowserVisibility	off
	ModelBrowserWidth	200
	ScreenColor		"white"
	PaperOrientation	"landscape"
	PaperPositionMode	"auto"
	PaperType		"usletter"
	PaperUnits		"inches"
	TiledPaperMargins	[0.500000, 0.500000, 0.500000, 0.500000]
	TiledPageScale		1
	ShowPageBoundaries	off
	ZoomFactor		"100"
	Block {
	  BlockType		  Demux
	  Name			  "Demux"
	  SID			  33
	  Tag			  "STV Demux"
	  Ports			  [1, 1]
	  Position		  [150, 42, 160, 618]
	  Outputs		  "1"
	}
	Block {
	  BlockType		  FromWorkspace
	  Name			  "FromWs"
	  SID			  34
	  Tag			  "STV FromWs"
	  Position		  [30, 300, 115, 350]
	  VariableName		  "tuvar"
	  SampleTime		  "0"
	  SigBuilderData	  "DataTag0"
	  VnvData		  "DataTag1"
	}
	Block {
	  BlockType		  Outport
	  Name			  "Signal 2"
	  SID			  35
	  Tag			  "STV Outport"
	  Position		  [280, 30, 300, 40]
	  IconDisplay		  "Port number"
	  OutDataType		  "sfix(16)"
	  OutScaling		  "2^0"
	}
	Line {
	  SrcBlock		  "FromWs"
	  SrcPort		  1
	  Points		  [15, 0]
	  DstBlock		  "Demux"
	  DstPort		  1
	}
	Line {
	  SrcBlock		  "Demux"
	  SrcPort		  1
	  DstBlock		  "Signal 2"
	  DstPort		  1
	}
      }
    }
    Block {
      BlockType		      Sum
      Name		      "Sum"
      SID		      36
      Ports		      [2, 1]
      Position		      [410, 82, 440, 113]
      ShowName		      off
      FontSize		      12
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      Sum
      Name		      "Sum1"
      SID		      37
      Ports		      [2, 1]
      Position		      [620, 16, 640, 69]
      BlockMirror	      on
      ShowName		      off
      FontSize		      12
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      Sum
      Name		      "Sum2"
      SID		      38
      Ports		      [2, 1]
      Position		      [255, 87, 285, 118]
      ShowName		      off
      FontSize		      12
      Inputs		      "+-"
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      Sum
      Name		      "Sum3"
      SID		      39
      Ports		      [2, 1]
      Position		      [270, 167, 300, 198]
      ShowName		      off
      FontSize		      12
      Inputs		      "+-"
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
    }
    Block {
      BlockType		      Sum
      Name		      "Sum4"
      SID		      40
      Ports		      [2, 1]
      Position		      [110, 45, 175, 145]
      OutDataType	      "sfix(16)"
      OutScaling	      "2^0"
      Port {
	PortNumber		1
	Name			"h_ref"
	RTWStorageClass		"Auto"
	DataLoggingNameMode	"SignalName"
      }
    }
    Block {
      BlockType		      Terminator
      Name		      "Terminator"
      SID		      41
      Position		      [870, 100, 890, 120]
      ShowName		      off
    }
    Block {
      BlockType		      ToWorkspace
      Name		      "To Workspace"
      SID		      42
      Ports		      [1]
      Position		      [1010, 210, 1070, 240]
      FontSize		      12
      VariableName	      "alt"
      MaxDataPoints	      "inf"
      SampleTime	      "-1"
      SaveFormat	      "Array"
    }
    Block {
      BlockType		      Scope
      Name		      "h vs hc"
      SID		      29
      Ports		      [1]
      Position		      [980, 320, 1010, 350]
      Floating		      off
      Location		      [144, 632, 900, 1005]
      Open		      off
      NumInputPorts	      "1"
      TickLabels	      "on"
      ZoomMode		      "xonly"
      List {
	ListType		AxesTitles
	axes1			"%<SignalLabel>"
      }
      TimeRange		      "300"
      YMin		      "-200"
      YMax		      "1600"
      DataFormat	      "Array"
      SampleTime	      "0"
    }
    Block {
      BlockType		      TransferFcn
      Name		      "height Lead"
      SID		      43
      Position		      [315, 87, 385, 123]
      FontSize		      12
      Numerator		      "K_h*Khn"
      Denominator	      "Khd"
    }
    Line {
      SrcBlock		      "Elevator Lag"
      SrcPort		      1
      DstBlock		      "Longitudinal Model"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Engine Dynamics"
      SrcPort		      1
      DstBlock		      "Longitudinal Model"
      DstPort		      2
    }
    Line {
      SrcBlock		      "Longitudinal Model"
      SrcPort		      3
      Points		      [30, 0; 0, -80]
      DstBlock		      "Gain"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Longitudinal Model"
      SrcPort		      4
      Points		      [40, 0; 0, -130]
      DstBlock		      "Gain1"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Gain1"
      SrcPort		      1
      DstBlock		      "Sum1"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Gain"
      SrcPort		      1
      DstBlock		      "Sum1"
      DstPort		      2
    }
    Line {
      SrcBlock		      "Sum1"
      SrcPort		      1
      Points		      [-220, 0]
      DstBlock		      "Sum"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Engine Lead"
      SrcPort		      1
      DstBlock		      "Gain2"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Gain2"
      SrcPort		      1
      DstBlock		      "Saturation"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Sum2"
      SrcPort		      1
      DstBlock		      "height Lead"
      DstPort		      1
    }
    Line {
      SrcBlock		      "height Lead"
      SrcPort		      1
      DstBlock		      "Sum"
      DstPort		      2
    }
    Line {
      SrcBlock		      "Longitudinal Model"
      SrcPort		      6
      DstBlock		      "Mux"
      DstPort		      2
    }
    Line {
      SrcBlock		      "Clock"
      SrcPort		      1
      DstBlock		      "Mux"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Mux"
      SrcPort		      1
      DstBlock		      "To Workspace"
      DstPort		      1
    }
    Line {
      Name		      "u"
      FontSize		      12
      Labels		      [3, 0]
      SrcBlock		      "Longitudinal Model"
      SrcPort		      1
      Points		      [15, 0; 0, 205; -565, 0; 0, -100]
      DstBlock		      "Sum3"
      DstPort		      2
    }
    Line {
      SrcBlock		      "Sum3"
      SrcPort		      1
      DstBlock		      "Engine Lead"
      DstPort		      1
    }
    Line {
      Name		      "u_ref"
      Labels		      [0, 0]
      SrcBlock		      "Constant"
      SrcPort		      1
      DstBlock		      "Sum3"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Sum"
      SrcPort		      1
      DstBlock		      "Sat"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Longitudinal Model"
      SrcPort		      2
      DstBlock		      "Terminator"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Sat"
      SrcPort		      1
      Points		      [25, 0; 0, 15]
      Branch {
	DstBlock		"Elevator Lag"
	DstPort			1
      }
      Branch {
	Points			[0, 115]
	DstBlock		"Mux1"
	DstPort			1
      }
    }
    Line {
      SrcBlock		      "Saturation"
      SrcPort		      1
      Points		      [10, 0]
      Branch {
	DstBlock		"Engine Dynamics"
	DstPort			1
      }
      Branch {
	Points			[0, 65]
	DstBlock		"Mux1"
	DstPort			2
      }
    }
    Line {
      SrcBlock		      "Mux1"
      SrcPort		      1
      Points		      [290, 0]
      Branch {
	DstBlock		"Mux"
	DstPort			3
      }
      Branch {
	Points			[0, 60]
	DstBlock		"Gain3"
	DstPort			1
      }
    }
    Line {
      Name		      "h_ref"
      SrcBlock		      "Sum4"
      SrcPort		      1
      Points		      [10, 0]
      Branch {
	Points			[0, 250; 660, 0]
	Branch {
	  DstBlock		  "Mux2"
	  DstPort		  2
	}
	Branch {
	  Points		  [0, -75]
	  DstBlock		  "Mux"
	  DstPort		  4
	}
      }
      Branch {
	DstBlock		"Sum2"
	DstPort			1
      }
    }
    Line {
      Name		      "h"
      SrcBlock		      "Longitudinal Model"
      SrcPort		      5
      Points		      [45, 0; 0, 125]
      Branch {
	Points			[0, 15]
	DstBlock		"Mux2"
	DstPort			1
      }
      Branch {
	Points			[0, 15; -635, 0; 0, -215]
	DstBlock		"Sum2"
	DstPort			2
      }
    }
    Line {
      SrcBlock		      "Signal Builder"
      SrcPort		      1
      DstBlock		      "Sum4"
      DstPort		      2
    }
    Line {
      SrcBlock		      "Gain3"
      SrcPort		      1
      DstBlock		      "Scope1"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Mux2"
      SrcPort		      1
      DstBlock		      "h vs hc"
      DstPort		      1
    }
    Line {
      SrcBlock		      "Constant1"
      SrcPort		      1
      DstBlock		      "Sum4"
      DstPort		      1
    }
    Annotation {
      Name		      "Altitude Controller\nUse with Altitude_Controller.m"
      Position		      [257, 372]
    }
    Annotation {
      Name		      "T=alt(:,1);u=alt(:,2);w=alt(:,3);\nq=alt(:,4);theta=alt(:,5);h=alt(:,6);\ndele=alt(:,7);delt=alt(:,"
      "8);href=alt(:,9);"
      Position		      [665, 381]
    }
  }
}
MatData {
  NumRecords		  2
  DataRecord {
    Tag			    DataTag1
    Data		    "  %)30     .    N ,   8    (     @         %    \"     $    !     0         %  0 $0    $   #,    =F5R:6"
    "9Y0FQK4&%T:',   !V97)I9GE\";&M(86YD;&5S '9N=DUG<DED>           86-T:79E1W)O=7        !R97%$:7-P4')C;G0      &)L:T1"
    "I<W!-;V1E        9W)O=7!#;G0           !G<F]U<%)E<4-N=        &=R;W5P1$]/4E-I9       ;6]D96Q(              !B;&]C:"
    "T@              &]V97)I9&53971T:6YG<P        X    P    !@    @    &          4    (               !          D    "
    "     #@   #     &    \"     8         !0    @               $         \"0         .    ,     8    (    !@         "
    "%    \"                0         )          X    P    !@    @    &          4    (               !          D     "
    "    #@   #     &    \"     8         !0    @               $         \"0         .    ,     8    (    !@         %"
    "    \"                0         )          X    P    !@    @    &          4    (               !          D      "
    "   #@   #     &    \"     8         !0    @               $         \"0         .    ,     8    (    !@         % "
    "   \"                0         )          X    X    !@    @    &          4    (     0    $    !          D    (  "
    "      $ \"LI$ .    .     8    (    !@         %    \"     $    !     0         )    \"        !   J5 #@   #     & "
    "   \"     8         !0    @               $         \"0         "
  }
  DataRecord {
    Tag			    DataTag0
    Data		    "  %)30     .    0 L   8    (     @         %    \"     $    !     0         %  0 %@    $   \":    9W)I9"
    "%-E='1I;F<              &-H86YN96QS                  !A>&5S                        8V]M;6]N                     &1"
    "A=&%3970                   !D871A4V5T261X                :7-697)I9FEC871I;VY6:7-I8FQE          X    P    !@    @  "
    "  $          4    (     0    (    !         !   @!O;@  #@   /@$   &    \"     (         !0    @    !     0    $   "
    "      !0 $  H    !    @@   'A$871A      !Y1&%T80      <W1E<%@      '-T97!9      !Y36EN        >4UA>        &-O;&]R"
    "      !L:6YE4W1Y;&4 ;&EN95=I9'1H &QA8F5L      !O=71);F1E>   86QL6$1A=&$  &%L;%E$871A           .    8     8    (  "
    "  !@         %    \"     $    &     0         )    ,                       .4       $!?0       X&5        P<4     "
    "  ,!R0 X   !@    !@    @    &          4    (     0    8    !          D    P                     $!JP       X)!  "
    "     ! 94       %\")0           #@   #@    &    \"     8         !0    @    !     0    $         \"0    @         "
    "      X    X    !@    @    &          4    (     0    $    !          D    (               .    ,     8    (    !@"
    "         %    \"                0         )          X    P    !@    @    &          4    (               !       "
    "   D         #@   $@    &    \"     8         !0    @    !     P    $         \"0   !@   #8@7-&E/;F/P          V(%"
    "S1I3VYC\\.    ,     8    (    !          %    \"     $    !     0         0  $ +0    X    X    !@    @    &       "
    "   4    (     0    $    !          D    (            ^#\\.    .     8    (    !          %    \"     $    (     0 "
    "        0    \"    %-I9VYA;\" R#@   #@    &    \"     8         !0    @    !     0    $         \"0    @          "
    " #P/PX   \"0    !@    @    !          4    (     0    $    !          X   !@    !@    @    &          4    (     0"
    "    8    !          D    P                       Y0       0%]       #@94       #!Q0       P') #@   )     &    \"  "
    "   $         !0    @    !     0    $         #@   &     &    \"     8         !0    @    !    !@    $         \"0 "
    "  #                      0&K       #@D$       $!E0       4(E            .    L $   8    (     @         %    \"   "
    "  $    !     0         %  0 \"P    $    W    8VAA;FYE;',   !Y3&EM         &QA8F5L4&]S    ;&%B96Q(      !L86)E;%!A="
    "&-H   .    .     8    (    !@         %    \"     $    !     0         )    \"            / _#@   $     &    \"   "
    "  8         !0    @    !     @    $         \"0   !           $!_P       0)] #@   #     &    \"     0         !0  "
    "  @    !     @    $         $  \" %1,   .    .     8    (    !@         %    \"     $    !     0         )    \"  "
    "      !  )J= #@   #@    &    \"     8         !0    @    !     0    $         \"0    @        @ +ZE0 X   !H 0  !@ "
    "   @    \"          4    (     0    $    !          4 !  )     0   \"0   !D:7-P5&EM90!D:7-P36]D90!M:6Y4:6UE  !M87A"
    "4:6UE        #@   $     &    \"     8         !0    @    !     @    $         \"0   !                      P') #@ "
    "  #@    &    \"     8         !0    @    !     0    $         \"0    @           #P/PX    X    !@    @    &       "
    "   4    (     0    $    !          D    (               .    .     8    (    !@         %    \"     $    !     0  "
    "       )    \"           P') #@   ( !   &    \"     (         !0    @    !     0    $         !0 $  X    !    .   "
    " &%C=&EV941I<W!)9'@ =&EM95)A;F=E      !N86UE             &1I<W!L87E286YG90  #@   #@    &    \"     8         !0   "
    " @    !     0    $         \"0    @           #P/PX   !     !@    @    &          4    (     0    (    !          "
    "D    0                     ,!R0 X    X    !@    @    $          4    (     0    <    !         !     '    1W)O=7 @"
    ",0 .    0     8    (    !@         %    \"     $    \"     0         )    $                     # <D .    .     8 "
    "   (    !@         %    \"     $    !     0         )    \"            / _#@   #@    &    \"     8         !0    @"
    "    !     0    $         \"0    @               "
  }
}