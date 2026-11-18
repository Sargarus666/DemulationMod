.class final Lcom/ahsim/demulation/GermanRomAddressMap;
.super Ljava/lang/Object;
.source "GermanRomAddressMap.java"


# static fields
.field private static final EXACT_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[B",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final GERMAN_SHA256:Ljava/lang/String; = "7f11e502ba2f4b4cdeee82c4e22b5ba64f04433ef1e5de1346db7231c1bd2e30"

.field static final ROM_BYTES:I = 0x100000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GermanRomAddressMap;->EXACT_CACHE:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFixed([BII)[B
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "canonical"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GermanRomAddressMap;->fixed([BI)I

    move-result v0

    .line 54
    .local v0, "physical":I
    if-ltz p2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_0

    .line 57
    new-array v1, p2, [B

    .line 58
    .local v1, "out":[B
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-object v1

    .line 55
    .end local v1    # "out":[B
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "German fixed range outside ROM: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static deltaFor(I)I
    .locals 6
    .param p0, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const v0, 0x9d9c

    const/16 v1, 0x30

    if-eq p0, v0, :cond_44

    const v0, 0x9db6

    if-eq p0, v0, :cond_44

    const v0, 0x9ddc

    if-eq p0, v0, :cond_44

    const v0, 0xa3dc

    if-ne p0, v0, :cond_0

    goto/16 :goto_0

    .line 71
    :cond_0
    const v0, 0xa07c

    if-ne p0, v0, :cond_1

    const/16 v0, -0x90

    return v0

    .line 73
    :cond_1
    const v0, 0x32472

    if-ne p0, v0, :cond_2

    const/16 v0, -0x3b28

    return v0

    .line 74
    :cond_2
    const v0, 0x415cc

    if-ne p0, v0, :cond_3

    const/16 v0, -0x3942

    return v0

    .line 78
    :cond_3
    const v0, 0x42ad0

    if-ne p0, v0, :cond_4

    const/16 v0, -0x38d8

    return v0

    .line 81
    :cond_4
    const v0, 0xa5e64

    if-ne p0, v0, :cond_5

    const/16 v0, -0x343c

    return v0

    .line 82
    :cond_5
    const v0, 0xb9312

    if-ne p0, v0, :cond_6

    const/16 v0, -0x34e4

    return v0

    .line 83
    :cond_6
    const/16 v0, -0x342e

    const v2, 0xd06bf

    if-ne p0, v2, :cond_7

    return v0

    .line 84
    :cond_7
    const v3, 0xfed40

    if-ne p0, v3, :cond_8

    const/16 v0, -0x4e46

    return v0

    .line 86
    :cond_8
    const/16 v3, 0x1000

    const/16 v4, 0x3000

    if-lt p0, v3, :cond_9

    if-ge p0, v4, :cond_9

    const/4 v0, -0x8

    return v0

    .line 87
    :cond_9
    const v3, 0x846a

    if-lt p0, v4, :cond_a

    if-ge p0, v3, :cond_a

    const/16 v0, -0xc

    return v0

    .line 88
    :cond_a
    const v4, 0x9330

    if-lt p0, v3, :cond_b

    if-ge p0, v4, :cond_b

    const/16 v0, 0x2e

    return v0

    .line 89
    :cond_b
    const v3, 0xa402

    if-lt p0, v4, :cond_c

    if-ge p0, v3, :cond_c

    return v1

    .line 90
    :cond_c
    if-lt p0, v3, :cond_d

    const v1, 0x11000

    if-ge p0, v1, :cond_d

    const/16 v0, 0x90

    return v0

    .line 92
    :cond_d
    const v1, 0x12000

    const/4 v3, -0x4

    const v4, 0x17a54

    if-lt p0, v1, :cond_e

    if-ge p0, v4, :cond_e

    return v3

    .line 93
    :cond_e
    const/16 v1, 0x8

    if-lt p0, v4, :cond_f

    const v4, 0x1c000

    if-ge p0, v4, :cond_f

    return v1

    .line 96
    :cond_f
    const/high16 v4, 0x20000

    const v5, 0x21000

    if-lt p0, v4, :cond_10

    if-ge p0, v5, :cond_10

    const/16 v0, 0x594

    return v0

    .line 97
    :cond_10
    const v4, 0x22000

    if-lt p0, v5, :cond_11

    if-ge p0, v4, :cond_11

    const/16 v0, 0x596

    return v0

    .line 98
    :cond_11
    const v5, 0x26000

    if-lt p0, v4, :cond_12

    if-ge p0, v5, :cond_12

    const/16 v0, 0x5f8

    return v0

    .line 99
    :cond_12
    const v4, 0x26de6

    if-lt p0, v5, :cond_13

    if-ge p0, v4, :cond_13

    const/16 v0, 0x604

    return v0

    .line 100
    :cond_13
    if-lt p0, v4, :cond_14

    const v4, 0x2a000

    if-ge p0, v4, :cond_14

    const/16 v0, 0x630

    return v0

    .line 103
    :cond_14
    const v4, 0x2dcd4

    const v5, 0x32470

    if-lt p0, v4, :cond_15

    if-ge p0, v5, :cond_15

    const/16 v0, -0x3bb0

    return v0

    .line 104
    :cond_15
    const v4, 0x35900

    if-lt p0, v5, :cond_16

    if-ge p0, v4, :cond_16

    const/16 v0, -0x3a96

    return v0

    .line 105
    :cond_16
    const v5, 0x37000

    if-lt p0, v4, :cond_17

    if-ge p0, v5, :cond_17

    const/16 v0, -0x3a36

    return v0

    .line 106
    :cond_17
    const v4, 0x39000

    if-lt p0, v5, :cond_18

    if-ge p0, v4, :cond_18

    const/16 v0, -0x3a30

    return v0

    .line 107
    :cond_18
    const v5, 0x3b000

    if-lt p0, v4, :cond_19

    if-ge p0, v5, :cond_19

    const/16 v0, -0x39fe

    return v0

    .line 108
    :cond_19
    const v4, 0x3c000

    if-lt p0, v5, :cond_1a

    if-ge p0, v4, :cond_1a

    const/16 v0, -0x39ee

    return v0

    .line 109
    :cond_1a
    const v5, 0x3f000

    if-lt p0, v4, :cond_1b

    if-ge p0, v5, :cond_1b

    const/16 v0, -0x39c0

    return v0

    .line 110
    :cond_1b
    const/high16 v4, 0x40000

    if-lt p0, v5, :cond_1c

    if-ge p0, v4, :cond_1c

    const/16 v0, -0x39fc

    return v0

    .line 111
    :cond_1c
    if-lt p0, v4, :cond_1d

    const v4, 0x41000

    if-ge p0, v4, :cond_1d

    const/16 v0, -0x39d8

    return v0

    .line 112
    :cond_1d
    const v4, 0x41000

    if-lt p0, v4, :cond_1e

    const v4, 0x416e2

    if-ge p0, v4, :cond_1e

    const/16 v0, -0x39d4

    return v0

    .line 113
    :cond_1e
    const v4, 0x416e2

    if-lt p0, v4, :cond_1f

    const v4, 0x41b48

    if-ge p0, v4, :cond_1f

    const/16 v0, -0x393e

    return v0

    .line 114
    :cond_1f
    const v4, 0x41b48

    if-lt p0, v4, :cond_20

    const v4, 0x41d5c

    if-ge p0, v4, :cond_20

    const/16 v0, -0x3940

    return v0

    .line 115
    :cond_20
    const v4, 0x41d5c

    if-lt p0, v4, :cond_21

    const v4, 0x41f56

    if-ge p0, v4, :cond_21

    const/16 v0, -0x393e

    return v0

    .line 116
    :cond_21
    const v4, 0x41f56

    if-lt p0, v4, :cond_22

    const v4, 0x4231c

    if-ge p0, v4, :cond_22

    const/16 v0, -0x393c

    return v0

    .line 117
    :cond_22
    const v4, 0x4231c

    if-lt p0, v4, :cond_23

    const v4, 0x423cc

    if-ge p0, v4, :cond_23

    const/16 v0, -0x391a

    return v0

    .line 118
    :cond_23
    const v4, 0x423cc

    if-lt p0, v4, :cond_24

    const v4, 0x4270c

    if-ge p0, v4, :cond_24

    const/16 v0, -0x3916

    return v0

    .line 119
    :cond_24
    const v4, 0x4270c

    if-lt p0, v4, :cond_25

    const v4, 0x42936

    if-ge p0, v4, :cond_25

    const/16 v0, -0x38ec

    return v0

    .line 120
    :cond_25
    const v4, 0x42936

    if-lt p0, v4, :cond_26

    const v4, 0x42b50

    if-ge p0, v4, :cond_26

    const/16 v0, -0x38da

    return v0

    .line 121
    :cond_26
    const v4, 0x42b50

    if-lt p0, v4, :cond_27

    const v4, 0x43000

    if-ge p0, v4, :cond_27

    const/16 v0, -0x38c2

    return v0

    .line 122
    :cond_27
    const v4, 0x43000

    if-lt p0, v4, :cond_28

    const v4, 0x48000

    if-ge p0, v4, :cond_28

    const/16 v0, -0x3724

    return v0

    .line 123
    :cond_28
    const v4, 0x48000

    if-lt p0, v4, :cond_29

    const/high16 v4, 0x50000

    if-ge p0, v4, :cond_29

    const/16 v0, -0x3728

    return v0

    .line 124
    :cond_29
    const/high16 v4, 0x50000

    if-lt p0, v4, :cond_2a

    const v4, 0x50ae8

    if-ge p0, v4, :cond_2a

    const/16 v0, -0x3728

    return v0

    .line 125
    :cond_2a
    const v4, 0x50ae8

    if-lt p0, v4, :cond_2b

    const v4, 0x52f2a

    if-ge p0, v4, :cond_2b

    const/16 v0, -0x3712

    return v0

    .line 126
    :cond_2b
    const v4, 0x52f2a

    if-lt p0, v4, :cond_2c

    const v4, 0x67000

    if-ge p0, v4, :cond_2c

    const/16 v0, -0x3710

    return v0

    .line 127
    :cond_2c
    const v4, 0x67000

    if-lt p0, v4, :cond_2d

    const v4, 0xa2818

    if-ge p0, v4, :cond_2d

    const/16 v0, -0x3730

    return v0

    .line 130
    :cond_2d
    const v4, 0xa2bfc

    if-lt p0, v4, :cond_2e

    const v4, 0xa5d0e

    if-ge p0, v4, :cond_2e

    const/16 v0, -0x3470

    return v0

    .line 131
    :cond_2e
    const v4, 0xa5d0e

    if-lt p0, v4, :cond_2f

    const v4, 0xa5ee4

    if-ge p0, v4, :cond_2f

    const/16 v0, -0x3446

    return v0

    .line 132
    :cond_2f
    const v4, 0xa5ee4

    if-lt p0, v4, :cond_30

    const v4, 0xa6998

    if-ge p0, v4, :cond_30

    const/16 v0, -0x3436

    return v0

    .line 133
    :cond_30
    const v4, 0xa6998

    if-lt p0, v4, :cond_31

    const v4, 0xaa000

    if-ge p0, v4, :cond_31

    const/16 v0, -0x3434

    return v0

    .line 136
    :cond_31
    const v4, 0xb9000

    if-lt p0, v4, :cond_32

    const v4, 0xba000

    if-ge p0, v4, :cond_32

    const/16 v0, -0x3262

    return v0

    .line 137
    :cond_32
    const v4, 0xba000

    if-lt p0, v4, :cond_33

    const v4, 0xc35be

    if-ge p0, v4, :cond_33

    const/16 v0, -0x3270

    return v0

    .line 138
    :cond_33
    const v4, 0xc35be

    if-lt p0, v4, :cond_34

    const v4, 0xc6266

    if-ge p0, v4, :cond_34

    const/16 v0, -0x3294

    return v0

    .line 139
    :cond_34
    const v4, 0xc6266

    if-lt p0, v4, :cond_35

    const v4, 0xc7c72

    if-ge p0, v4, :cond_35

    const/16 v0, -0x323a

    return v0

    .line 141
    :cond_35
    const v4, 0xc7c72

    if-lt p0, v4, :cond_36

    const v4, 0xc7d5a

    if-ge p0, v4, :cond_36

    const/16 v0, -0x323e

    return v0

    .line 142
    :cond_36
    const v4, 0xc7d5a

    if-lt p0, v4, :cond_37

    const v4, 0xc7efc

    if-ge p0, v4, :cond_37

    const/16 v0, -0x323e

    return v0

    .line 143
    :cond_37
    const v4, 0xc7efc

    if-lt p0, v4, :cond_38

    const v4, 0xc9000

    if-ge p0, v4, :cond_38

    const/16 v0, -0x3240

    return v0

    .line 146
    :cond_38
    const v4, 0xce2d6

    if-lt p0, v4, :cond_39

    if-ge p0, v2, :cond_39

    return v0

    .line 147
    :cond_39
    const v0, 0xdeeca

    if-lt p0, v0, :cond_3a

    const v0, 0xec66e

    if-ge p0, v0, :cond_3a

    const/16 v0, -0x5a5a

    return v0

    .line 148
    :cond_3a
    const v0, 0xef038

    if-lt p0, v0, :cond_3b

    const v0, 0xf014c

    if-ge p0, v0, :cond_3b

    const/16 v0, -0x6060

    return v0

    .line 149
    :cond_3b
    const v0, 0xf24f6

    if-lt p0, v0, :cond_3c

    const v0, 0xf2864

    if-ge p0, v0, :cond_3c

    const/16 v0, -0x6aba

    return v0

    .line 150
    :cond_3c
    const v0, 0xf48be

    if-lt p0, v0, :cond_3d

    const v0, 0xfe184

    if-ge p0, v0, :cond_3d

    const/16 v0, -0x4e42

    return v0

    .line 151
    :cond_3d
    const v0, 0xfe184

    if-lt p0, v0, :cond_3e

    const v0, 0xfeeec

    if-ge p0, v0, :cond_3e

    const/16 v0, -0x4e4c

    return v0

    .line 154
    :cond_3e
    const v0, 0x11930

    if-ne p0, v0, :cond_3f

    const/16 v0, 0xbe

    return v0

    .line 155
    :cond_3f
    const v0, 0x173f4

    if-ne p0, v0, :cond_40

    return v3

    .line 156
    :cond_40
    const v0, 0x1b27a

    if-ne p0, v0, :cond_41

    return v1

    .line 158
    :cond_41
    const v0, 0xa2818

    if-ne p0, v0, :cond_42

    const/16 v0, -0x3730

    return v0

    .line 159
    :cond_42
    const v0, 0xa2a44

    if-ne p0, v0, :cond_43

    const/16 v0, -0x345c

    return v0

    .line 161
    :cond_43
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "German fixed-address bridge has no mapping for 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_44
    :goto_0
    return v1
.end method

.method static fixed([BI)I
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "canonical"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->isExactGerman([B)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/ahsim/demulation/GermanRomAddressMap;->deltaFor(I)I

    move-result v0

    .line 45
    .local v0, "delta":I
    add-int v1, p1, v0

    .line 46
    .local v1, "physical":I
    if-ltz v1, :cond_1

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 49
    return v1

    .line 47
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "German fixed-address bridge outside ROM: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static isExactGerman([B)Z
    .locals 4
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    if-eqz p0, :cond_2

    array-length v0, p0

    const/high16 v1, 0x100000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/ahsim/demulation/GermanRomAddressMap;->EXACT_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 35
    .local v0, "cached":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 36
    :cond_1
    const-string v1, "7f11e502ba2f4b4cdeee82c4e22b5ba64f04433ef1e5de1346db7231c1bd2e30"

    invoke-static {p0}, Lcom/ahsim/demulation/GermanRomAddressMap;->sha256([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 37
    .local v1, "exact":Z
    sget-object v2, Lcom/ahsim/demulation/GermanRomAddressMap;->EXACT_CACHE:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return v1

    .line 33
    .end local v0    # "cached":Ljava/lang/Boolean;
    .end local v1    # "exact":Z
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 168
    .local v0, "d":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 169
    .local v1, "hash":[B
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 170
    .local v2, "hex":[C
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 171
    .local v3, "out":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 172
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    .line 173
    .local v5, "v":I
    mul-int/lit8 v6, v4, 0x2

    ushr-int/lit8 v7, v5, 0x4

    aget-char v7, v2, v7

    aput-char v7, v3, v6

    .line 174
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v5, 0xf

    aget-char v7, v2, v7

    aput-char v7, v3, v6

    .line 171
    .end local v5    # "v":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 177
    .end local v0    # "d":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "hex":[C
    .end local v3    # "out":[C
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
