module Main where
import Scanner

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

action_3 (37) = happyShift action_5
action_3 _ = happyFail

action_4 (52) = happyAccept
action_4 _ = happyFail

action_5 (38) = happyShift action_11
action_5 _ = happyFail

action_6 _ = happyReduce_1

action_7 (18) = happyShift action_8
action_7 (52) = happyReduce_5
action_7 (6) = happyGoto action_10
action_7 (7) = happyGoto action_7
action_7 _ = happyReduce_5

action_8 (37) = happyShift action_9
action_8 _ = happyFail

action_9 (26) = happyShift action_13
action_9 (38) = happyShift action_14
action_9 _ = happyFail

action_10 _ = happyReduce_4

action_11 (24) = happyShift action_12
action_11 _ = happyFail

action_12 (21) = happyShift action_21
action_12 _ = happyFail

action_13 (37) = happyShift action_20
action_13 _ = happyFail

action_14 (27) = happyShift action_17
action_14 (28) = happyShift action_18
action_14 (37) = happyShift action_19
action_14 (10) = happyGoto action_15
action_14 (12) = happyGoto action_16
action_14 _ = happyReduce_14

action_15 (24) = happyShift action_28
action_15 (8) = happyGoto action_26
action_15 (9) = happyGoto action_27
action_15 _ = happyReduce_10

action_16 (37) = happyShift action_25
action_16 _ = happyFail

action_17 (41) = happyShift action_24
action_17 _ = happyReduce_19

action_18 _ = happyReduce_18

action_19 _ = happyReduce_20

action_20 (38) = happyShift action_23
action_20 _ = happyFail

action_21 (22) = happyShift action_22
action_21 _ = happyFail

action_22 (23) = happyShift action_35
action_22 _ = happyFail

action_23 (27) = happyShift action_17
action_23 (28) = happyShift action_18
action_23 (37) = happyShift action_19
action_23 (10) = happyGoto action_34
action_23 (12) = happyGoto action_16
action_23 _ = happyReduce_14

action_24 (42) = happyShift action_33
action_24 _ = happyFail

action_25 (47) = happyShift action_32
action_25 _ = happyFail

action_26 (39) = happyShift action_31
action_26 _ = happyFail

action_27 (24) = happyShift action_28
action_27 (39) = happyReduce_10
action_27 (8) = happyGoto action_30
action_27 (9) = happyGoto action_27
action_27 _ = happyReduce_10

action_28 (27) = happyShift action_17
action_28 (28) = happyShift action_18
action_28 (37) = happyShift action_19
action_28 (12) = happyGoto action_29
action_28 _ = happyFail

action_29 (37) = happyShift action_39
action_29 _ = happyFail

action_30 _ = happyReduce_9

action_31 _ = happyReduce_6

action_32 (24) = happyReduce_14
action_32 (27) = happyShift action_17
action_32 (28) = happyShift action_18
action_32 (29) = happyReduce_14
action_32 (35) = happyReduce_14
action_32 (37) = happyShift action_19
action_32 (38) = happyReduce_14
action_32 (39) = happyReduce_14
action_32 (51) = happyReduce_14
action_32 (10) = happyGoto action_38
action_32 (12) = happyGoto action_16
action_32 _ = happyReduce_14

action_33 _ = happyReduce_17

action_34 (24) = happyShift action_28
action_34 (8) = happyGoto action_37
action_34 (9) = happyGoto action_27
action_34 _ = happyReduce_10

action_35 (45) = happyShift action_36
action_35 _ = happyFail

action_36 (20) = happyShift action_42
action_36 _ = happyFail

action_37 (39) = happyShift action_41
action_37 _ = happyFail

action_38 _ = happyReduce_13

action_39 (45) = happyShift action_40
action_39 _ = happyFail

action_40 (27) = happyShift action_17
action_40 (28) = happyShift action_18
action_40 (37) = happyShift action_19
action_40 (11) = happyGoto action_44
action_40 (12) = happyGoto action_45
action_40 _ = happyFail

action_41 _ = happyReduce_7

action_42 (41) = happyShift action_43
action_42 _ = happyFail

action_43 (42) = happyShift action_48
action_43 _ = happyFail

action_44 (46) = happyShift action_47
action_44 _ = happyFail

