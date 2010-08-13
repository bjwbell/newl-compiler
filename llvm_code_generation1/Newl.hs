module Main where
import Scanner
import TypeNames
import TypeChecking
import CodeGen

-- parser produced by Happy Version 1.17

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17
	= HappyTerminal Token
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17

action_0 (18) = happyShift action_3
action_0 (4) = happyGoto action_4
action_0 (5) = happyGoto action_2
action_0 _ = happyFail

action_1 (18) = happyShift action_3
action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (18) = happyShift action_8
action_2 (6) = happyGoto action_6
action_2 (7) = happyGoto action_7
action_2 _ = happyReduce_5

action_3 (38) = happyShift action_5
action_3 _ = happyFail

action_4 (54) = happyAccept
action_4 _ = happyFail

action_5 (40) = happyShift action_11
action_5 _ = happyFail

action_6 _ = happyReduce_1

action_7 (18) = happyShift action_8
action_7 (54) = happyReduce_5
action_7 (6) = happyGoto action_10
action_7 (7) = happyGoto action_7
action_7 _ = happyReduce_5

action_8 (38) = happyShift action_9
action_8 _ = happyFail

action_9 (40) = happyShift action_13
action_9 _ = happyFail

action_10 _ = happyReduce_4

action_11 (24) = happyShift action_12
action_11 _ = happyFail

action_12 (21) = happyShift action_21
action_12 _ = happyFail

action_13 (20) = happyShift action_16
action_13 (27) = happyShift action_17
action_13 (28) = happyShift action_18
action_13 (38) = happyShift action_19
action_13 (39) = happyShift action_20
action_13 (10) = happyGoto action_14
action_13 (12) = happyGoto action_15
action_13 _ = happyReduce_13

action_14 (24) = happyShift action_26
action_14 (8) = happyGoto action_24
action_14 (9) = happyGoto action_25
action_14 _ = happyReduce_9

action_15 (38) = happyShift action_23
action_15 _ = happyFail

action_16 _ = happyReduce_19

action_17 _ = happyReduce_18

action_18 _ = happyReduce_17

action_19 _ = happyReduce_20

action_20 _ = happyReduce_21

action_21 (22) = happyShift action_22
action_21 _ = happyFail

action_22 (23) = happyShift action_31
action_22 _ = happyFail

action_23 (49) = happyShift action_30
action_23 _ = happyFail

action_24 (41) = happyShift action_29
action_24 _ = happyFail

action_25 (24) = happyShift action_26
action_25 (41) = happyReduce_9
action_25 (8) = happyGoto action_28
action_25 (9) = happyGoto action_25
action_25 _ = happyReduce_9

action_26 (20) = happyShift action_16
action_26 (27) = happyShift action_17
action_26 (28) = happyShift action_18
action_26 (38) = happyShift action_19
action_26 (39) = happyShift action_20
action_26 (12) = happyGoto action_27
action_26 _ = happyFail

action_27 (38) = happyShift action_34
action_27 _ = happyFail

action_28 _ = happyReduce_8

action_29 _ = happyReduce_6

action_30 (20) = happyShift action_16
action_30 (24) = happyReduce_13
action_30 (25) = happyReduce_13
action_30 (27) = happyShift action_17
action_30 (28) = happyShift action_18
action_30 (29) = happyReduce_13
action_30 (35) = happyReduce_13
action_30 (38) = happyShift action_19
action_30 (39) = happyShift action_20
action_30 (40) = happyReduce_13
action_30 (41) = happyReduce_13
action_30 (53) = happyReduce_13
action_30 (10) = happyGoto action_33
action_30 (12) = happyGoto action_15
action_30 _ = happyReduce_13

action_31 (47) = happyShift action_32
action_31 _ = happyFail

action_32 (39) = happyShift action_36
action_32 _ = happyFail

action_33 _ = happyReduce_12

action_34 (47) = happyShift action_35
action_34 _ = happyFail

action_35 (20) = happyShift action_16
action_35 (27) = happyShift action_17
action_35 (28) = happyShift action_18
action_35 (38) = happyShift action_19
action_35 (39) = happyShift action_20
action_35 (11) = happyGoto action_38
action_35 (12) = happyGoto action_39
action_35 _ = happyReduce_16

action_36 (38) = happyShift action_37
action_36 _ = happyFail

action_37 (48) = happyShift action_42
action_37 _ = happyFail

