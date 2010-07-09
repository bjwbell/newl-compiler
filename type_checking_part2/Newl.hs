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

action_4 (53) = happyAccept
action_4 _ = happyFail

action_5 (39) = happyShift action_11
action_5 _ = happyFail

action_6 _ = happyReduce_1

action_7 (18) = happyShift action_8
action_7 (53) = happyReduce_5
action_7 (6) = happyGoto action_10
action_7 (7) = happyGoto action_7
action_7 _ = happyReduce_5

action_8 (38) = happyShift action_9
action_8 _ = happyFail

action_9 (26) = happyShift action_13
action_9 (39) = happyShift action_14
action_9 _ = happyFail

action_10 _ = happyReduce_4

action_11 (24) = happyShift action_12
action_11 _ = happyFail

action_12 (21) = happyShift action_21
action_12 _ = happyFail

action_13 (38) = happyShift action_20
action_13 _ = happyFail

action_14 (27) = happyShift action_17
action_14 (28) = happyShift action_18
action_14 (38) = happyShift action_19
action_14 (10) = happyGoto action_15
action_14 (12) = happyGoto action_16
action_14 _ = happyReduce_14

action_15 (24) = happyShift action_28
action_15 (8) = happyGoto action_26
action_15 (9) = happyGoto action_27
action_15 _ = happyReduce_10

action_16 (38) = happyShift action_25
action_16 _ = happyFail

action_17 (42) = happyShift action_24
action_17 _ = happyReduce_19

action_18 _ = happyReduce_18

action_19 _ = happyReduce_20

action_20 (39) = happyShift action_23
action_20 _ = happyFail

action_21 (22) = happyShift action_22
action_21 _ = happyFail

action_22 (23) = happyShift action_35
action_22 _ = happyFail

action_23 (27) = happyShift action_17
action_23 (28) = happyShift action_18
action_23 (38) = happyShift action_19
action_23 (10) = happyGoto action_34
action_23 (12) = happyGoto action_16
action_23 _ = happyReduce_14

action_24 (43) = happyShift action_33
action_24 _ = happyFail

action_25 (48) = happyShift action_32
action_25 _ = happyFail

action_26 (40) = happyShift action_31
action_26 _ = happyFail

action_27 (24) = happyShift action_28
action_27 (40) = happyReduce_10
action_27 (8) = happyGoto action_30
action_27 (9) = happyGoto action_27
action_27 _ = happyReduce_10

action_28 (27) = happyShift action_17
action_28 (28) = happyShift action_18
action_28 (38) = happyShift action_19
action_28 (12) = happyGoto action_29
action_28 _ = happyFail

action_29 (38) = happyShift action_39
action_29 _ = happyFail

action_30 _ = happyReduce_9

action_31 _ = happyReduce_6

action_32 (24) = happyReduce_14
action_32 (27) = happyShift action_17
action_32 (28) = happyShift action_18
action_32 (29) = happyReduce_14
action_32 (35) = happyReduce_14
action_32 (38) = happyShift action_19
action_32 (39) = happyReduce_14
action_32 (40) = happyReduce_14
action_32 (52) = happyReduce_14
action_32 (10) = happyGoto action_38
action_32 (12) = happyGoto action_16
action_32 _ = happyReduce_14

action_33 _ = happyReduce_17

action_34 (24) = happyShift action_28
action_34 (8) = happyGoto action_37
action_34 (9) = happyGoto action_27
action_34 _ = happyReduce_10

action_35 (46) = happyShift action_36
action_35 _ = happyFail

action_36 (20) = happyShift action_42
action_36 _ = happyFail

action_37 (40) = happyShift action_41
action_37 _ = happyFail

action_38 _ = happyReduce_13

action_39 (46) = happyShift action_40
action_39 _ = happyFail

action_40 (27) = happyShift action_17
action_40 (28) = happyShift action_18
action_40 (38) = happyShift action_19
action_40 (11) = happyGoto action_44
action_40 (12) = happyGoto action_45
action_40 _ = happyFail

action_41 _ = happyReduce_7

action_42 (42) = happyShift action_43
action_42 _ = happyFail