action_45 (37) = happyShift action_46
action_45 _ = happyFail

action_46 (27) = happyShift action_17
action_46 (28) = happyShift action_18
action_46 (37) = happyShift action_19
action_46 (11) = happyGoto action_51
action_46 (12) = happyGoto action_45
action_46 _ = happyReduce_15

action_47 (38) = happyShift action_50
action_47 _ = happyFail

action_48 (37) = happyShift action_49
action_48 _ = happyFail

action_49 (46) = happyShift action_53
action_49 _ = happyFail

action_50 (27) = happyShift action_17
action_50 (28) = happyShift action_18
action_50 (37) = happyShift action_19
action_50 (10) = happyGoto action_52
action_50 (12) = happyGoto action_16
action_50 _ = happyReduce_14

action_51 _ = happyReduce_16

action_52 (29) = happyShift action_57
action_52 (35) = happyShift action_58
action_52 (37) = happyShift action_59
action_52 (38) = happyShift action_60
action_52 (51) = happyShift action_61
action_52 (13) = happyGoto action_55
action_52 (14) = happyGoto action_56
action_52 _ = happyFail

action_53 (38) = happyShift action_54
action_53 _ = happyFail

action_54 (29) = happyShift action_57
action_54 (35) = happyShift action_58
action_54 (37) = happyShift action_59
action_54 (38) = happyShift action_60
action_54 (51) = happyShift action_61
action_54 (13) = happyGoto action_70
action_54 _ = happyFail

action_55 _ = happyReduce_27

action_56 (25) = happyShift action_69
action_56 (29) = happyShift action_57
action_56 (35) = happyShift action_58
action_56 (37) = happyShift action_59
action_56 (38) = happyShift action_60
action_56 (51) = happyShift action_61
action_56 (13) = happyGoto action_68
action_56 _ = happyFail

action_57 (45) = happyShift action_67
action_57 _ = happyFail

action_58 (45) = happyShift action_66
action_58 _ = happyFail

action_59 (41) = happyShift action_64
action_59 (50) = happyShift action_65
action_59 _ = happyFail

action_60 (29) = happyShift action_57
action_60 (35) = happyShift action_58
action_60 (37) = happyShift action_59
action_60 (38) = happyShift action_60
action_60 (51) = happyShift action_61
action_60 (13) = happyGoto action_55
action_60 (14) = happyGoto action_63
action_60 _ = happyFail

action_61 (45) = happyShift action_62
action_61 _ = happyFail

action_62 (19) = happyShift action_73
action_62 (31) = happyShift action_74
action_62 (32) = happyShift action_75
action_62 (33) = happyShift action_76
action_62 (36) = happyShift action_77
action_62 (37) = happyShift action_78
action_62 (45) = happyShift action_79
action_62 (49) = happyShift action_80
action_62 (15) = happyGoto action_86
action_62 _ = happyFail

action_63 (29) = happyShift action_57
action_63 (35) = happyShift action_58
action_63 (37) = happyShift action_59
action_63 (38) = happyShift action_60
action_63 (39) = happyShift action_85
action_63 (51) = happyShift action_61
action_63 (13) = happyGoto action_68
action_63 _ = happyFail

action_64 (19) = happyShift action_73
action_64 (31) = happyShift action_74
action_64 (32) = happyShift action_75
action_64 (33) = happyShift action_76
action_64 (36) = happyShift action_77
action_64 (37) = happyShift action_78
action_64 (45) = happyShift action_79
action_64 (49) = happyShift action_80
action_64 (15) = happyGoto action_84
action_64 _ = happyFail

action_65 (19) = happyShift action_73
action_65 (31) = happyShift action_74
action_65 (32) = happyShift action_75
action_65 (33) = happyShift action_76
action_65 (36) = happyShift action_77
action_65 (37) = happyShift action_78
action_65 (45) = happyShift action_79
action_65 (49) = happyShift action_80
action_65 (15) = happyGoto action_83
action_65 _ = happyFail

action_66 (19) = happyShift action_73
action_66 (31) = happyShift action_74
action_66 (32) = happyShift action_75
action_66 (33) = happyShift action_76
action_66 (36) = happyShift action_77
action_66 (37) = happyShift action_78
action_66 (45) = happyShift action_79
action_66 (49) = happyShift action_80
action_66 (15) = happyGoto action_82
action_66 _ = happyFail