action_38 (48) = happyShift action_41
action_38 _ = happyFail

action_39 (38) = happyShift action_40
action_39 _ = happyFail

action_40 (20) = happyShift action_16
action_40 (27) = happyShift action_17
action_40 (28) = happyShift action_18
action_40 (38) = happyShift action_19
action_40 (39) = happyShift action_20
action_40 (48) = happyReduce_16
action_40 (11) = happyGoto action_45
action_40 (12) = happyGoto action_39
action_40 _ = happyReduce_16

action_41 (40) = happyShift action_44
action_41 _ = happyFail

action_42 (40) = happyShift action_43
action_42 _ = happyFail

action_43 (29) = happyShift action_48
action_43 (35) = happyShift action_49
action_43 (38) = happyShift action_50
action_43 (40) = happyShift action_51
action_43 (53) = happyShift action_52
action_43 (13) = happyGoto action_47
action_43 _ = happyFail

action_44 (20) = happyShift action_16
action_44 (27) = happyShift action_17
action_44 (28) = happyShift action_18
action_44 (38) = happyShift action_19
action_44 (39) = happyShift action_20
action_44 (10) = happyGoto action_46
action_44 (12) = happyGoto action_15
action_44 _ = happyReduce_13

action_45 _ = happyReduce_15

action_46 (29) = happyShift action_48
action_46 (35) = happyShift action_49
action_46 (38) = happyShift action_50
action_46 (40) = happyShift action_51
action_46 (53) = happyShift action_52
action_46 (13) = happyGoto action_54
action_46 (14) = happyGoto action_61
action_46 _ = happyReduce_30

action_47 (41) = happyShift action_60
action_47 _ = happyFail

action_48 (47) = happyShift action_59
action_48 _ = happyFail

action_49 (47) = happyShift action_58
action_49 _ = happyFail

action_50 (43) = happyShift action_56
action_50 (52) = happyShift action_57
action_50 _ = happyFail

action_51 (29) = happyShift action_48
action_51 (35) = happyShift action_49
action_51 (38) = happyShift action_50
action_51 (40) = happyShift action_51
action_51 (53) = happyShift action_52
action_51 (13) = happyGoto action_54
action_51 (14) = happyGoto action_55
action_51 _ = happyReduce_30

action_52 (47) = happyShift action_53
action_52 _ = happyFail

action_53 (19) = happyShift action_66
action_53 (31) = happyShift action_67
action_53 (32) = happyShift action_68
action_53 (33) = happyShift action_69
action_53 (36) = happyShift action_70
action_53 (37) = happyShift action_71
action_53 (38) = happyShift action_72
action_53 (47) = happyShift action_73
action_53 (51) = happyShift action_74
action_53 (15) = happyGoto action_79
action_53 _ = happyFail

action_54 _ = happyReduce_28

action_55 (29) = happyShift action_48
action_55 (35) = happyShift action_49
action_55 (38) = happyShift action_50
action_55 (40) = happyShift action_51
action_55 (41) = happyShift action_78
action_55 (53) = happyShift action_52
action_55 (13) = happyGoto action_62
action_55 _ = happyFail

action_56 (19) = happyShift action_66
action_56 (31) = happyShift action_67
action_56 (32) = happyShift action_68
action_56 (33) = happyShift action_69
action_56 (36) = happyShift action_70
action_56 (37) = happyShift action_71
action_56 (38) = happyShift action_72
action_56 (47) = happyShift action_73
action_56 (51) = happyShift action_74
action_56 (15) = happyGoto action_77
action_56 _ = happyFail

action_57 (19) = happyShift action_66
action_57 (31) = happyShift action_67
action_57 (32) = happyShift action_68
action_57 (33) = happyShift action_69
action_57 (36) = happyShift action_70
action_57 (37) = happyShift action_71
action_57 (38) = happyShift action_72
action_57 (47) = happyShift action_73
action_57 (51) = happyShift action_74
action_57 (15) = happyGoto action_76
action_57 _ = happyFail

action_58 (19) = happyShift action_66
action_58 (31) = happyShift action_67
action_58 (32) = happyShift action_68
action_58 (33) = happyShift action_69
action_58 (36) = happyShift action_70
action_58 (37) = happyShift action_71
action_58 (38) = happyShift action_72
action_58 (47) = happyShift action_73
action_58 (51) = happyShift action_74
action_58 (15) = happyGoto action_75
action_58 _ = happyFail