action_43 (43) = happyShift action_48
action_43 _ = happyFail

action_44 (47) = happyShift action_47
action_44 _ = happyFail

action_45 (38) = happyShift action_46
action_45 _ = happyFail

action_46 (27) = happyShift action_17
action_46 (28) = happyShift action_18
action_46 (38) = happyShift action_19
action_46 (11) = happyGoto action_51
action_46 (12) = happyGoto action_45
action_46 _ = happyReduce_15

action_47 (39) = happyShift action_50
action_47 _ = happyFail

action_48 (38) = happyShift action_49
action_48 _ = happyFail

action_49 (47) = happyShift action_53
action_49 _ = happyFail

action_50 (27) = happyShift action_17
action_50 (28) = happyShift action_18
action_50 (38) = happyShift action_19
action_50 (10) = happyGoto action_52
action_50 (12) = happyGoto action_16
action_50 _ = happyReduce_14

action_51 _ = happyReduce_16

action_52 (29) = happyShift action_57
action_52 (35) = happyShift action_58
action_52 (38) = happyShift action_59
action_52 (39) = happyShift action_60
action_52 (52) = happyShift action_61
action_52 (13) = happyGoto action_55
action_52 (14) = happyGoto action_56
action_52 _ = happyFail

action_53 (39) = happyShift action_54
action_53 _ = happyFail

action_54 (29) = happyShift action_57
action_54 (35) = happyShift action_58
action_54 (38) = happyShift action_59
action_54 (39) = happyShift action_60
action_54 (52) = happyShift action_61
action_54 (13) = happyGoto action_70
action_54 _ = happyFail

action_55 _ = happyReduce_27

action_56 (25) = happyShift action_69
action_56 (29) = happyShift action_57
action_56 (35) = happyShift action_58
action_56 (38) = happyShift action_59
action_56 (39) = happyShift action_60
action_56 (52) = happyShift action_61
action_56 (13) = happyGoto action_68
action_56 _ = happyFail

action_57 (46) = happyShift action_67
action_57 _ = happyFail

action_58 (46) = happyShift action_66
action_58 _ = happyFail

action_59 (42) = happyShift action_64
action_59 (51) = happyShift action_65
action_59 _ = happyFail

action_60 (29) = happyShift action_57
action_60 (35) = happyShift action_58
action_60 (38) = happyShift action_59
action_60 (39) = happyShift action_60
action_60 (52) = happyShift action_61
action_60 (13) = happyGoto action_55
action_60 (14) = happyGoto action_63
action_60 _ = happyFail

action_61 (46) = happyShift action_62
action_61 _ = happyFail

action_62 (19) = happyShift action_73
action_62 (31) = happyShift action_74
action_62 (32) = happyShift action_75
action_62 (33) = happyShift action_76
action_62 (36) = happyShift action_77
action_62 (37) = happyShift action_78
action_62 (38) = happyShift action_79
action_62 (46) = happyShift action_80
action_62 (50) = happyShift action_81
action_62 (15) = happyGoto action_87
action_62 _ = happyFail

action_63 (29) = happyShift action_57
action_63 (35) = happyShift action_58
action_63 (38) = happyShift action_59
action_63 (39) = happyShift action_60
action_63 (40) = happyShift action_86
action_63 (52) = happyShift action_61
action_63 (13) = happyGoto action_68
action_63 _ = happyFail

action_64 (19) = happyShift action_73
action_64 (31) = happyShift action_74
action_64 (32) = happyShift action_75
action_64 (33) = happyShift action_76
action_64 (36) = happyShift action_77
action_64 (37) = happyShift action_78
action_64 (38) = happyShift action_79
action_64 (46) = happyShift action_80
action_64 (50) = happyShift action_81
action_64 (15) = happyGoto action_85
action_64 _ = happyFail

action_65 (19) = happyShift action_73
action_65 (31) = happyShift action_74
action_65 (32) = happyShift action_75
action_65 (33) = happyShift action_76
action_65 (36) = happyShift action_77
action_65 (37) = happyShift action_78
action_65 (38) = happyShift action_79
action_65 (46) = happyShift action_80
action_65 (50) = happyShift action_81
action_65 (15) = happyGoto action_84
action_65 _ = happyFail

