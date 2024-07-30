set lang "C++"
set moduleName "myproject"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "input_images"
set BitWidth0 "8"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set structMem0 ""
set PortName00 "data"
set BitWidth00 "8"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list  1]
set Interface00 "wire"
set DataType00 "[list ap_fixed 8 2 0 0 0 ]"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set DataType0tp1 "unsigned int"
set structParameter0 [list [list typename T] [list $DataType0tp1 N] ]
set DataType0ta0 "[list ap_fixed 8 2 0 0 0 ]"
set structArgument0 [list $DataType0ta0 1 ]
set SpaceName00 "nnet"
set NameSpace0 [list  [list  space $SpaceName00] ]
set structIsPacked0 "1"
set DataType0 [list "nnet::array<ap_fixed<8, 2, 0, 0, 0>, 1>" "struct array" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "pos_enc_main"
set BitWidth1 "32"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "2"
set Reference1 "1"
set Dims1 [list 0]
set Interface1 [list AP_STREAM 0] 
set structMem1 ""
set PortName10 "data"
set BitWidth10 "32"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list  4]
set Interface10 "wire"
set DataType10 "[list ap_fixed 8 2 0 0 0 ]"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set DataType1tp1 "unsigned int"
set structParameter1 [list [list typename T] [list $DataType1tp1 N] ]
set DataType1ta0 "[list ap_fixed 8 2 0 0 0 ]"
set structArgument1 [list $DataType1ta0 4 ]
set SpaceName10 "nnet"
set NameSpace1 [list  [list  space $SpaceName10] ]
set structIsPacked1 "1"
set DataType1 [list "nnet::array<ap_fixed<8, 2, 0, 0, 0>, 4>" "struct array" $structMem1 1 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "pos_enc_bottleneck"
set BitWidth2 "32"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "2"
set Reference2 "1"
set Dims2 [list 0]
set Interface2 [list AP_STREAM 0] 
set structMem2 ""
set PortName20 "data"
set BitWidth20 "32"
set ArrayOpt20 ""
set Const20 "0"
set Volatile20 "0"
set Pointer20 "0"
set Reference20 "0"
set Dims20 [list  4]
set Interface20 "wire"
set DataType20 "[list ap_fixed 8 2 0 0 0 ]"
set Port20 [list $PortName20 $Interface20 $DataType20 $Pointer20 $Dims20 $Const20 $Volatile20 $ArrayOpt20]
lappend structMem2 $Port20
set DataType2tp1 "unsigned int"
set structParameter2 [list [list typename T] [list $DataType2tp1 N] ]
set DataType2ta0 "[list ap_fixed 8 2 0 0 0 ]"
set structArgument2 [list $DataType2ta0 4 ]
set SpaceName20 "nnet"
set NameSpace2 [list  [list  space $SpaceName20] ]
set structIsPacked2 "1"
set DataType2 [list "nnet::array<ap_fixed<8, 2, 0, 0, 0>, 4>" "struct array" $structMem2 1 0 $structParameter2 $structArgument2 $NameSpace2 $structIsPacked2]
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "layer48_out"
set BitWidth3 "8"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "2"
set Reference3 "1"
set Dims3 [list 0]
set Interface3 [list AP_STREAM 0] 
set structMem3 ""
set PortName30 "data"
set BitWidth30 "8"
set ArrayOpt30 ""
set Const30 "0"
set Volatile30 "0"
set Pointer30 "0"
set Reference30 "0"
set Dims30 [list  1]
set Interface30 "wire"
set DataType30 "[list ap_fixed 8 2 0 0 0 ]"
set Port30 [list $PortName30 $Interface30 $DataType30 $Pointer30 $Dims30 $Const30 $Volatile30 $ArrayOpt30]
lappend structMem3 $Port30
set DataType3tp1 "unsigned int"
set structParameter3 [list [list typename T] [list $DataType3tp1 N] ]
set DataType3ta0 "[list ap_fixed 8 2 0 0 0 ]"
set structArgument3 [list $DataType3ta0 1 ]
set SpaceName30 "nnet"
set NameSpace3 [list  [list  space $SpaceName30] ]
set structIsPacked3 "1"
set DataType3 [list "nnet::array<ap_fixed<8, 2, 0, 0, 0>, 1>" "struct array" $structMem3 1 0 $structParameter3 $structArgument3 $NameSpace3 $structIsPacked3]
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 1 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