action_67 (19) = happyShift action_73
action_67 (31) = happyShift action_74
action_67 (32) = happyShift action_75
action_67 (33) = happyShift action_76
action_67 (36) = happyShift action_77
action_67 (37) = happyShift action_78
action_67 (45) = happyShift action_79
action_67 (49) = happyShift action_80
action_67 (15) = happyGoto action_81
action_67 _ = happyFail

action_68 _ = happyReduce_28

action_69 (19) = happyShift action_73
action_69 (31) = happyShift action_74
action_69 (32) = happyShift action_75
action_69 (33) = happyShift action_76
action_69 (36) = happyShift action_77
action_69 (37) = happyShift action_78
action_69 (45) = happyShift action_79
action_69 (49) = happyShift action_80
action_69 (15) = happyGoto action_72
action_69 _ = happyFail

action_70 (39) = happyShift action_71
action_70 _ = happyFail

action_71 (39) = happyShift action_101
action_71 _ = happyFail

action_72 (41) = happyShift action_87
action_72 (43) = happyShift action_88
action_72 (44) = happyShift action_89
action_72 (47) = happyShift action_100
action_72 (48) = happyShift action_91
action_72 _ = happyFail

action_73 (27) = happyShift action_98
action_73 (37) = happyShift action_99
action_73 _ = happyFail

action_74 _ = happyReduce_35

action_75 _ = happyReduce_36

action_76 _ = happyReduce_38

action_77 _ = happyReduce_34

action_78 _ = happyReduce_37

action_79 (19) = happyShift action_73
action_79 (31) = happyShift action_74
action_79 (32) = happyShift action_75
action_79 (33) = happyShift action_76
action_79 (36) = happyShift action_77
action_79 (37) = happyShift action_78
action_79 (45) = happyShift action_79
action_79 (49) = happyShift action_80
action_79 (15) = happyGoto action_97
action_79 _ = happyFail

action_80 (19) = happyShift action_73
action_80 (31) = happyShift action_74
action_80 (32) = happyShift action_75
action_80 (33) = happyShift action_76
action_80 (36) = happyShift action_77
action_80 (37) = happyShift action_78
action_80 (45) = happyShift action_79
action_80 (49) = happyShift action_80
action_80 (15) = happyGoto action_96
action_80 _ = happyFail

action_81 (41) = happyShift action_87
action_81 (43) = happyShift action_88
action_81 (44) = happyShift action_89
action_81 (46) = happyShift action_95
action_81 (48) = happyShift action_91
action_81 _ = happyFail

action_82 (41) = happyShift action_87
action_82 (43) = happyShift action_88
action_82 (44) = happyShift action_89
action_82 (46) = happyShift action_94
action_82 (48) = happyShift action_91
action_82 _ = happyFail

action_83 (41) = happyShift action_87
action_83 (43) = happyShift action_88
action_83 (44) = happyShift action_89
action_83 (47) = happyShift action_93
action_83 (48) = happyShift action_91
action_83 _ = happyFail

action_84 (41) = happyShift action_87
action_84 (42) = happyShift action_92
action_84 (43) = happyShift action_88
action_84 (44) = happyShift action_89
action_84 (48) = happyShift action_91
action_84 _ = happyFail

action_85 _ = happyReduce_21

action_86 (41) = happyShift action_87
action_86 (43) = happyShift action_88
action_86 (44) = happyShift action_89
action_86 (46) = happyShift action_90
action_86 (48) = happyShift action_91
action_86 _ = happyFail

action_87 (19) = happyShift action_73
action_87 (31) = happyShift action_74
action_87 (32) = happyShift action_75
action_87 (33) = happyShift action_76
action_87 (36) = happyShift action_77
action_87 (37) = happyShift action_78
action_87 (45) = happyShift action_79
action_87 (49) = happyShift action_80
action_87 (15) = happyGoto action_114
action_87 _ = happyFail

action_88 (19) = happyShift action_73
action_88 (31) = happyShift action_74
action_88 (32) = happyShift action_75
action_88 (33) = happyShift action_76
action_88 (36) = happyShift action_77
action_88 (37) = happyShift action_78
action_88 (45) = happyShift action_79
action_88 (49) = happyShift action_80
action_88 (15) = happyGoto action_113
action_88 _ = happyFail