action_66 (19) = happyShift action_73
action_66 (31) = happyShift action_74
action_66 (32) = happyShift action_75
action_66 (33) = happyShift action_76
action_66 (36) = happyShift action_77
action_66 (37) = happyShift action_78
action_66 (38) = happyShift action_79
action_66 (46) = happyShift action_80
action_66 (50) = happyShift action_81
action_66 (15) = happyGoto action_83
action_66 _ = happyFail

action_67 (19) = happyShift action_73
action_67 (31) = happyShift action_74
action_67 (32) = happyShift action_75
action_67 (33) = happyShift action_76
action_67 (36) = happyShift action_77
action_67 (37) = happyShift action_78
action_67 (38) = happyShift action_79
action_67 (46) = happyShift action_80
action_67 (50) = happyShift action_81
action_67 (15) = happyGoto action_82
action_67 _ = happyFail

action_68 _ = happyReduce_28

action_69 (19) = happyShift action_73
action_69 (31) = happyShift action_74
action_69 (32) = happyShift action_75
action_69 (33) = happyShift action_76
action_69 (36) = happyShift action_77
action_69 (37) = happyShift action_78
action_69 (38) = happyShift action_79
action_69 (46) = happyShift action_80
action_69 (50) = happyShift action_81
action_69 (15) = happyGoto action_72
action_69 _ = happyFail

action_70 (40) = happyShift action_71
action_70 _ = happyFail

action_71 (40) = happyShift action_102
action_71 _ = happyFail

action_72 (42) = happyShift action_88
action_72 (44) = happyShift action_89
action_72 (45) = happyShift action_90
action_72 (48) = happyShift action_101
action_72 (49) = happyShift action_92
action_72 _ = happyFail

action_73 (27) = happyShift action_99
action_73 (38) = happyShift action_100
action_73 _ = happyFail

action_74 _ = happyReduce_36

action_75 _ = happyReduce_37

action_76 _ = happyReduce_39

action_77 _ = happyReduce_34

action_78 _ = happyReduce_35

action_79 _ = happyReduce_38

action_80 (19) = happyShift action_73
action_80 (31) = happyShift action_74
action_80 (32) = happyShift action_75
action_80 (33) = happyShift action_76
action_80 (36) = happyShift action_77
action_80 (37) = happyShift action_78
action_80 (38) = happyShift action_79
action_80 (46) = happyShift action_80
action_80 (50) = happyShift action_81
action_80 (15) = happyGoto action_98
action_80 _ = happyFail

action_81 (19) = happyShift action_73
action_81 (31) = happyShift action_74
action_81 (32) = happyShift action_75
action_81 (33) = happyShift action_76
action_81 (36) = happyShift action_77
action_81 (37) = happyShift action_78
action_81 (38) = happyShift action_79
action_81 (46) = happyShift action_80
action_81 (50) = happyShift action_81
action_81 (15) = happyGoto action_97
action_81 _ = happyFail

action_82 (42) = happyShift action_88
action_82 (44) = happyShift action_89
action_82 (45) = happyShift action_90
action_82 (47) = happyShift action_96
action_82 (49) = happyShift action_92
action_82 _ = happyFail

action_83 (42) = happyShift action_88
action_83 (44) = happyShift action_89
action_83 (45) = happyShift action_90
action_83 (47) = happyShift action_95
action_83 (49) = happyShift action_92
action_83 _ = happyFail

action_84 (42) = happyShift action_88
action_84 (44) = happyShift action_89
action_84 (45) = happyShift action_90
action_84 (48) = happyShift action_94
action_84 (49) = happyShift action_92
action_84 _ = happyFail

action_85 (42) = happyShift action_88
action_85 (43) = happyShift action_93
action_85 (44) = happyShift action_89
action_85 (45) = happyShift action_90
action_85 (49) = happyShift action_92
action_85 _ = happyFail

action_86 _ = happyReduce_21