action_59 (19) = happyShift action_66
action_59 (31) = happyShift action_67
action_59 (32) = happyShift action_68
action_59 (33) = happyShift action_69
action_59 (36) = happyShift action_70
action_59 (37) = happyShift action_71
action_59 (38) = happyShift action_72
action_59 (47) = happyShift action_73
action_59 (51) = happyShift action_74
action_59 (15) = happyGoto action_65
action_59 _ = happyFail

action_60 (41) = happyShift action_64
action_60 _ = happyFail

action_61 (25) = happyShift action_63
action_61 (29) = happyShift action_48
action_61 (35) = happyShift action_49
action_61 (38) = happyShift action_50
action_61 (40) = happyShift action_51
action_61 (53) = happyShift action_52
action_61 (13) = happyGoto action_62
action_61 _ = happyFail

action_62 _ = happyReduce_29

action_63 (19) = happyShift action_66
action_63 (31) = happyShift action_67
action_63 (32) = happyShift action_68
action_63 (33) = happyShift action_69
action_63 (36) = happyShift action_70
action_63 (37) = happyShift action_71
action_63 (38) = happyShift action_72
action_63 (47) = happyShift action_73
action_63 (51) = happyShift action_74
action_63 (15) = happyGoto action_95
action_63 _ = happyFail

action_64 _ = happyReduce_2

action_65 (43) = happyShift action_80
action_65 (45) = happyShift action_81
action_65 (46) = happyShift action_82
action_65 (48) = happyShift action_94
action_65 (50) = happyShift action_84
action_65 _ = happyFail

action_66 (20) = happyShift action_90
action_66 (27) = happyShift action_91
action_66 (28) = happyShift action_92
action_66 (38) = happyShift action_93
action_66 _ = happyFail

action_67 _ = happyReduce_38

action_68 _ = happyReduce_39

action_69 _ = happyReduce_41

action_70 _ = happyReduce_36

action_71 _ = happyReduce_37

action_72 _ = happyReduce_40

action_73 (19) = happyShift action_66
action_73 (31) = happyShift action_67
action_73 (32) = happyShift action_68
action_73 (33) = happyShift action_69
action_73 (36) = happyShift action_70
action_73 (37) = happyShift action_71
action_73 (38) = happyShift action_72
action_73 (47) = happyShift action_73
action_73 (51) = happyShift action_74
action_73 (15) = happyGoto action_89
action_73 _ = happyFail

action_74 (19) = happyShift action_66
action_74 (31) = happyShift action_67
action_74 (32) = happyShift action_68
action_74 (33) = happyShift action_69
action_74 (36) = happyShift action_70
action_74 (37) = happyShift action_71
action_74 (38) = happyShift action_72
action_74 (47) = happyShift action_73
action_74 (51) = happyShift action_74
action_74 (15) = happyGoto action_88
action_74 _ = happyFail

action_75 (43) = happyShift action_80
action_75 (45) = happyShift action_81
action_75 (46) = happyShift action_82
action_75 (48) = happyShift action_87
action_75 (50) = happyShift action_84
action_75 _ = happyFail

action_76 (43) = happyShift action_80
action_76 (45) = happyShift action_81
action_76 (46) = happyShift action_82
action_76 (49) = happyShift action_86
action_76 (50) = happyShift action_84
action_76 _ = happyFail

action_77 (43) = happyShift action_80
action_77 (44) = happyShift action_85
action_77 (45) = happyShift action_81
action_77 (46) = happyShift action_82
action_77 (50) = happyShift action_84
action_77 _ = happyFail

action_78 _ = happyReduce_22

action_79 (43) = happyShift action_80
action_79 (45) = happyShift action_81
action_79 (46) = happyShift action_82
action_79 (48) = happyShift action_83
action_79 (50) = happyShift action_84
action_79 _ = happyFail

action_80 (19) = happyShift action_66
action_80 (31) = happyShift action_67
action_80 (32) = happyShift action_68
action_80 (33) = happyShift action_69
action_80 (36) = happyShift action_70
action_80 (37) = happyShift action_71
action_80 (38) = happyShift action_72
action_80 (47) = happyShift action_73
action_80 (51) = happyShift action_74
action_80 (15) = happyGoto action_111
action_80 _ = happyFail