action_89 (19) = happyShift action_73
action_89 (31) = happyShift action_74
action_89 (32) = happyShift action_75
action_89 (33) = happyShift action_76
action_89 (36) = happyShift action_77
action_89 (37) = happyShift action_78
action_89 (45) = happyShift action_79
action_89 (49) = happyShift action_80
action_89 (15) = happyGoto action_112
action_89 _ = happyFail

action_90 (47) = happyShift action_111
action_90 _ = happyFail

action_91 (34) = happyShift action_109
action_91 (37) = happyShift action_110
action_91 _ = happyFail

action_92 (50) = happyShift action_108
action_92 _ = happyFail

action_93 _ = happyReduce_25

action_94 (29) = happyShift action_57
action_94 (35) = happyShift action_58
action_94 (37) = happyShift action_59
action_94 (38) = happyShift action_60
action_94 (51) = happyShift action_61
action_94 (13) = happyGoto action_107
action_94 _ = happyFail

action_95 (29) = happyShift action_57
action_95 (35) = happyShift action_58
action_95 (37) = happyShift action_59
action_95 (38) = happyShift action_60
action_95 (51) = happyShift action_61
action_95 (13) = happyGoto action_106
action_95 _ = happyFail

action_96 (41) = happyShift action_87
action_96 (43) = happyShift action_88
action_96 (44) = happyShift action_89
action_96 (48) = happyShift action_91
action_96 _ = happyReduce_41

action_97 (41) = happyShift action_87
action_97 (43) = happyShift action_88
action_97 (44) = happyShift action_89
action_97 (46) = happyShift action_105
action_97 (48) = happyShift action_91
action_97 _ = happyFail

action_98 (41) = happyShift action_104
action_98 _ = happyFail

action_99 (45) = happyShift action_103
action_99 _ = happyFail

action_100 (39) = happyShift action_102
action_100 _ = happyFail

action_101 _ = happyReduce_2

action_102 _ = happyReduce_11

action_103 (46) = happyShift action_120
action_103 _ = happyFail

action_104 (19) = happyShift action_73
action_104 (31) = happyShift action_74
action_104 (32) = happyShift action_75
action_104 (33) = happyShift action_76
action_104 (36) = happyShift action_77
action_104 (37) = happyShift action_78
action_104 (45) = happyShift action_79
action_104 (49) = happyShift action_80
action_104 (15) = happyGoto action_119
action_104 _ = happyFail

action_105 _ = happyReduce_42

action_106 (30) = happyShift action_118
action_106 _ = happyFail

action_107 _ = happyReduce_23

action_108 (19) = happyShift action_73
action_108 (31) = happyShift action_74
action_108 (32) = happyShift action_75
action_108 (33) = happyShift action_76
action_108 (36) = happyShift action_77
action_108 (37) = happyShift action_78
action_108 (45) = happyShift action_79
action_108 (49) = happyShift action_80
action_108 (15) = happyGoto action_117
action_108 _ = happyFail

action_109 _ = happyReduce_32

action_110 (45) = happyShift action_116
action_110 _ = happyFail

action_111 _ = happyReduce_24

action_112 (41) = happyShift action_87
action_112 (43) = happyShift action_88
action_112 (44) = happyShift action_89
action_112 (48) = happyShift action_91
action_112 _ = happyReduce_30

action_113 (41) = happyShift action_87
action_113 (43) = happyShift action_88
action_113 (44) = happyShift action_89
action_113 (48) = happyShift action_91
action_113 _ = happyReduce_29

action_114 (41) = happyShift action_87
action_114 (42) = happyShift action_115
action_114 (43) = happyShift action_88
action_114 (44) = happyShift action_89
action_114 (48) = happyShift action_91
action_114 _ = happyFail

action_115 _ = happyReduce_31

action_116 (19) = happyShift action_73
action_116 (31) = happyShift action_74
action_116 (32) = happyShift action_75
action_116 (33) = happyShift action_76
action_116 (36) = happyShift action_77
action_116 (37) = happyShift action_78
action_116 (45) = happyShift action_79
action_116 (49) = happyShift action_80
action_116 (15) = happyGoto action_124
action_116 (16) = happyGoto action_125
action_116 _ = happyReduce_45