action_87 (42) = happyShift action_88
action_87 (44) = happyShift action_89
action_87 (45) = happyShift action_90
action_87 (47) = happyShift action_91
action_87 (49) = happyShift action_92
action_87 _ = happyFail

action_88 (19) = happyShift action_73
action_88 (31) = happyShift action_74
action_88 (32) = happyShift action_75
action_88 (33) = happyShift action_76
action_88 (36) = happyShift action_77
action_88 (37) = happyShift action_78
action_88 (38) = happyShift action_79
action_88 (46) = happyShift action_80
action_88 (50) = happyShift action_81
action_88 (15) = happyGoto action_115
action_88 _ = happyFail

action_89 (19) = happyShift action_73
action_89 (31) = happyShift action_74
action_89 (32) = happyShift action_75
action_89 (33) = happyShift action_76
action_89 (36) = happyShift action_77
action_89 (37) = happyShift action_78
action_89 (38) = happyShift action_79
action_89 (46) = happyShift action_80
action_89 (50) = happyShift action_81
action_89 (15) = happyGoto action_114
action_89 _ = happyFail

action_90 (19) = happyShift action_73
action_90 (31) = happyShift action_74
action_90 (32) = happyShift action_75
action_90 (33) = happyShift action_76
action_90 (36) = happyShift action_77
action_90 (37) = happyShift action_78
action_90 (38) = happyShift action_79
action_90 (46) = happyShift action_80
action_90 (50) = happyShift action_81
action_90 (15) = happyGoto action_113
action_90 _ = happyFail

action_91 (48) = happyShift action_112
action_91 _ = happyFail

action_92 (34) = happyShift action_110
action_92 (38) = happyShift action_111
action_92 _ = happyFail

action_93 (51) = happyShift action_109
action_93 _ = happyFail

action_94 _ = happyReduce_25

action_95 (29) = happyShift action_57
action_95 (35) = happyShift action_58
action_95 (38) = happyShift action_59
action_95 (39) = happyShift action_60
action_95 (52) = happyShift action_61
action_95 (13) = happyGoto action_108
action_95 _ = happyFail

action_96 (29) = happyShift action_57
action_96 (35) = happyShift action_58
action_96 (38) = happyShift action_59
action_96 (39) = happyShift action_60
action_96 (52) = happyShift action_61
action_96 (13) = happyGoto action_107
action_96 _ = happyFail

action_97 (42) = happyShift action_88
action_97 (44) = happyShift action_89
action_97 (45) = happyShift action_90
action_97 (49) = happyShift action_92
action_97 _ = happyReduce_42

action_98 (42) = happyShift action_88
action_98 (44) = happyShift action_89
action_98 (45) = happyShift action_90
action_98 (47) = happyShift action_106
action_98 (49) = happyShift action_92
action_98 _ = happyFail

action_99 (42) = happyShift action_105
action_99 _ = happyFail

action_100 (46) = happyShift action_104
action_100 _ = happyFail

action_101 (40) = happyShift action_103
action_101 _ = happyFail

action_102 _ = happyReduce_2

action_103 _ = happyReduce_11

action_104 (47) = happyShift action_121
action_104 _ = happyFail

action_105 (19) = happyShift action_73
action_105 (31) = happyShift action_74
action_105 (32) = happyShift action_75
action_105 (33) = happyShift action_76
action_105 (36) = happyShift action_77
action_105 (37) = happyShift action_78
action_105 (38) = happyShift action_79
action_105 (46) = happyShift action_80
action_105 (50) = happyShift action_81
action_105 (15) = happyGoto action_120
action_105 _ = happyFail

action_106 _ = happyReduce_43

action_107 (30) = happyShift action_119
action_107 _ = happyFail

action_108 _ = happyReduce_23

action_109 (19) = happyShift action_73
action_109 (31) = happyShift action_74
action_109 (32) = happyShift action_75
action_109 (33) = happyShift action_76
action_109 (36) = happyShift action_77
action_109 (37) = happyShift action_78
action_109 (38) = happyShift action_79
action_109 (46) = happyShift action_80
action_109 (50) = happyShift action_81
action_109 (15) = happyGoto action_118
action_109 _ = happyFail

action_110 _ = happyReduce_32

