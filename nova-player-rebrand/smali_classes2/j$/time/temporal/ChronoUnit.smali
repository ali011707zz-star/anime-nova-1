.class public final enum Lj$/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/temporal/ChronoUnit;",
        ">;",
        "Lj$/time/temporal/r;"
    }
.end annotation


# static fields
.field public static final enum CENTURIES:Lj$/time/temporal/ChronoUnit;

.field public static final enum DAYS:Lj$/time/temporal/ChronoUnit;

.field public static final enum DECADES:Lj$/time/temporal/ChronoUnit;

.field public static final enum ERAS:Lj$/time/temporal/ChronoUnit;

.field public static final enum FOREVER:Lj$/time/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Lj$/time/temporal/ChronoUnit;

.field public static final enum HOURS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MICROS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Lj$/time/temporal/ChronoUnit;

.field public static final enum MILLIS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MINUTES:Lj$/time/temporal/ChronoUnit;

.field public static final enum MONTHS:Lj$/time/temporal/ChronoUnit;

.field public static final enum NANOS:Lj$/time/temporal/ChronoUnit;

.field public static final enum SECONDS:Lj$/time/temporal/ChronoUnit;

.field public static final enum WEEKS:Lj$/time/temporal/ChronoUnit;

.field public static final enum YEARS:Lj$/time/temporal/ChronoUnit;