action_117 (41) = happyShift action_87
action_117 (43) = happyShift action_88
action_117 (44) = happyShift action_89
action_117 (47) = happyShift action_123
action_117 (48) = happyShift action_91
action_117 _ = happyFail

action_118 (29) = happyShift action_57
action_118 (35) = happyShift action_58
action_118 (37) = happyShift action_59
action_118 (38) = happyShift action_60
action_118 (51) = happyShift action_61
action_118 (13) = happyGoto action_122
action_118 _ = happyFail

action_119 (41) = happyShift action_87
action_119 (42) = happyShift action_121
action_119 (43) = happyShift action_88
action_119 (44) = happyShift action_89
action_119 (48) = happyShift action_91
action_119 _ = happyFail

action_120 _ = happyReduce_40

action_121 _ = happyReduce_39

action_122 _ = happyReduce_22

action_123 _ = happyReduce_26

action_124 (40) = happyShift action_128
action_124 (41) = happyShift action_87
action_124 (43) = happyShift action_88
action_124 (44) = happyShift action_89
action_124 (48) = happyShift action_91
action_124 (17) = happyGoto action_127
action_124 _ = happyReduce_43

action_125 (46) = happyShift action_126
action_125 _ = happyFail

action_126 _ = happyReduce_33

action_127 _ = happyReduce_44

action_128 (19) = happyShift action_73
action_128 (31) = happyShift action_74
action_128 (32) = happyShift action_75
action_128 (33) = happyShift action_76
action_128 (36) = happyShift action_77
action_128 (37) = happyShift action_78
action_128 (45) = happyShift action_79
action_128 (49) = happyShift action_80
action_128 (15) = happyGoto action_129
action_128 _ = happyFail

action_129 (41) = happyShift action_87
action_129 (43) = happyShift action_88
action_129 (44) = happyShift action_89
action_129 (48) = happyShift action_91
action_129 _ = happyReduce_46

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
happyReduction_35 _
	 =  HappyAbsSyn15
		 (ExpBool True
	)

happyReduce_36 = happySpecReduce_1  15 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn15
		 (ExpBool False
	)

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn15
		 (ExpIdent happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn15
		 (ExpThis
	)

happyReduce_39 = happyReduce 5 15 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewInt happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 15 happyReduction_40
happyReduction_40 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (ExpNewIdent happy_var_2
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_2  15 happyReduction_41
happyReduction_41 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (ExpNot happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  15 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (ExpExp happy_var_2
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  16 happyReduction_43
happyReduction_43 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (ExpListExp happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  16 happyReduction_44
happyReduction_44 (HappyAbsSyn17  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (ExpList happy_var_1 happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_0  16 happyReduction_45
happyReduction_45  =  HappyAbsSyn16
		 (ExpListEmpty
	)

happyReduce_46 = happySpecReduce_2  17 happyReduction_46
happyReduction_46 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (ExpRest happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

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
	TIdent _ happy_dollar_dollar -> cont 37;
	TLeftBrace _ -> cont 38;
	TRightBrace _ -> cont 39;
	TComma _ -> cont 40;
	TLeftBrack _ -> cont 41;
	TRightBrack _ -> cont 42;
	TOp _ happy_dollar_dollar -> cont 43;
	TComOp _ happy_dollar_dollar -> cont 44;
	TLeftParen _ -> cont 45;
	TRightParen _ -> cont 46;
	TSemiColon _ -> cont 47;
	TPeriod _ -> cont 48;
	TNot _ -> cont 49;
	TEquals _ -> cont 50;
	TPrint _ -> cont 51;
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
parseError tokenList = let pos = tokenPosn(last(tokenList)) 
  in 
  error ("Parse error at " ++ show(getLineNum(pos)) ++ ":" ++ show(getColumnNum(pos)))


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
    TypeIntArray
    | TypeBoolean
    | TypeInt
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
type Integer_Literal = Int
data ExpList
    = ExpList Exp ExpRest
    | ExpListEmpty
    | ExpListExp Exp
    deriving (Show, Eq)
data ExpRest
    = ExpRest Exp
    deriving (Show, Eq)



main = do 
  inStr <- getContents
  let parseTree = newl (alexScanTokens2 inStr)  
  putStrLn ("parseTree: " ++ show(parseTree))
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