action_81 (19) = happyShift action_66
action_81 (31) = happyShift action_67
action_81 (32) = happyShift action_68
action_81 (33) = happyShift action_69
action_81 (36) = happyShift action_70
action_81 (37) = happyShift action_71
action_81 (38) = happyShift action_72
action_81 (47) = happyShift action_73
action_81 (51) = happyShift action_74
action_81 (15) = happyGoto action_110
action_81 _ = happyFail

action_82 (19) = happyShift action_66
action_82 (31) = happyShift action_67
action_82 (32) = happyShift action_68
action_82 (33) = happyShift action_69
action_82 (36) = happyShift action_70
action_82 (37) = happyShift action_71
action_82 (38) = happyShift action_72
action_82 (47) = happyShift action_73
action_82 (51) = happyShift action_74
action_82 (15) = happyGoto action_109
action_82 _ = happyFail

action_83 (49) = happyShift action_108
action_83 _ = happyFail

action_84 (34) = happyShift action_106
action_84 (38) = happyShift action_107
action_84 _ = happyFail

action_85 (52) = happyShift action_105
action_85 _ = happyFail

action_86 _ = happyReduce_26

action_87 (29) = happyShift action_48
action_87 (35) = happyShift action_49
action_87 (38) = happyShift action_50
action_87 (40) = happyShift action_51
action_87 (53) = happyShift action_52
action_87 (13) = happyGoto action_104
action_87 _ = happyFail

action_88 (43) = happyShift action_80
action_88 (45) = happyShift action_81
action_88 (46) = happyShift action_82
action_88 (50) = happyShift action_84
action_88 _ = happyReduce_47

action_89 (43) = happyShift action_80
action_89 (45) = happyShift action_81
action_89 (46) = happyShift action_82
action_89 (48) = happyShift action_103
action_89 (50) = happyShift action_84
action_89 _ = happyFail

action_90 (43) = happyShift action_102
action_90 _ = happyFail

action_91 (43) = happyShift action_101
action_91 _ = happyFail

action_92 (43) = happyShift action_100
action_92 _ = happyFail

action_93 (43) = happyShift action_98
action_93 (47) = happyShift action_99
action_93 _ = happyFail

action_94 (29) = happyShift action_48
action_94 (35) = happyShift action_49
action_94 (38) = happyShift action_50
action_94 (40) = happyShift action_51
action_94 (53) = happyShift action_52
action_94 (13) = happyGoto action_97
action_94 _ = happyFail

action_95 (43) = happyShift action_80
action_95 (45) = happyShift action_81
action_95 (46) = happyShift action_82
action_95 (49) = happyShift action_96
action_95 (50) = happyShift action_84
action_95 _ = happyFail

action_96 (41) = happyShift action_121
action_96 _ = happyFail

action_97 (30) = happyShift action_120
action_97 _ = happyFail

action_98 (19) = happyShift action_66
action_98 (31) = happyShift action_67
action_98 (32) = happyShift action_68
action_98 (33) = happyShift action_69
action_98 (36) = happyShift action_70
action_98 (37) = happyShift action_71
action_98 (38) = happyShift action_72
action_98 (47) = happyShift action_73
action_98 (51) = happyShift action_74
action_98 (15) = happyGoto action_119
action_98 _ = happyFail

action_99 (48) = happyShift action_118
action_99 _ = happyFail

action_100 (19) = happyShift action_66
action_100 (31) = happyShift action_67
action_100 (32) = happyShift action_68
action_100 (33) = happyShift action_69
action_100 (36) = happyShift action_70
action_100 (37) = happyShift action_71
action_100 (38) = happyShift action_72
action_100 (47) = happyShift action_73
action_100 (51) = happyShift action_74
action_100 (15) = happyGoto action_117
action_100 _ = happyFail

action_101 (19) = happyShift action_66
action_101 (31) = happyShift action_67
action_101 (32) = happyShift action_68
action_101 (33) = happyShift action_69
action_101 (36) = happyShift action_70
action_101 (37) = happyShift action_71
action_101 (38) = happyShift action_72
action_101 (47) = happyShift action_73
action_101 (51) = happyShift action_74
action_101 (15) = happyGoto action_116
action_101 _ = happyFail