.field public static final synthetic c:[Lj$/time/temporal/ChronoUnit;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 83
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lj$/time/Duration;->j(J)Lj$/time/Duration;

    move-result-object v3

    const-string v4, "NANOS"

    const/4 v5, 0x0

    const-string v6, "Nanos"

    invoke-direct {v0, v4, v5, v6, v3}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    .line 88
    new-instance v3, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lj$/time/Duration;->j(J)Lj$/time/Duration;

    move-result-object v4

    const-string v6, "MICROS"

    const/4 v7, 0x1

    const-string v8, "Micros"

    invoke-direct {v3, v6, v7, v8, v4}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v3, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    .line 93
    new-instance v4, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v8, 0xf4240

    invoke-static {v8, v9}, Lj$/time/Duration;->j(J)Lj$/time/Duration;

    move-result-object v6

    const-string v8, "MILLIS"

    const/4 v9, 0x2

    const-string v10, "Millis"

    invoke-direct {v4, v8, v9, v10, v6}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v4, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    .line 99
    new-instance v6, Lj$/time/temporal/ChronoUnit;

    const-string v8, "Seconds"

    .line 224
    invoke-static {v1, v2, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v1

    .line 99
    const-string v2, "SECONDS"

    const/4 v10, 0x3

    invoke-direct {v6, v2, v10, v8, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v6, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    .line 104
    new-instance v1, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v11, 0x3c

    .line 224
    invoke-static {v11, v12, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v2

    .line 104
    const-string v8, "MINUTES"

    const/4 v11, 0x4

    const-string v12, "Minutes"

    invoke-direct {v1, v8, v11, v12, v2}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v1, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    .line 109
    new-instance v2, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v12, 0xe10

    .line 224
    invoke-static {v12, v13, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v8

    .line 109
    const-string v12, "HOURS"

    const/4 v13, 0x5

    const-string v14, "Hours"

    invoke-direct {v2, v12, v13, v14, v8}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v2, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    .line 114
    new-instance v8, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v14, 0xa8c0

    .line 224
    invoke-static {v14, v15, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v12

    .line 114
    const-string v14, "HALF_DAYS"

    const/4 v15, 0x6

    move/from16 v16, v7

    const-string v7, "HalfDays"

    invoke-direct {v8, v14, v15, v7, v12}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v8, Lj$/time/temporal/ChronoUnit;->HALF_DAYS:Lj$/time/temporal/ChronoUnit;

    .line 125
    new-instance v7, Lj$/time/temporal/ChronoUnit;

    move v12, v9

    move v14, v10

    const-wide/32 v9, 0x15180

    .line 224
    invoke-static {v9, v10, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v9

    .line 125
    const-string v10, "DAYS"

    move/from16 v17, v11

    const/4 v11, 0x7

    move/from16 v18, v12

    const-string v12, "Days"

    invoke-direct {v7, v10, v11, v12, v9}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v7, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 132
    new-instance v9, Lj$/time/temporal/ChronoUnit;

    move v10, v11

    const-wide/32 v11, 0x93a80

    .line 224
    invoke-static {v11, v12, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v11

    .line 132
    const-string v12, "WEEKS"

    move/from16 v19, v10

    const/16 v10, 0x8

    move/from16 v20, v13

    const-string v13, "Weeks"

    invoke-direct {v9, v12, v10, v13, v11}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v9, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 140
    new-instance v11, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v12, 0x282072

    .line 224
    invoke-static {v12, v13, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v12

    .line 140
    const-string v13, "MONTHS"

    move/from16 v21, v10

    const/16 v10, 0x9

    move/from16 v22, v14

    const-string v14, "Months"

    invoke-direct {v11, v13, v10, v14, v12}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v11, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 149
    new-instance v12, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v13, 0x1e18558

    .line 224
    invoke-static {v13, v14, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v13

    .line 149
    const-string v14, "YEARS"

    move/from16 v23, v10

    const/16 v10, 0xa

    move/from16 v24, v15

    const-string v15, "Years"

    invoke-direct {v12, v14, v10, v15, v13}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v12, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 157
    new-instance v13, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v14, 0x12cf3570

    .line 224
    invoke-static {v14, v15, v5}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v14

    .line 157
    const-string v15, "DECADES"

    move/from16 v25, v10

    const/16 v10, 0xb

    const-string v5, "Decades"

    invoke-direct {v13, v15, v10, v5, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v13, Lj$/time/temporal/ChronoUnit;->DECADES:Lj$/time/temporal/ChronoUnit;

    .line 165
    new-instance v5, Lj$/time/temporal/ChronoUnit;

    const-wide v14, 0xbc181660L

    move/from16 v27, v10

    const/4 v10, 0x0

    .line 224
    invoke-static {v14, v15, v10}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v14

    .line 165
    const-string v15, "CENTURIES"

    const/16 v10, 0xc

    move-object/from16 v28, v0

    const-string v0, "Centuries"

    invoke-direct {v5, v15, v10, v0, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v5, Lj$/time/temporal/ChronoUnit;->CENTURIES:Lj$/time/temporal/ChronoUnit;

    .line 173
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide v14, 0x758f0dfc0L

    move/from16 v29, v10

    const/4 v10, 0x0

    .line 224
    invoke-static {v14, v15, v10}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v14

    .line 173
    const-string v15, "MILLENNIA"

    const/16 v10, 0xd

    move-object/from16 v30, v1

    const-string v1, "Millennia"

    invoke-direct {v0, v15, v10, v1, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->MILLENNIA:Lj$/time/temporal/ChronoUnit;

    .line 182
    new-instance v1, Lj$/time/temporal/ChronoUnit;

    const-wide v14, 0x701ce172277000L

    move/from16 v31, v10

    const/4 v10, 0x0

    .line 224
    invoke-static {v14, v15, v10}, Lj$/time/Duration;->i(JI)Lj$/time/Duration;

    move-result-object v14

    .line 182
    const-string v10, "ERAS"

    const/16 v15, 0xe

    move-object/from16 v32, v0

    const-string v0, "Eras"

    invoke-direct {v1, v10, v15, v0, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v1, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    .line 190
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    move-object v14, v1

    move-object v10, v2

    const-wide v1, 0x7fffffffffffffffL

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    const-wide/32 v3, 0x3b9ac9ff

    invoke-static {v1, v2, v3, v4}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "FOREVER"

    const/16 v3, 0xf

    const-string v4, "Forever"

    invoke-direct {v0, v2, v3, v4, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    const/16 v1, 0x10

    .line 77
    new-array v1, v1, [Lj$/time/temporal/ChronoUnit;

    const/16 v26, 0x0

    aput-object v28, v1, v26

    aput-object v33, v1, v16

    aput-object v34, v1, v18

    aput-object v6, v1, v22

    aput-object v30, v1, v17

    aput-object v10, v1, v20

    aput-object v8, v1, v24

    aput-object v7, v1, v19

    aput-object v9, v1, v21

    aput-object v11, v1, v23

    aput-object v12, v1, v25

    aput-object v13, v1, v27

    aput-object v5, v1, v29

    aput-object v32, v1, v31

    aput-object v14, v1, v15

    aput-object v0, v1, v3

    sput-object v1, Lj$/time/temporal/ChronoUnit;->c:[Lj$/time/temporal/ChronoUnit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Lj$/time/temporal/ChronoUnit;->a:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lj$/time/temporal/ChronoUnit;->b:Lj$/time/Duration;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;
    .locals 1

    .line 77
    const-class v0, Lj$/time/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/ChronoUnit;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/ChronoUnit;
    .locals 1

    .line 77
    sget-object v0, Lj$/time/temporal/ChronoUnit;->c:[Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v0}, [Lj$/time/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public getDuration()Lj$/time/Duration;
    .locals 1

    .line 211
    iget-object v0, p0, Lj$/time/temporal/ChronoUnit;->b:Lj$/time/Duration;

    return-object v0
.end method

.method public final i(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 0

    .line 266
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/r;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lj$/time/temporal/ChronoUnit;->a:Ljava/lang/String;

    return-object v0
.end method
