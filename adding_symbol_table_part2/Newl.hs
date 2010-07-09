{-# OPTIONS_GHC -fno-warn-overlapping-patterns #-}
module Main where
import Scanner

-- parser produced by Happy Version 1.18.4

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17
	= HappyTerminal (Token)
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

action_9 (26) = happyShift action_13
action_9 (40) = happyShift action_14
action_9 _ = happyFail

action_10 _ = happyReduce_4

action_11 (24) = happyShift action_12
action_11 _ = happyFail

action_12 (21) = happyShift action_23
action_12 _ = happyFail

action_13 (38) = happyShift action_22
action_13 _ = happyFail

action_14 (20) = happyShift action_17
action_14 (27) = happyShift action_18
action_14 (28) = happyShift action_19
action_14 (38) = happyShift action_20
action_14 (39) = happyShift action_21
action_14 (10) = happyGoto action_15
action_14 (12) = happyGoto action_16
action_14 _ = happyReduce_14

action_15 (24) = happyShift action_29
action_15 (8) = happyGoto action_27
action_15 (9) = happyGoto action_28
action_15 _ = happyReduce_10

action_16 (38) = happyShift action_26
action_16 _ = happyFail

action_17 _ = happyReduce_19

action_18 _ = happyReduce_18

action_19 _ = happyReduce_17

action_20 _ = happyReduce_20

action_21 _ = happyReduce_21

action_22 (40) = happyShift action_25
action_22 _ = happyFail

action_23 (22) = happyShift action_24
action_23 _ = happyFail

action_24 (23) = happyShift action_35
action_24 _ = happyFail

action_25 (20) = happyShift action_17
action_25 (27) = happyShift action_18
action_25 (28) = happyShift action_19
action_25 (38) = happyShift action_20
action_25 (39) = happyShift action_21
action_25 (10) = happyGoto action_34
action_25 (12) = happyGoto action_16
action_25 _ = happyReduce_14

action_26 (49) = happyShift action_33
action_26 _ = happyFail

action_27 (41) = happyShift action_32
action_27 _ = happyFail

action_28 (24) = happyShift action_29
action_28 (41) = happyReduce_10
action_28 (8) = happyGoto action_31
action_28 (9) = happyGoto action_28
action_28 _ = happyReduce_10

action_29 (20) = happyShift action_17
action_29 (27) = happyShift action_18
action_29 (28) = happyShift action_19
action_29 (38) = happyShift action_20
action_29 (39) = happyShift action_21
action_29 (12) = happyGoto action_30
action_29 _ = happyFail

action_30 (38) = happyShift action_39
action_30 _ = happyFail

action_31 _ = happyReduce_9

action_32 _ = happyReduce_6

action_33 (20) = happyShift action_17
action_33 (24) = happyReduce_14
action_33 (27) = happyShift action_18
action_33 (28) = happyShift action_19
action_33 (29) = happyReduce_14
action_33 (35) = happyReduce_14
action_33 (38) = happyShift action_20
action_33 (39) = happyShift action_21
action_33 (40) = happyReduce_14
action_33 (41) = happyReduce_14
action_33 (53) = happyReduce_14
action_33 (10) = happyGoto action_38
action_33 (12) = happyGoto action_16
action_33 _ = happyReduce_14

action_34 (24) = happyShift action_29
action_34 (8) = happyGoto action_37
action_34 (9) = happyGoto action_28
action_34 _ = happyReduce_10

action_35 (47) = happyShift action_36
action_35 _ = happyFail

action_36 (39) = happyShift action_42
action_36 _ = happyFail

action_37 (41) = happyShift action_41
action_37 _ = happyFail

action_38 _ = happyReduce_13

action_39 (47) = happyShift action_40
action_39 _ = happyFail

action_40 (20) = happyShift action_17
action_40 (27) = happyShift action_18
action_40 (28) = happyShift action_19
action_40 (38) = happyShift action_20
action_40 (39) = happyShift action_21
action_40 (11) = happyGoto action_44
action_40 (12) = happyGoto action_45
action_40 _ = happyFail

action_41 _ = happyReduce_7

action_42 (38) = happyShift action_43
action_42 _ = happyFail

action_43 (48) = happyShift action_48
action_43 _ = happyFail

action_44 (48) = happyShift action_47
action_44 _ = happyFail

action_45 (38) = happyShift action_46
action_45 _ = happyFail

action_46 (20) = happyShift action_17
action_46 (27) = happyShift action_18
action_46 (28) = happyShift action_19
action_46 (38) = happyShift action_20
action_46 (39) = happyShift action_21
action_46 (11) = happyGoto action_51
action_46 (12) = happyGoto action_45
action_46 _ = happyReduce_15

action_47 (40) = happyShift action_50
action_47 _ = happyFail

action_48 (40) = happyShift action_49
action_48 _ = happyFail

action_49 (29) = happyShift action_54
action_49 (35) = happyShift action_55
action_49 (38) = happyShift action_56
action_49 (40) = happyShift action_57
action_49 (53) = happyShift action_58
action_49 (13) = happyGoto action_53
action_49 _ = happyFail

action_50 (20) = happyShift action_17
action_50 (27) = happyShift action_18
action_50 (28) = happyShift action_19
action_50 (38) = happyShift action_20
action_50 (39) = happyShift action_21
action_50 (10) = happyGoto action_52
action_50 (12) = happyGoto action_16
action_50 _ = happyReduce_14

action_51 _ = happyReduce_16

action_52 (29) = happyShift action_54
action_52 (35) = happyShift action_55
action_52 (38) = happyShift action_56
action_52 (40) = happyShift action_57
action_52 (53) = happyShift action_58
action_52 (13) = happyGoto action_60
action_52 (14) = happyGoto action_67
action_52 _ = happyFail

action_53 (41) = happyShift action_66
action_53 _ = happyFail

action_54 (47) = happyShift action_65
action_54 _ = happyFail

action_55 (47) = happyShift action_64
action_55 _ = happyFail

action_56 (43) = happyShift action_62
action_56 (52) = happyShift action_63
action_56 _ = happyFail

action_57 (29) = happyShift action_54
action_57 (35) = happyShift action_55
action_57 (38) = happyShift action_56
action_57 (40) = happyShift action_57
action_57 (53) = happyShift action_58
action_57 (13) = happyGoto action_60
action_57 (14) = happyGoto action_61
action_57 _ = happyFail

action_58 (47) = happyShift action_59
action_58 _ = happyFail

action_59 (19) = happyShift action_72
action_59 (31) = happyShift action_73
action_59 (32) = happyShift action_74
action_59 (33) = happyShift action_75
action_59 (36) = happyShift action_76
action_59 (37) = happyShift action_77
action_59 (38) = happyShift action_78
action_59 (47) = happyShift action_79
action_59 (51) = happyShift action_80
action_59 (15) = happyGoto action_85
action_59 _ = happyFail

action_60 _ = happyReduce_28

action_61 (29) = happyShift action_54
action_61 (35) = happyShift action_55
action_61 (38) = happyShift action_56
action_61 (40) = happyShift action_57
action_61 (41) = happyShift action_84
action_61 (53) = happyShift action_58
action_61 (13) = happyGoto action_68
action_61 _ = happyFail

action_62 (19) = happyShift action_72
action_62 (31) = happyShift action_73
action_62 (32) = happyShift action_74
action_62 (33) = happyShift action_75
action_62 (36) = happyShift action_76
action_62 (37) = happyShift action_77
action_62 (38) = happyShift action_78
action_62 (47) = happyShift action_79
action_62 (51) = happyShift action_80
action_62 (15) = happyGoto action_83
action_62 _ = happyFail

action_63 (19) = happyShift action_72
action_63 (31) = happyShift action_73
action_63 (32) = happyShift action_74
action_63 (33) = happyShift action_75
action_63 (36) = happyShift action_76
action_63 (37) = happyShift action_77
action_63 (38) = happyShift action_78
action_63 (47) = happyShift action_79
action_63 (51) = happyShift action_80
action_63 (15) = happyGoto action_82
action_63 _ = happyFail

action_64 (19) = happyShift action_72
action_64 (31) = happyShift action_73
action_64 (32) = happyShift action_74
action_64 (33) = happyShift action_75
action_64 (36) = happyShift action_76
action_64 (37) = happyShift action_77
action_64 (38) = happyShift action_78
action_64 (47) = happyShift action_79
action_64 (51) = happyShift action_80
action_64 (15) = happyGoto action_81
action_64 _ = happyFail

action_65 (19) = happyShift action_72
action_65 (31) = happyShift action_73
action_65 (32) = happyShift action_74
action_65 (33) = happyShift action_75
action_65 (36) = happyShift action_76
action_65 (37) = happyShift action_77
action_65 (38) = happyShift action_78
action_65 (47) = happyShift action_79
action_65 (51) = happyShift action_80
action_65 (15) = happyGoto action_71
action_65 _ = happyFail

action_66 (41) = happyShift action_70
action_66 _ = happyFail

action_67 (25) = happyShift action_69
action_67 (29) = happyShift action_54
action_67 (35) = happyShift action_55
action_67 (38) = happyShift action_56
action_67 (40) = happyShift action_57
action_67 (53) = happyShift action_58
action_67 (13) = happyGoto action_68
action_67 _ = happyFail

action_68 _ = happyReduce_29

action_69 (19) = happyShift action_72
action_69 (31) = happyShift action_73
action_69 (32) = happyShift action_74
action_69 (33) = happyShift action_75
action_69 (36) = happyShift action_76
action_69 (37) = happyShift action_77
action_69 (38) = happyShift action_78
action_69 (47) = happyShift action_79
action_69 (51) = happyShift action_80
action_69 (15) = happyGoto action_101
action_69 _ = happyFail

action_70 _ = happyReduce_2

action_71 (43) = happyShift action_86
action_71 (45) = happyShift action_87
action_71 (46) = happyShift action_88
action_71 (48) = happyShift action_100
action_71 (50) = happyShift action_90
action_71 _ = happyFail

action_72 (20) = happyShift action_96
action_72 (27) = happyShift action_97
action_72 (28) = happyShift action_98
action_72 (38) = happyShift action_99
action_72 _ = happyFail

action_73 _ = happyReduce_37

action_74 _ = happyReduce_38

action_75 _ = happyReduce_40

action_76 _ = happyReduce_35

action_77 _ = happyReduce_36

action_78 _ = happyReduce_39

action_79 (19) = happyShift action_72
action_79 (31) = happyShift action_73
action_79 (32) = happyShift action_74
action_79 (33) = happyShift action_75
action_79 (36) = happyShift action_76
action_79 (37) = happyShift action_77
action_79 (38) = happyShift action_78
action_79 (47) = happyShift action_79
action_79 (51) = happyShift action_80
action_79 (15) = happyGoto action_95
action_79 _ = happyFail

action_80 (19) = happyShift action_72
action_80 (31) = happyShift action_73
action_80 (32) = happyShift action_74
action_80 (33) = happyShift action_75
action_80 (36) = happyShift action_76
action_80 (37) = happyShift action_77
action_80 (38) = happyShift action_78
action_80 (47) = happyShift action_79
action_80 (51) = happyShift action_80
action_80 (15) = happyGoto action_94
action_80 _ = happyFail

action_81 (43) = happyShift action_86
action_81 (45) = happyShift action_87
action_81 (46) = happyShift action_88
action_81 (48) = happyShift action_93
action_81 (50) = happyShift action_90
action_81 _ = happyFail

action_82 (43) = happyShift action_86
action_82 (45) = happyShift action_87
action_82 (46) = happyShift action_88
action_82 (49) = happyShift action_92
action_82 (50) = happyShift action_90
action_82 _ = happyFail

action_83 (43) = happyShift action_86
action_83 (44) = happyShift action_91
action_83 (45) = happyShift action_87
action_83 (46) = happyShift action_88
action_83 (50) = happyShift action_90
action_83 _ = happyFail

action_84 _ = happyReduce_22

action_85 (43) = happyShift action_86
action_85 (45) = happyShift action_87
action_85 (46) = happyShift action_88
action_85 (48) = happyShift action_89
action_85 (50) = happyShift action_90
action_85 _ = happyFail

action_86 (19) = happyShift action_72
action_86 (31) = happyShift action_73
action_86 (32) = happyShift action_74
action_86 (33) = happyShift action_75
action_86 (36) = happyShift action_76
action_86 (37) = happyShift action_77
action_86 (38) = happyShift action_78
action_86 (47) = happyShift action_79
action_86 (51) = happyShift action_80
action_86 (15) = happyGoto action_117
action_86 _ = happyFail

action_87 (19) = happyShift action_72
action_87 (31) = happyShift action_73
action_87 (32) = happyShift action_74
action_87 (33) = happyShift action_75
action_87 (36) = happyShift action_76
action_87 (37) = happyShift action_77
action_87 (38) = happyShift action_78
action_87 (47) = happyShift action_79
action_87 (51) = happyShift action_80
action_87 (15) = happyGoto action_116
action_87 _ = happyFail

action_88 (19) = happyShift action_72
action_88 (31) = happyShift action_73
action_88 (32) = happyShift action_74
action_88 (33) = happyShift action_75
action_88 (36) = happyShift action_76
action_88 (37) = happyShift action_77
action_88 (38) = happyShift action_78
action_88 (47) = happyShift action_79
action_88 (51) = happyShift action_80
action_88 (15) = happyGoto action_115
action_88 _ = happyFail

action_89 (49) = happyShift action_114
action_89 _ = happyFail

action_90 (34) = happyShift action_112
action_90 (38) = happyShift action_113
action_90 _ = happyFail

action_91 (52) = happyShift action_111
action_91 _ = happyFail

action_92 _ = happyReduce_26

action_93 (29) = happyShift action_54
action_93 (35) = happyShift action_55
action_93 (38) = happyShift action_56
action_93 (40) = happyShift action_57
action_93 (53) = happyShift action_58
action_93 (13) = happyGoto action_110
action_93 _ = happyFail

action_94 (43) = happyShift action_86
action_94 (45) = happyShift action_87
action_94 (46) = happyShift action_88
action_94 (50) = happyShift action_90
action_94 _ = happyReduce_46

action_95 (43) = happyShift action_86
action_95 (45) = happyShift action_87
action_95 (46) = happyShift action_88
action_95 (48) = happyShift action_109
action_95 (50) = happyShift action_90
action_95 _ = happyFail

action_96 (43) = happyShift action_108
action_96 _ = happyFail

action_97 (43) = happyShift action_107
action_97 _ = happyFail

action_98 (43) = happyShift action_106
action_98 _ = happyFail

action_99 (43) = happyShift action_104
action_99 (47) = happyShift action_105
action_99 _ = happyFail

action_100 (29) = happyShift action_54
action_100 (35) = happyShift action_55
action_100 (38) = happyShift action_56
action_100 (40) = happyShift action_57
action_100 (53) = happyShift action_58
action_100 (13) = happyGoto action_103
action_100 _ = happyFail

action_101 (43) = happyShift action_86
action_101 (45) = happyShift action_87
action_101 (46) = happyShift action_88
action_101 (49) = happyShift action_102
action_101 (50) = happyShift action_90
action_101 _ = happyFail

action_102 (41) = happyShift action_127
action_102 _ = happyFail

action_103 (30) = happyShift action_126
action_103 _ = happyFail

action_104 (19) = happyShift action_72
action_104 (31) = happyShift action_73
action_104 (32) = happyShift action_74
action_104 (33) = happyShift action_75
action_104 (36) = happyShift action_76
action_104 (37) = happyShift action_77
action_104 (38) = happyShift action_78
action_104 (47) = happyShift action_79
action_104 (51) = happyShift action_80
action_104 (15) = happyGoto action_125
action_104 _ = happyFail

action_105 (48) = happyShift action_124
action_105 _ = happyFail

action_106 (19) = happyShift action_72
action_106 (31) = happyShift action_73
action_106 (32) = happyShift action_74
action_106 (33) = happyShift action_75
action_106 (36) = happyShift action_76
action_106 (37) = happyShift action_77
action_106 (38) = happyShift action_78
action_106 (47) = happyShift action_79
action_106 (51) = happyShift action_80
action_106 (15) = happyGoto action_123
action_106 _ = happyFail

action_107 (19) = happyShift action_72
action_107 (31) = happyShift action_73
action_107 (32) = happyShift action_74
action_107 (33) = happyShift action_75
action_107 (36) = happyShift action_76
action_107 (37) = happyShift action_77
action_107 (38) = happyShift action_78
action_107 (47) = happyShift action_79
action_107 (51) = happyShift action_80
action_107 (15) = happyGoto action_122
action_107 _ = happyFail

action_108 (19) = happyShift action_72
action_108 (31) = happyShift action_73
action_108 (32) = happyShift action_74
action_108 (33) = happyShift action_75
action_108 (36) = happyShift action_76
action_108 (37) = happyShift action_77
action_108 (38) = happyShift action_78
action_108 (47) = happyShift action_79
action_108 (51) = happyShift action_80
action_108 (15) = happyGoto action_121
action_108 _ = happyFail

action_109 _ = happyReduce_47

action_110 _ = happyReduce_24

action_111 (19) = happyShift action_72
action_111 (31) = happyShift action_73
action_111 (32) = happyShift action_74
action_111 (33) = happyShift action_75
action_111 (36) = happyShift action_76
action_111 (37) = happyShift action_77
action_111 (38) = happyShift action_78
action_111 (47) = happyShift action_79
action_111 (51) = happyShift action_80
action_111 (15) = happyGoto action_120
action_111 _ = happyFail

action_112 _ = happyReduce_33

action_113 (47) = happyShift action_119
action_113 _ = happyFail

action_114 _ = happyReduce_25

action_115 (43) = happyShift action_86
action_115 (45) = happyShift action_87
action_115 (46) = happyShift action_88
action_115 (50) = happyShift action_90
action_115 _ = happyReduce_31

action_116 (43) = happyShift action_86
action_116 (45) = happyShift action_87
action_116 (46) = happyShift action_88
action_116 (50) = happyShift action_90
action_116 _ = happyReduce_30

action_117 (43) = happyShift action_86
action_117 (44) = happyShift action_118
action_117 (45) = happyShift action_87
action_117 (46) = happyShift action_88
action_117 (50) = happyShift action_90
action_117 _ = happyFail

action_118 _ = happyReduce_32

action_119 (19) = happyShift action_72
action_119 (31) = happyShift action_73
action_119 (32) = happyShift action_74
action_119 (33) = happyShift action_75
action_119 (36) = happyShift action_76
action_119 (37) = happyShift action_77
action_119 (38) = happyShift action_78
action_119 (47) = happyShift action_79
action_119 (51) = happyShift action_80
action_119 (15) = happyGoto action_134
action_119 (16) = happyGoto action_135
action_119 _ = happyReduce_50

action_120 (43) = happyShift action_86
action_120 (45) = happyShift action_87
action_120 (46) = happyShift action_88
action_120 (49) = happyShift action_133
action_120 (50) = happyShift action_90
action_120 _ = happyFail

action_121 (43) = happyShift action_86
action_121 (44) = happyShift action_132
action_121 (45) = happyShift action_87
action_121 (46) = happyShift action_88
action_121 (50) = happyShift action_90
action_121 _ = happyFail

action_122 (43) = happyShift action_86
action_122 (44) = happyShift action_131
action_122 (45) = happyShift action_87
action_122 (46) = happyShift action_88
action_122 (50) = happyShift action_90
action_122 _ = happyFail

action_123 (43) = happyShift action_86
action_123 (44) = happyShift action_130
action_123 (45) = happyShift action_87
action_123 (46) = happyShift action_88
action_123 (50) = happyShift action_90
action_123 _ = happyFail

action_124 _ = happyReduce_45

action_125 (43) = happyShift action_86
action_125 (44) = happyShift action_129
action_125 (45) = happyShift action_87
action_125 (46) = happyShift action_88
action_125 (50) = happyShift action_90
action_125 _ = happyFail

action_126 (29) = happyShift action_54
action_126 (35) = happyShift action_55
action_126 (38) = happyShift action_56
action_126 (40) = happyShift action_57
action_126 (53) = happyShift action_58
action_126 (13) = happyGoto action_128
action_126 _ = happyFail

action_127 _ = happyReduce_11

action_128 _ = happyReduce_23

action_129 _ = happyReduce_44

action_130 _ = happyReduce_42

action_131 _ = happyReduce_41

action_132 _ = happyReduce_43

action_133 _ = happyReduce_27

action_134 (42) = happyShift action_138
action_134 (43) = happyShift action_86
action_134 (45) = happyShift action_87
action_134 (46) = happyShift action_88
action_134 (50) = happyShift action_90
action_134 (17) = happyGoto action_137
action_134 _ = happyReduce_48

action_135 (48) = happyShift action_136
action_135 _ = happyFail

action_136 _ = happyReduce_34

action_137 _ = happyReduce_49

action_138 (19) = happyShift action_72
action_138 (31) = happyShift action_73
action_138 (32) = happyShift action_74
action_138 (33) = happyShift action_75
action_138 (36) = happyShift action_76
action_138 (37) = happyShift action_77
action_138 (38) = happyShift action_78
action_138 (47) = happyShift action_79
action_138 (51) = happyShift action_80
action_138 (15) = happyGoto action_139
action_138 _ = happyFail

action_139 (43) = happyShift action_86
action_139 (45) = happyShift action_87
action_139 (46) = happyShift action_88
action_139 (50) = happyShift action_90
action_139 _ = happyReduce_51

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
		 (ClassDecl happy_var_2 "void" happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 8 7 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_7) `HappyStk`
	(HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ClassDecl happy_var_2 happy_var_4 happy_var_6 happy_var_7
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (MethodDeclList happy_var_1 MEmpty
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  8 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (MethodDeclList happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_0  8 happyReduction_10
happyReduction_10  =  HappyAbsSyn8
		 (MEmpty
	)

happyReduce_11 = happyReduce 13 9 happyReduction_11
happyReduction_11 (_ `HappyStk`
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

happyReduce_12 = happySpecReduce_3  10 happyReduction_12
happyReduction_12 _
	(HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn10
		 (VarDeclList happy_var_1 happy_var_2 VEmpty
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 4 10 happyReduction_13
happyReduction_13 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	(HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (VarDeclList happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_0  10 happyReduction_14
happyReduction_14  =  HappyAbsSyn10
		 (VEmpty
	)

happyReduce_15 = happySpecReduce_2  11 happyReduction_15
happyReduction_15 (HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (FormalList happy_var_1 happy_var_2 FEmpty
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  11 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_3)
	(HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (FormalList happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  12 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn12
		 (TypeBoolean
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

happyReduce_30 = happySpecReduce_3  15 happyReduction_30
happyReduction_30 (HappyAbsSyn15  happy_var_3)
	(HappyTerminal (TOp _ happy_var_2))
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpOp happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn15  happy_var_3)
	(HappyTerminal (TComOp _ happy_var_2))
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpComOp happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 4 15 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpArray happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_3  15 happyReduction_33
happyReduction_33 _
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpLength happy_var_1
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 6 15 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpFCall happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_1  15 happyReduction_35
happyReduction_35 (HappyTerminal (TIntLiteral _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpInt happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  15 happyReduction_36
happyReduction_36 (HappyTerminal (TStringLiteral _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpString happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn15
		 (ExpBool True
	)

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn15
		 (ExpBool False
	)

happyReduce_39 = happySpecReduce_1  15 happyReduction_39
happyReduction_39 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpIdent happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  15 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn15
		 (ExpThis
	)

happyReduce_41 = happyReduce 5 15 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewIntArray happy_var_4
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 5 15 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewStringArray happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 5 15 happyReduction_43
happyReduction_43 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewBoolArray happy_var_4
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 5 15 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewIdentArray happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_45 = happyReduce 4 15 happyReduction_45
happyReduction_45 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewIdent happy_var_2
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_2  15 happyReduction_46
happyReduction_46 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (ExpNot happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  15 happyReduction_47
happyReduction_47 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (ExpExp happy_var_2
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  16 happyReduction_48
happyReduction_48 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (ExpListExp happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  16 happyReduction_49
happyReduction_49 (HappyAbsSyn17  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (ExpList happy_var_1 happy_var_2
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_0  16 happyReduction_50
happyReduction_50  =  HappyAbsSyn16
		 (ExpListEmpty
	)

happyReduce_51 = happySpecReduce_2  17 happyReduction_51
happyReduction_51 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (ExpRest happy_var_2
	)
happyReduction_51 _ _  = notHappyAtAll 

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
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

newl tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError tokenList = let pos = tokenPosn(head(tokenList)) 
  in 
  error ("parse error at line " ++ show(getLineNum(pos)) ++ " and column " ++ show(getColumnNum(pos)))


data Program 
    = Program MainClass ClassDeclList
      deriving (Show, Eq)



data MainClass
    = MClass String String Statement
      deriving (Show, Eq)

data ClassDeclList
    = ClassDeclList ClassDecl ClassDeclList
    | CEmpty
  deriving (Show, Eq)

data ClassDecl = ClassDecl Ident Ident VarDeclList MethodDeclList
  deriving (Show, Eq)


data MethodDeclList
    = MethodDeclList MethodDecl MethodDeclList
    | MEmpty
    deriving (Show, Eq)
data MethodDecl
    = MethodDecl Type Ident FormalList VarDeclList StatementList Exp
    deriving (Show, Eq)

data VarDeclList =
    VarDeclList Type Ident VarDeclList
    | VEmpty
    deriving (Show, Eq)

data FormalList = 
    FormalList Type Ident FormalList
    | FEmpty
  deriving (Show, Eq)

data Type =
    TypeBoolean
    | TypeInt
    | TypeString
    | TypeIdent Ident
    | TypeIdentArray Ident 
    deriving (Show, Eq)

data Statement
    = Statement String
    | SList StatementList
    | SIfElse Exp Statement Statement
    | SWhile Exp Statement
    | SPrint Exp
    | SEqual Ident Exp
    | SArrayEqual Ident Exp Exp
    | StatementError
    deriving (Show, Eq)

data StatementList
    = StatementList StatementList Statement 
    | Empty
    deriving (Show, Eq)


data Exp
    = Exp String
    | ExpOp Exp Char Exp
    | ExpComOp Exp Char Exp
    | ExpArray Exp Exp -- "Exp [ Exp ]"
    | ExpFCall Exp Ident ExpList -- Exp . Ident ( ExpList )
    | ExpInt Int
    | ExpString String
    | ExpNewIntArray Exp -- new int [exp]
    | ExpNewBoolArray Exp -- new string [exp]
    | ExpNewStringArray Exp -- new bool [exp]
    | ExpBool Bool -- True or False
    | ExpIdent Ident
    | ExpNewIdent Ident -- new Ident ()
    | ExpNewIdentArray Ident Exp -- new Ident [Exp]
    | ExpExp Exp -- Exp ( Exp )
    | ExpThis
    | ExpNot Exp
    | ExpLength Exp
    | ExpError
    deriving (Show, Eq)

data Op
     = And
     | LessThan
     | Plus
     | Minus
     | Times
     deriving (Show, Eq)

type Ident = String
data ExpList
    = ExpList Exp ExpRest
    | ExpListEmpty
    | ExpListExp Exp
    deriving (Show, Eq)
data ExpRest
    = ExpRest Exp
    deriving (Show, Eq)

data ClassSymbol
    = ClassSymbol
      {
          className       :: String -- class name
        , publicVariables :: [(String, String)] -- (variable name, variable type name) list of variable
        , methods         :: [(String, MethodSymbol)] -- (method name, method symbol) list of methods
      }
      deriving (Eq)

instance Show ClassSymbol where
    show (ClassSymbol cName vars methods) = show cName

data MethodSymbol = MethodSymbol {
      returnType :: String
    , name       :: String
    , args       :: [(String, String)] -- (argument name, argument type) list of arguments
    }
    deriving (Show, Eq)


classSymbols (Program mainClass classDeclList) = classSymbolMainClass mainClass : classSymbolsClassDeclList classDeclList

classSymbolMainClass (MClass className paramName statement) =
                      (className, (ClassSymbol className [] [
                                                            ("main", 
                                                                    (MethodSymbol {returnType = "void", name = "main", args = [("string[]", paramName)]})
                                                            )]
                                  )
                      )
classSymbolClassDecl (ClassDecl className parentClassName varDecls methodDecls) = (className, (ClassSymbol className (varSymbols varDecls) (methodSymbols methodDecls)))
classSymbolsClassDeclList (ClassDeclList classDecl classDeclList) = classSymbolClassDecl classDecl : classSymbolsClassDeclList classDeclList
classSymbolsClassDeclList (CEmpty) = []

varSymbols VEmpty = []
varSymbols (VarDeclList theType ident varDeclList) = varSymbol theType ident : varSymbols varDeclList

varSymbol (TypeString) ident = (ident, "string")
varSymbol (TypeBoolean) ident = (ident, "boolean")
varSymbol (TypeInt) ident = (ident, "int")
varSymbol (TypeIdent identType) ident = (ident, identType)
varSymbol (TypeIdentArray identType) ident = (ident, identType)

methodSymbols MEmpty = []
methodSymbols (MethodDeclList methodDecl methodDeclList) = methodSymbol methodDecl : methodSymbols methodDeclList

methodSymbol (MethodDecl theType ident formalList varDeclList statementList exp)
             = case theType of
                    TypeInt -> (ident, MethodSymbol {returnType = "int", name = ident, args = (argSymbols formalList)})
                    TypeBoolean -> (ident, MethodSymbol {returnType = "boolean", name = ident, args = (argSymbols formalList)})
                    TypeString -> (ident, MethodSymbol {returnType = "string", name = ident, args = (argSymbols formalList)})
                    TypeIdent classType -> (ident, MethodSymbol {returnType = classType, name = ident, args = (argSymbols formalList)})
                    TypeIdentArray classType -> (ident, MethodSymbol {returnType = classType, name = ident, args = (argSymbols formalList)})

argSymbols FEmpty = []
argSymbols (FormalList theType ident formalList) =
           case theType of
                TypeInt -> (ident, "int") : argSymbols formalList
                TypeBoolean -> (ident, "boolean") : argSymbols formalList
                TypeString -> (ident, "string") : argSymbols formalList
                TypeIdent classType -> (ident, classType) : argSymbols formalList
                TypeIdentArray classType -> (ident, classType) : argSymbols formalList



main = do 
  inStr <- getContents
  let parseTree = newl (alexScanTokens2 inStr)  
  putStrLn ("parseTree: " ++ show(parseTree))
  print "done"
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 28 "templates\\GenericTemplate.hs" #-}








{-# LINE 49 "templates\\GenericTemplate.hs" #-}

{-# LINE 59 "templates\\GenericTemplate.hs" #-}

{-# LINE 68 "templates\\GenericTemplate.hs" #-}

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

{-# LINE 155 "templates\\GenericTemplate.hs" #-}

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

{-# LINE 253 "templates\\GenericTemplate.hs" #-}
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

{-# LINE 317 "templates\\GenericTemplate.hs" #-}
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