action_111 (46) = happyShift action_117
action_111 _ = happyFail

action_112 _ = happyReduce_24

action_113 (42) = happyShift action_88
action_113 (44) = happyShift action_89
action_113 (45) = happyShift action_90
action_113 (49) = happyShift action_92
action_113 _ = happyReduce_30

action_114 (42) = happyShift action_88
action_114 (44) = happyShift action_89
action_114 (45) = happyShift action_90
action_114 (49) = happyShift action_92
action_114 _ = happyReduce_29

action_115 (42) = happyShift action_88
action_115 (43) = happyShift action_116
action_115 (44) = happyShift action_89
action_115 (45) = happyShift action_90
action_115 (49) = happyShift action_92
action_115 _ = happyFail

action_116 _ = happyReduce_31

action_117 (19) = happyShift action_73
action_117 (31) = happyShift action_74
action_117 (32) = happyShift action_75
action_117 (33) = happyShift action_76
action_117 (36) = happyShift action_77
action_117 (37) = happyShift action_78
action_117 (38) = happyShift action_79
action_117 (46) = happyShift action_80
action_117 (50) = happyShift action_81
action_117 (15) = happyGoto action_125
action_117 (16) = happyGoto action_126
action_117 _ = happyReduce_46

action_118 (42) = happyShift action_88
action_118 (44) = happyShift action_89
action_118 (45) = happyShift action_90
action_118 (48) = happyShift action_124
action_118 (49) = happyShift action_92
action_118 _ = happyFail

action_119 (29) = happyShift action_57
action_119 (35) = happyShift action_58
action_119 (38) = happyShift action_59
action_119 (39) = happyShift action_60
action_119 (52) = happyShift action_61
action_119 (13) = happyGoto action_123
action_119 _ = happyFail

action_120 (42) = happyShift action_88
action_120 (43) = happyShift action_122
action_120 (44) = happyShift action_89
action_120 (45) = happyShift action_90
action_120 (49) = happyShift action_92
action_120 _ = happyFail

action_121 _ = happyReduce_41

action_122 _ = happyReduce_40

action_123 _ = happyReduce_22

action_124 _ = happyReduce_26

action_125 (41) = happyShift action_129
action_125 (42) = happyShift action_88
action_125 (44) = happyShift action_89
action_125 (45) = happyShift action_90
action_125 (49) = happyShift action_92
action_125 (17) = happyGoto action_128
action_125 _ = happyReduce_44

action_126 (47) = happyShift action_127
action_126 _ = happyFail

action_127 _ = happyReduce_33

action_128 _ = happyReduce_45

action_129 (19) = happyShift action_73
action_129 (31) = happyShift action_74
action_129 (32) = happyShift action_75
action_129 (33) = happyShift action_76
action_129 (36) = happyShift action_77
action_129 (37) = happyShift action_78
action_129 (38) = happyShift action_79
action_129 (46) = happyShift action_80
action_129 (50) = happyShift action_81
action_129 (15) = happyGoto action_130
action_129 _ = happyFail