action_102 (19) = happyShift action_66
action_102 (31) = happyShift action_67
action_102 (32) = happyShift action_68
action_102 (33) = happyShift action_69
action_102 (36) = happyShift action_70
action_102 (37) = happyShift action_71
action_102 (38) = happyShift action_72
action_102 (47) = happyShift action_73
action_102 (51) = happyShift action_74
action_102 (15) = happyGoto action_115
action_102 _ = happyFail

action_103 _ = happyReduce_48

action_104 _ = happyReduce_24

action_105 (19) = happyShift action_66
action_105 (31) = happyShift action_67
action_105 (32) = happyShift action_68
action_105 (33) = happyShift action_69
action_105 (36) = happyShift action_70
action_105 (37) = happyShift action_71
action_105 (38) = happyShift action_72
action_105 (47) = happyShift action_73
action_105 (51) = happyShift action_74
action_105 (15) = happyGoto action_114
action_105 _ = happyFail

action_106 _ = happyReduce_34

action_107 (47) = happyShift action_113
action_107 _ = happyFail

action_108 _ = happyReduce_25

action_109 (43) = happyShift action_80
action_109 (45) = happyShift action_81
action_109 (46) = happyShift action_82
action_109 (50) = happyShift action_84
action_109 _ = happyReduce_32

action_110 (43) = happyShift action_80
action_110 (45) = happyShift action_81
action_110 (46) = happyShift action_82
action_110 (50) = happyShift action_84
action_110 _ = happyReduce_31

action_111 (43) = happyShift action_80
action_111 (44) = happyShift action_112
action_111 (45) = happyShift action_81
action_111 (46) = happyShift action_82
action_111 (50) = happyShift action_84
action_111 _ = happyFail

action_112 _ = happyReduce_33

action_113 (19) = happyShift action_66
action_113 (31) = happyShift action_67
action_113 (32) = happyShift action_68
action_113 (33) = happyShift action_69
action_113 (36) = happyShift action_70
action_113 (37) = happyShift action_71
action_113 (38) = happyShift action_72
action_113 (47) = happyShift action_73
action_113 (51) = happyShift action_74
action_113 (15) = happyGoto action_128
action_113 (16) = happyGoto action_129
action_113 _ = happyReduce_51

action_114 (43) = happyShift action_80
action_114 (45) = happyShift action_81
action_114 (46) = happyShift action_82
action_114 (49) = happyShift action_127
action_114 (50) = happyShift action_84
action_114 _ = happyFail

action_115 (43) = happyShift action_80
action_115 (44) = happyShift action_126
action_115 (45) = happyShift action_81
action_115 (46) = happyShift action_82
action_115 (50) = happyShift action_84
action_115 _ = happyFail

action_116 (43) = happyShift action_80
action_116 (44) = happyShift action_125
action_116 (45) = happyShift action_81
action_116 (46) = happyShift action_82
action_116 (50) = happyShift action_84
action_116 _ = happyFail

action_117 (43) = happyShift action_80
action_117 (44) = happyShift action_124
action_117 (45) = happyShift action_81
action_117 (46) = happyShift action_82
action_117 (50) = happyShift action_84
action_117 _ = happyFail

action_118 _ = happyReduce_46

action_119 (43) = happyShift action_80
action_119 (44) = happyShift action_123
action_119 (45) = happyShift action_81
action_119 (46) = happyShift action_82
action_119 (50) = happyShift action_84
action_119 _ = happyFail

action_120 (29) = happyShift action_48
action_120 (35) = happyShift action_49
action_120 (38) = happyShift action_50
action_120 (40) = happyShift action_51
action_120 (53) = happyShift action_52
action_120 (13) = happyGoto action_122
action_120 _ = happyFail

action_121 _ = happyReduce_10

action_122 _ = happyReduce_23

action_123 _ = happyReduce_45

action_124 _ = happyReduce_43

action_125 _ = happyReduce_42

action_126 _ = happyReduce_44

action_127 _ = happyReduce_27

action_128 (42) = happyShift action_132
action_128 (43) = happyShift action_80
action_128 (45) = happyShift action_81
action_128 (46) = happyShift action_82
action_128 (50) = happyShift action_84
action_128 (17) = happyGoto action_131
action_128 _ = happyReduce_49

action_129 (48) = happyShift action_130
action_129 _ = happyFail

action_130 _ = happyReduce_35

action_131 _ = happyReduce_50

