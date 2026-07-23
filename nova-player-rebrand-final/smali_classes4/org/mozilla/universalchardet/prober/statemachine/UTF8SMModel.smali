.class public Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;
.super Lorg/mozilla/universalchardet/prober/statemachine/SMModel;
.source "UTF8SMModel.java"


# static fields
.field private static utf8CharLenTable:[I

.field private static utf8ClassTable:[I

.field private static utf8StateTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 40

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 76
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v9

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 78
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v10

    const/4 v3, 0x0

    .line 79
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v11

    const/4 v3, 0x1

    .line 80
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v12

    .line 81
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v13

    .line 82
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v14

    .line 83
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v15

    .line 84
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v16

    .line 85
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v17

    .line 86
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v18

    .line 87
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v19

    .line 88
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v20

    .line 89
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v21

    .line 90
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v22

    .line 91
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v23

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x3

    .line 92
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v24

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v0, 0x4

    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    .line 93
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v25

    .line 94
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v26

    .line 95
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v27

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    .line 96
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v28

    .line 97
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v29

    .line 98
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v30

    .line 99
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v31

    const/4 v6, 0x6

    const/4 v7, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v5, 0x6

    .line 100
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v32

    const/4 v0, 0x6

    const/4 v1, 0x6

    .line 101
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v33

    .line 102
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v34

    .line 103
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v35

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v0, 0x7

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    .line 104
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v36

    const/16 v0, 0x8

    const/16 v5, 0x9

    .line 105
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v37

    const/16 v6, 0xb

    const/16 v7, 0xb

    const/16 v0, 0xa

    const/16 v1, 0xb

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    const/16 v5, 0xb

    .line 106
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v38

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v0, 0xc

    const/16 v1, 0xd

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    const/16 v5, 0xf

    .line 107
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v39

    filled-new-array/range {v8 .. v39}, [I

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8ClassTable:[I

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 111
    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v9

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v0, 0x9

    const/16 v1, 0xb

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    .line 112
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v10

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 113
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v11

    .line 114
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v12

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v0, 0x2

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    .line 115
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v13

    .line 116
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v14

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    .line 117
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v15

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 118
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v16

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    .line 119
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v17

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 120
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v18

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    const/4 v5, 0x7

    .line 121
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v19

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 122
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v20

    const/4 v4, 0x7

    const/4 v5, 0x7

    .line 123
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v21

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 124
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v22

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    const/16 v5, 0x9

    .line 125
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v23

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 126
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v24

    const/16 v4, 0x9

    const/16 v5, 0x9

    .line 127
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v25

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 128
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v26

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    const/16 v5, 0xc

    .line 129
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v27

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 130
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v28

    const/16 v5, 0xc

    .line 131
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v29

    const/4 v5, 0x1

    .line 132
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v30

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    .line 133
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v31

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 134
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v32

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 135
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v33

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 136
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v34

    filled-new-array/range {v9 .. v34}, [I

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8StateTable:[I

    const/16 v0, 0x10

    .line 139
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8CharLenTable:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 61
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    const/16 v4, 0xf

    sget-object v5, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8ClassTable:[I

    const/4 v1, 0x3

    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    const/16 v5, 0xf

    sget-object v6, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8StateTable:[I

    const/4 v2, 0x3

    const/4 v3, 0x7

    const/4 v4, 0x2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    sget-object v4, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8CharLenTable:[I

    sget-object v5, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    const/16 v2, 0x10

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    return-void
.end method
