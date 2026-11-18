.class public final Lcom/ahsim/demulation/RecoveredWorldPresentationData;
.super Ljava/lang/Object;
.source "RecoveredWorldPresentationData.java"


# static fields
.field public static final EXPLOSION_SCRIPTS:[[I

.field public static final FOOT_ANIMATION_OFFSET:[I

.field public static final HOUSE_PALETTE_FLAGS:[I

.field public static final ORIENTATION_16:[[I

.field public static final ORIENTATION_8:[[I

.field public static final ORIENTATION_ALT:[[I

.field public static final STRUCTURE_LAYOUT_CELL_COUNT:[I

.field public static final STRUCTURE_LAYOUT_ID:[I

.field public static final STRUCTURE_LAYOUT_OFFSETS:[[I

.field public static final STRUCTURE_REMOVE_VISUAL_ID:[I

.field public static final STRUCTURE_VISUAL_ID:[I

.field public static final STRUCTURE_VISUAL_STREAMS:[[I

.field public static final UNIT_BASE_VISUAL:[I

.field public static final UNIT_VISUAL_MODE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 77

    .line 14
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_BASE_VISUAL:[I

    .line 15
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->UNIT_VISUAL_MODE:[I

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v1, v0, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->FOOT_ANIMATION_OFFSET:[I

    .line 17
    const/16 v3, 0x8

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->HOUSE_PALETTE_FLAGS:[I

    .line 18
    const/16 v4, 0x13

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    sput-object v4, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_ID:[I

    .line 19
    const/16 v4, 0x13

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    sput-object v4, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_ID:[I

    .line 20
    new-array v4, v3, [I

    fill-array-data v4, :array_5

    sput-object v4, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_REMOVE_VISUAL_ID:[I

    .line 21
    new-array v3, v3, [I

    fill-array-data v3, :array_6

    sput-object v3, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_CELL_COUNT:[I

    .line 23
    filled-new-array {v0, v0}, [I

    move-result-object v4

    filled-new-array {v1, v0}, [I

    move-result-object v5

    filled-new-array {v2, v0}, [I

    move-result-object v6

    const/4 v3, 0x3

    filled-new-array {v3, v0}, [I

    move-result-object v7

    const/4 v8, 0x4

    filled-new-array {v8, v0}, [I

    move-result-object v9

    move-object v10, v9

    filled-new-array {v3, v2}, [I

    move-result-object v9

    move-object v11, v10

    filled-new-array {v2, v2}, [I

    move-result-object v10

    move-object v12, v11

    filled-new-array {v1, v2}, [I

    move-result-object v11

    move-object v13, v12

    filled-new-array {v0, v2}, [I

    move-result-object v12

    move-object v14, v13

    filled-new-array {v1, v3}, [I

    move-result-object v13

    move-object v15, v14

    filled-new-array {v2, v3}, [I

    move-result-object v14

    move-object/from16 v16, v15

    filled-new-array {v3, v3}, [I

    move-result-object v15

    filled-new-array {v8, v1}, [I

    move-result-object v8

    filled-new-array {v3, v1}, [I

    move-result-object v17

    filled-new-array {v2, v1}, [I

    move-result-object v18

    filled-new-array {v1, v1}, [I

    move-result-object v19

    move-object/from16 v76, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v76

    filled-new-array/range {v4 .. v19}, [[I

    move-result-object v4

    sput-object v4, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_16:[[I

    .line 42
    filled-new-array {v0, v0}, [I

    move-result-object v5

    filled-new-array {v1, v0}, [I

    move-result-object v6

    filled-new-array {v1, v0}, [I

    move-result-object v7

    filled-new-array {v1, v0}, [I

    move-result-object v8

    filled-new-array {v2, v0}, [I

    move-result-object v9

    filled-new-array {v1, v1}, [I

    move-result-object v10

    filled-new-array {v1, v1}, [I

    move-result-object v11

    filled-new-array {v1, v1}, [I

    move-result-object v12

    filled-new-array/range {v5 .. v12}, [[I

    move-result-object v4

    sput-object v4, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_8:[[I

    .line 53
    filled-new-array {v0, v0}, [I

    move-result-object v5

    filled-new-array {v1, v0}, [I

    move-result-object v6

    filled-new-array {v2, v0}, [I

    move-result-object v7

    filled-new-array {v1, v2}, [I

    move-result-object v8

    filled-new-array {v0, v2}, [I

    move-result-object v9

    filled-new-array {v1, v3}, [I

    move-result-object v10

    filled-new-array {v2, v1}, [I

    move-result-object v11

    filled-new-array {v1, v1}, [I

    move-result-object v12

    filled-new-array/range {v5 .. v12}, [[I

    move-result-object v2

    sput-object v2, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->ORIENTATION_ALT:[[I

    .line 64
    filled-new-array {v0}, [I

    move-result-object v3

    filled-new-array {v0, v1}, [I

    move-result-object v4

    const/16 v2, 0x40

    filled-new-array {v0, v2}, [I

    move-result-object v5

    const/16 v6, 0x41

    filled-new-array {v0, v1, v2, v6}, [I

    move-result-object v6

    const/4 v2, 0x6

    new-array v7, v2, [I

    fill-array-data v7, :array_7

    new-array v8, v2, [I

    fill-array-data v8, :array_8

    const/16 v11, 0x9

    new-array v9, v11, [I

    fill-array-data v9, :array_9

    filled-new-array {v0}, [I

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [[I

    move-result-object v3

    sput-object v3, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_LAYOUT_OFFSETS:[[I

    .line 75
    filled-new-array {v0, v1}, [I

    move-result-object v12

    filled-new-array {v0, v1}, [I

    move-result-object v13

    filled-new-array {v0, v1}, [I

    move-result-object v14

    filled-new-array {v0, v1}, [I

    move-result-object v15

    filled-new-array {v0, v1}, [I

    move-result-object v16

    filled-new-array {v0, v1}, [I

    move-result-object v17

    filled-new-array {v0, v1}, [I

    move-result-object v18

    filled-new-array {v0, v1}, [I

    move-result-object v19

    filled-new-array {v0, v1}, [I

    move-result-object v20

    filled-new-array {v0, v1}, [I

    move-result-object v21

    filled-new-array {v0, v1}, [I

    move-result-object v22

    const/16 v3, 0x10

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    new-array v5, v3, [I

    fill-array-data v5, :array_b

    new-array v6, v3, [I

    fill-array-data v6, :array_c

    new-array v7, v3, [I

    fill-array-data v7, :array_d

    new-array v8, v3, [I

    fill-array-data v8, :array_e

    new-array v9, v3, [I

    fill-array-data v9, :array_f

    const/16 v10, 0x12

    new-array v10, v10, [I

    fill-array-data v10, :array_10

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    new-array v11, v3, [I

    fill-array-data v11, :array_14

    move-object/from16 v31, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    move-object/from16 v34, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    move-object/from16 v35, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    move-object/from16 v36, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    move-object/from16 v37, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_19

    const/16 v3, 0x2e

    move-object/from16 v38, v0

    const/16 v0, 0x114

    move-object/from16 v32, v1

    move-object/from16 v30, v2

    const/4 v1, 0x1

    const/16 v2, 0x9

    filled-new-array {v3, v2, v0, v1}, [I

    move-result-object v39

    const/16 v0, 0x2f

    const/16 v3, 0x115

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v40

    const/16 v0, 0x30

    const/16 v3, 0x116

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v41

    const/16 v0, 0x31

    const/16 v3, 0x117

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v42

    const/16 v0, 0x32

    const/16 v3, 0x118

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v43

    const/16 v0, 0x33

    const/16 v3, 0x119

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v44

    const/16 v0, 0x34

    const/16 v3, 0x11a

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v45

    const/16 v0, 0x35

    const/16 v3, 0x11b

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v46

    const/16 v0, 0x37

    const/16 v3, 0x11c

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v47

    const/16 v0, 0x38

    const/16 v3, 0x11d

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v48

    const/16 v0, 0x39

    const/16 v3, 0x11e

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v49

    const/16 v0, 0x3a

    const/16 v3, 0x11f

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v50

    const/16 v0, 0x3b

    const/16 v3, 0x120

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v51

    const/16 v0, 0x48

    const/16 v3, 0x121

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v52

    const/16 v0, 0x49

    const/16 v3, 0x122

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v53

    const/16 v0, 0x4a

    const/16 v3, 0x123

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v54

    const/16 v0, 0x28

    const/16 v2, 0x152

    const/4 v3, 0x0

    filled-new-array {v3, v0, v2, v1}, [I

    move-result-object v55

    const/16 v0, 0x1e

    const/16 v2, 0x15b

    filled-new-array {v3, v0, v2, v1}, [I

    move-result-object v56

    const/16 v0, 0x161

    const/16 v2, 0x14

    filled-new-array {v3, v2, v0, v1}, [I

    move-result-object v57

    const/16 v0, 0x165

    filled-new-array {v3, v2, v0, v1}, [I

    move-result-object v58

    filled-new-array {v3, v1}, [I

    move-result-object v59

    filled-new-array {v3, v1}, [I

    move-result-object v60

    filled-new-array {v3, v1}, [I

    move-result-object v61

    filled-new-array {v3, v1}, [I

    move-result-object v62

    filled-new-array {v3, v1}, [I

    move-result-object v63

    filled-new-array {v3, v1}, [I

    move-result-object v64

    filled-new-array {v3, v1}, [I

    move-result-object v65

    filled-new-array {v3, v1}, [I

    move-result-object v66

    filled-new-array {v3, v1}, [I

    move-result-object v67

    filled-new-array {v3, v1}, [I

    move-result-object v68

    filled-new-array {v3, v1}, [I

    move-result-object v69

    filled-new-array {v3, v1}, [I

    move-result-object v70

    filled-new-array {v3, v1}, [I

    move-result-object v71

    filled-new-array {v3, v1}, [I

    move-result-object v72

    filled-new-array {v3, v1}, [I

    move-result-object v73

    filled-new-array {v3, v1}, [I

    move-result-object v74

    filled-new-array {v3, v1}, [I

    move-result-object v75

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v33, v11

    filled-new-array/range {v12 .. v75}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->STRUCTURE_VISUAL_STREAMS:[[I

    .line 142
    const/16 v0, 0x99

    const/16 v1, 0xa

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const/4 v0, 0x6

    new-array v3, v0, [I

    fill-array-data v3, :array_1a

    const/16 v0, 0xb7

    filled-new-array {v0, v1}, [I

    move-result-object v4

    new-array v5, v1, [I

    fill-array-data v5, :array_1b

    new-array v6, v1, [I

    fill-array-data v6, :array_1c

    const/16 v7, 0xc

    new-array v7, v7, [I

    fill-array-data v7, :array_1d

    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_1e

    new-array v9, v1, [I

    fill-array-data v9, :array_1f

    new-array v10, v1, [I

    fill-array-data v10, :array_20

    const/16 v11, 0xb4

    const/16 v12, 0x54

    filled-new-array {v11, v12}, [I

    move-result-object v11

    const/16 v12, 0xb4

    const/16 v13, 0xcc

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const/16 v14, 0x10

    new-array v15, v14, [I

    fill-array-data v15, :array_21

    const/4 v14, 0x0

    new-array v0, v14, [I

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    const/16 v14, 0xe

    new-array v14, v14, [I

    fill-array-data v14, :array_23

    move-object/from16 v17, v0

    const/16 v0, 0xb4

    filled-new-array {v0, v13}, [I

    move-result-object v0

    const/4 v13, 0x0

    move-object/from16 v18, v0

    new-array v0, v13, [I

    new-array v13, v13, [I

    move-object/from16 v19, v0

    const/16 v0, 0xba

    move-object/from16 v20, v1

    const/16 v1, 0xf

    move-object/from16 v21, v2

    const/4 v2, 0x5

    move-object/from16 v22, v3

    const/16 v3, 0xb7

    filled-new-array {v3, v2, v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    const/16 v2, 0x1f

    const/16 v3, 0x258

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x20

    move-object/from16 v16, v0

    const/16 v0, 0x258

    filled-new-array {v3, v0}, [I

    move-result-object v23

    const/16 v0, 0x23

    const/16 v3, 0x258

    filled-new-array {v0, v3}, [I

    move-result-object v24

    const/16 v0, 0x24

    filled-new-array {v0, v3}, [I

    move-result-object v25

    move-object/from16 v3, v19

    move-object/from16 v19, v13

    move-object v13, v15

    move-object/from16 v15, v20

    move-object/from16 v20, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v1

    filled-new-array/range {v2 .. v25}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RecoveredWorldPresentationData;->EXPLOSION_SCRIPTS:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x11b
        0x121
        0x149
        0x155
        0x137
        0x140
        0x12d
        0x92
        0x92
        0x6f
        0x79
        0x83
        0x8d
        0xf3
        0xf3
        0xee
        0xf8
        0xfd
        0x116
        0x107
        0x107
        0x107
        0x111
        0xae
        0xa0
        0xd5
        0x12a
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x5
        0x4
        0x4
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2000
        0x6000
        0x2000
        0x4000
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3
        0x6
        0x5
        0x5
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x6
        0x5
        0x5
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x8
        0xb
        0xd
        0xd
        0xe
        0xf
        0x12
        0x11
        0x13
        0x12
        0x14
        0x15
        0x16
        0x6
        0x17
        0x18
        0x19
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x2e
        0x0
        0x0
        0x2d
        0x0
        0x2c
        0x2b
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x6
        0x6
        0x9
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x40
        0x41
        0x80
        0x81
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x40
        0x41
        0x42
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x1
        0x2
        0x40
        0x41
        0x42
        0x80
        0x81
        0x82
    .end array-data

    :array_a
    .array-data 4
        0x13e
        0x5a
        0xd2
        0x5
        0x13e
        0x5
        0xd2
        0x5
        0x13e
        0x5
        0xd2
        0x5
        0x13e
        0x5
        0xd2
        0x5
    .end array-data

    :array_b
    .array-data 4
        0x147
        0x5a
        0xdb
        0x5
        0x147
        0x5
        0xdb
        0x5
        0x147
        0x5
        0xdb
        0x5
        0x147
        0x5
        0xdb
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x147
        0x5a
        0xdf
        0x5
        0x147
        0x5
        0xdf
        0x5
        0x147
        0x5
        0xdf
        0x5
        0x147
        0x5
        0xdf
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x14d
        0x5a
        0xe5
        0x5
        0x14d
        0x5
        0xe5
        0x5
        0x14d
        0x5
        0xe5
        0x5
        0x14d
        0x5
        0xe5
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x14d
        0x5a
        0xeb
        0x5
        0x14d
        0x5
        0xeb
        0x5
        0x14d
        0x5
        0xeb
        0x5
        0x14d
        0x5
        0xeb
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x14d
        0x5a
        0xf7
        0x5
        0x14d
        0x5
        0xf7
        0x5
        0x14d
        0x5
        0xf7
        0x5
        0x14d
        0x5
        0xf7
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x14d
        0x5
        0x14d
        0x5a
        0xf3
        0x5
        0x14d
        0x5
        0xf3
        0x5
        0x14d
        0x5
        0xf3
        0x5
        0x14d
        0x5
        0xf3
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x14d
        0x5a
        0xf7
        0x5
        0x14d
        0x5
        0xf7
        0x5
        0x14d
        0x5
        0xf7
        0x5
        0x14d
        0x5
        0xf7
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x14d
        0x5a
        0xfb
        0x5
        0x14d
        0x5
        0xfb
        0x5
        0x14d
        0x5
        0xfb
        0x5
        0x14d
        0x5
        0xfb
        0x5
    .end array-data

    :array_13
    .array-data 4
        0x13e
        0x5a
        0xff
        0x5
        0x13e
        0x5
        0xff
        0x5
        0x13e
        0x5
        0xff
        0x5
        0x13e
        0x5
        0xff
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x147
        0x5a
        0x108
        0x5
        0x147
        0x5
        0x108
        0x5
        0x147
        0x5
        0x108
        0x5
        0x147
        0x5
        0x108
        0x5
    .end array-data

    :array_15
    .array-data 4
        0x147
        0x5a
        0x10e
        0x5
        0x147
        0x5
        0x10e
        0x5
        0x147
        0x5
        0x10e
        0x5
        0x147
        0x5
        0x10e
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x151
        0x5a
        0x114
        0x5
        0x151
        0x5
        0x114
        0x5
        0x151
        0x5
        0x114
        0x5
        0x151
        0x5
        0x114
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x151
        0x5a
        0x11c
        0x5
        0x151
        0x5
        0x11c
        0x5
        0x151
        0x5
        0x11c
        0x5
        0x151
        0x5
        0x11c
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x14d
        0x5a
        0x124
        0x5
        0x14d
        0x5
        0x124
        0x5
        0x14d
        0x5
        0x124
        0x5
        0x14d
        0x5
        0x124
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x14d
        0x5a
        0x128
        0x5
        0x14d
        0x5
        0x128
        0x5
        0x14d
        0x5
        0x128
        0x5
        0x14d
        0x5
        0x128
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x99
        0xa
        0x9a
        0xa
        0x9b
        0xa
    .end array-data

    :array_1b
    .array-data 4
        0xb7
        0xa
        0xb8
        0xa
        0xb9
        0xa
        0xba
        0xa
        0xbb
        0xa
    .end array-data

    :array_1c
    .array-data 4
        0xcb
        0xa
        0xcc
        0xa
        0xcd
        0xa
        0xce
        0xa
        0xcf
        0xa
    .end array-data

    :array_1d
    .array-data 4
        0x7
        0x14
        0xb7
        0xa
        0xb8
        0xa
        0xb9
        0xa
        0xba
        0xa
        0xbb
        0xa
    .end array-data

    :array_1e
    .array-data 4
        0x7
        0x14
        0xcb
        0xa
        0xcc
        0xa
        0xcd
        0xa
        0xce
        0xa
        0xcf
        0xa
    .end array-data

    :array_1f
    .array-data 4
        0xd0
        0xa
        0xd1
        0xa
        0xd2
        0xa
        0xd3
        0xa
        0xd4
        0x1e
    .end array-data

    :array_20
    .array-data 4
        0xb7
        0xa
        0xb8
        0xa
        0xb9
        0xa
        0xba
        0xa
        0xbb
        0xa
    .end array-data

    :array_21
    .array-data 4
        0xb7
        0xa
        0xb8
        0xa
        0xcc
        0xa
        0xb9
        0xa
        0xba
        0xa
        0xcd
        0xa
        0xce
        0xa
        0xbb
        0xa
    .end array-data

    :array_22
    .array-data 4
        0xda
        0xa
        0xdb
        0xa
        0xdc
        0xa
        0xdd
        0xa
        0xde
        0x1e
    .end array-data

    :array_23
    .array-data 4
        0xb7
        0x5
        0xcb
        0x7
        0xb8
        0x7
        0xcc
        0xa
        0xcd
        0xa
        0xce
        0xa
        0xcf
        0xa
    .end array-data

    :array_24
    .array-data 4
        0xc7
        0x5
        0xc8
        0xa
        0xc9
        0xa
        0xc8
        0x5
        0xc9
        0x5
        0xc8
        0x5
        0xc9
        0x5
        0xca
        0x14
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