action_132 (19) = happyShift action_66
action_132 (31) = happyShift action_67
action_132 (32) = happyShift action_68
action_132 (33) = happyShift action_69
action_132 (36) = happyShift action_70
action_132 (37) = happyShift action_71
action_132 (38) = happyShift action_72
action_132 (47) = happyShift action_73
action_132 (51) = happyShift action_74
action_132 (15) = happyGoto action_133
action_132 _ = happyFail

action_133 (43) = happyShift action_80
action_133 (45) = happyShift action_81
action_133 (46) = happyShift action_82
action_133 (50) = happyShift action_84
action_133 _ = happyReduce_52

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Program happy_var_1 happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 15 5 happyReduction_2
happyReduction_2 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_13) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_10)) `HappyStk`
	(HappyTerminal (TIdentArray _ happy_var_9)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (if happy_var_9 /= "string[]" then error(happy_var_9 ++ " used in class " ++ happy_var_2 ++ " main declaration instead of string[]") else MClass happy_var_2 happy_var_10 happy_var_13
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  6 happyReduction_3
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (ClassDeclList happy_var_1 CEmpty
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  6 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (ClassDeclList happy_var_1 happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_0  6 happyReduction_5
happyReduction_5  =  HappyAbsSyn6
		 (CEmpty
	)

happyReduce_6 = happyReduce 6 7 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ClassDecl happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  8 happyReduction_7
happyReduction_7 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (MethodDeclList happy_var_1 MEmpty
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  8 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (MethodDeclList happy_var_1 happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_0  8 happyReduction_9
happyReduction_9  =  HappyAbsSyn8
		 (MEmpty
	)

happyReduce_10 = happyReduce 13 9 happyReduction_10
happyReduction_10 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_11) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_9) `HappyStk`
	(HappyAbsSyn10  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (MethodDecl happy_var_2 happy_var_3 happy_var_5 happy_var_8 happy_var_9 happy_var_11
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  10 happyReduction_11
happyReduction_11 _
	(HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn10
		 (VarDeclList happy_var_1 happy_var_2 VEmpty
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 10 happyReduction_12
happyReduction_12 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	(HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (VarDeclList happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_0  10 happyReduction_13
happyReduction_13  =  HappyAbsSyn10
		 (VEmpty
	)

happyReduce_14 = happySpecReduce_2  11 happyReduction_14
happyReduction_14 (HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (FormalList happy_var_1 happy_var_2 FEmpty
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  11 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_3)
	(HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (FormalList happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_0  11 happyReduction_16
happyReduction_16  =  HappyAbsSyn11
		 (FEmpty
	)

happyReduce_17 = happySpecReduce_1  12 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn12
		 (TypeBool
	)

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn12
		 (TypeInt
	)

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn12
		 (TypeString
	)

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn12
		 (TypeIdent happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 (HappyTerminal (TIdentArray _ happy_var_1))
	 =  HappyAbsSyn12
		 (TypeIdentArray happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  13 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (SList happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 7 13 happyReduction_23
happyReduction_23 ((HappyAbsSyn13  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SIfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 5 13 happyReduction_24
happyReduction_24 ((HappyAbsSyn13  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 5 13 happyReduction_25
happyReduction_25 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SPrint happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 4 13 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SEqual happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 7 13 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SArrayEqual happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_1  14 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (StatementList Empty happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  14 happyReduction_29
happyReduction_29 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (StatementList happy_var_1 happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_0  14 happyReduction_30
happyReduction_30  =  HappyAbsSyn14
		 (Empty
	)

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn15  happy_var_3)
	(HappyTerminal (TOp _ happy_var_2))
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpOp happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  15 happyReduction_32
happyReduction_32 (HappyAbsSyn15  happy_var_3)
	(HappyTerminal (TComOp _ happy_var_2))
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpComOp happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 4 15 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpArray happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  15 happyReduction_34
happyReduction_34 _
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpLength happy_var_1
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 6 15 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpFCall happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_1  15 happyReduction_36
happyReduction_36 (HappyTerminal (TIntLiteral _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpInt happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 (HappyTerminal (TStringLiteral _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpString happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn15
		 (ExpBool True
	)

happyReduce_39 = happySpecReduce_1  15 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn15
		 (ExpBool False
	)

happyReduce_40 = happySpecReduce_1  15 happyReduction_40
happyReduction_40 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpIdent happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  15 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn15
		 (ExpThis
	)

happyReduce_42 = happyReduce 5 15 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewIntArray happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 5 15 happyReduction_43
happyReduction_43 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewStringArray happy_var_4
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 5 15 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewBoolArray happy_var_4
	) `HappyStk` happyRest

happyReduce_45 = happyReduce 5 15 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewIdentArray happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_46 = happyReduce 4 15 happyReduction_46
happyReduction_46 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewIdent happy_var_2
	) `HappyStk` happyRest

happyReduce_47 = happySpecReduce_2  15 happyReduction_47
happyReduction_47 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (ExpNot happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  15 happyReduction_48
happyReduction_48 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (ExpExp happy_var_2
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  16 happyReduction_49
happyReduction_49 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (ExpListExp happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  16 happyReduction_50
happyReduction_50 (HappyAbsSyn17  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (ExpList happy_var_1 happy_var_2
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_0  16 happyReduction_51
happyReduction_51  =  HappyAbsSyn16
		 (ExpListEmpty
	)

happyReduce_52 = happySpecReduce_2  17 happyReduction_52
happyReduction_52 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (ExpRest happy_var_2
	)
happyReduction_52 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 54 54 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TClass _ -> cont 18;
	TNew _ -> cont 19;
	TString _ -> cont 20;
	TStatic _ -> cont 21;
	TVoid _ -> cont 22;
	TMain _ -> cont 23;
	TPublic _ -> cont 24;
	TReturn _ -> cont 25;
	TExtend _ -> cont 26;
	TInt _ -> cont 27;
	TBool _ -> cont 28;
	TIf _ -> cont 29;
	TElse _ -> cont 30;
	TTrue _ -> cont 31;
	TFalse _ -> cont 32;
	TThis _ -> cont 33;
	TLength _ -> cont 34;
	TWhile _ -> cont 35;
	TIntLiteral _ happy_dollar_dollar -> cont 36;
	TStringLiteral _ happy_dollar_dollar -> cont 37;
	TIdent _ happy_dollar_dollar -> cont 38;
	TIdentArray _ happy_dollar_dollar -> cont 39;
	TLeftBrace _ -> cont 40;
	TRightBrace _ -> cont 41;
	TComma _ -> cont 42;
	TLeftBrack _ -> cont 43;
	TRightBrack _ -> cont 44;
	TOp _ happy_dollar_dollar -> cont 45;
	TComOp _ happy_dollar_dollar -> cont 46;
	TLeftParen _ -> cont 47;
	TRightParen _ -> cont 48;
	TSemiColon _ -> cont 49;
	TPeriod _ -> cont 50;
	TNot _ -> cont 51;
	TEquals _ -> cont 52;
	TPrint _ -> cont 53;
	_ -> happyError' (tk:tks)
	}

happyError_ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [Token] -> HappyIdentity a
happyError' = HappyIdentity . parseError

newl tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError tokenList = let pos = tokenPosn(head(tokenList)) 
  in 
  error ("parse error at line " ++ show(getLineNum(pos)) ++ " and column " ++ show(getColumnNum(pos)) ++ ", token " ++ show(head(tokenList)))


main = do 
  inStr <- getContents
  let parseTree = newl (alexScanTokens2 inStr)  
  putStrLn ("parseTree: " ++ show(parseTree))
  let defaultClasses = [("int", ClassSymbol "int" [] []), ("string", ClassSymbol "string" [] []), ("bool", ClassSymbol "bool" [] [])]
  let classes = defaultClasses ++ classSymbols parseTree
  putStrLn "classes " 
  print classes
  let typeCheckingResult = typeCheck parseTree classes
  if typeCheckingResult == "Ok"
     then putStrLn "Semantic Analysis Results: Passed"
     else putStrLn ("Semantic Analysis Results: Failed, " ++ typeCheckingResult)
  
--putStrLn ("parseTree: " ++ show(parseTree))
  codeGenResult <- codeGen parseTree
--  print "codeGenResult" ++ codeGenResult
  print "done"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 28 "templates/GenericTemplate.hs" #-}








{-# LINE 49 "templates/GenericTemplate.hs" #-}

{-# LINE 59 "templates/GenericTemplate.hs" #-}

{-# LINE 68 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where sts1@(((st1@(HappyState (action))):(_))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where sts1@(((st1@(HappyState (action))):(_))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 253 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail  (1) tk old_st _ stk =
--	trace "failing" $ 
    	happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 317 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