action_130 (42) = happyShift action_88
action_130 (44) = happyShift action_89
action_130 (45) = happyShift action_90
action_130 (49) = happyShift action_92
action_130 _ = happyReduce_47

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Program happy_var_1 happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 17 5 happyReduction_2
happyReduction_2 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_15) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_12)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
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
		 (MClass happy_var_2 happy_var_12 happy_var_15
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

happyReduce_17 = happySpecReduce_3  12 happyReduction_17
happyReduction_17 _
	_
	_
	 =  HappyAbsSyn12
		 (TypeIntArray
	)

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn12
		 (TypeBoolean
	)

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn12
		 (TypeInt
	)

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn12
		 (TypeIdent happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  13 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (SList happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 7 13 happyReduction_22
happyReduction_22 ((HappyAbsSyn13  happy_var_7) `HappyStk`
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

happyReduce_23 = happyReduce 5 13 happyReduction_23
happyReduction_23 ((HappyAbsSyn13  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 5 13 happyReduction_24
happyReduction_24 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SPrint happy_var_3
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 13 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SEqual happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 7 13 happyReduction_26
happyReduction_26 (_ `HappyStk`
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

happyReduce_27 = happySpecReduce_1  14 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (StatementList Empty happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  14 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (StatementList happy_var_1 happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  15 happyReduction_29
happyReduction_29 (HappyAbsSyn15  happy_var_3)
	(HappyTerminal (TOp _ happy_var_2))
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpOp happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  15 happyReduction_30
happyReduction_30 (HappyAbsSyn15  happy_var_3)
	(HappyTerminal (TComOp _ happy_var_2))
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpComOp happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 15 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpArray happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_3  15 happyReduction_32
happyReduction_32 _
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ExpLength happy_var_1
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 6 15 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpFCall happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 (HappyTerminal (TIntLiteral _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpInt happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  15 happyReduction_35
happyReduction_35 (HappyTerminal (TStringLiteral _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpString happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  15 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn15
		 (ExpBool True
	)

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn15
		 (ExpBool False
	)

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpIdent happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  15 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn15
		 (ExpThis
	)

happyReduce_40 = happyReduce 5 15 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewInt happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 4 15 happyReduction_41
happyReduction_41 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewIdent happy_var_2
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_2  15 happyReduction_42
happyReduction_42 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (ExpNot happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  15 happyReduction_43
happyReduction_43 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (ExpExp happy_var_2
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  16 happyReduction_44
happyReduction_44 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (ExpListExp happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  16 happyReduction_45
happyReduction_45 (HappyAbsSyn17  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (ExpList happy_var_1 happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_0  16 happyReduction_46
happyReduction_46  =  HappyAbsSyn16
		 (ExpListEmpty
	)

happyReduce_47 = happySpecReduce_2  17 happyReduction_47
happyReduction_47 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (ExpRest happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 53 53 notHappyAtAll (HappyState action) sts stk []

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
	TLeftBrace _ -> cont 39;
	TRightBrace _ -> cont 40;
	TComma _ -> cont 41;
	TLeftBrack _ -> cont 42;
	TRightBrack _ -> cont 43;
	TOp _ happy_dollar_dollar -> cont 44;
	TComOp _ happy_dollar_dollar -> cont 45;
	TLeftParen _ -> cont 46;
	TRightParen _ -> cont 47;
	TSemiColon _ -> cont 48;
	TPeriod _ -> cont 49;
	TNot _ -> cont 50;
	TEquals _ -> cont 51;
	TPrint _ -> cont 52;
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
    | ExpNewInt Exp
    | ExpBool Bool -- True or False
    | ExpIdent Ident
    | ExpNewIdent Ident -- new Ident ()
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


classSymbols (Program mainClass classDeclList) = classSymbolMainClass mainClass : classSymbolscl classDeclList

classSymbolMainClass (MClass className paramName statement) =
                      (className, (ClassSymbol className [] [
                                                            ("main", 
                                                                    (MethodSymbol {returnType = "void", name = "main", args = [("String[]", paramName)]})
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

methodSymbols MEmpty = []
methodSymbols (MethodDeclList methodDecl methodDeclList) = methodSymbol methodDecl : methodSymbols methodDeclList

methodSymbol (MethodDecl theType ident formalList varDeclList statementList exp)
             = case theType of
                    TypeInt -> (ident, MethodSymbol {returnType = "int", name = ident, args = (argSymbols formalList)})
                    TypeBoolean -> (ident, MethodSymbol {returnType = "boolean", name = ident, args = (argSymbols formalList)})
                    TypeString -> (ident, MethodSymbol {returnType = "string", name = ident, args = (argSymbols formalList)})
                    TypeIdent classType -> (ident, MethodSymbol {returnType = classType, name = ident, args = (argSymbols formalList)})

argSymbols FEmpty = []
argSymbols (FormalList theType ident formalList) =
           case theType of
                TypeInt -> (ident, "int") : argSymbols formalList
                TypeBoolean -> (ident, "boolean") : argSymbols formalList
                TypeString -> (ident, "string") : argSymbols formalList
                TypeIdent classType -> (ident, classType) : argSymbols formalList



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
