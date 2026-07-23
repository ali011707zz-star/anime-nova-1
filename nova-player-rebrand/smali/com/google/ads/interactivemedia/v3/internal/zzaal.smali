.class public final Lcom/google/ads/interactivemedia/v3/internal/zzaal;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTC"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zza:Ljava/util/TimeZone;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v0, " given, resolves to "

    const-string v3, "Mismatching time zone indicator: "

    const-string v4, "\'"

    const-string v5, "Invalid time zone indicator \'"

    const-string v6, "GMT"

    const-string v7, "00"

    :try_start_0
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    .line 2
    invoke-static {v1, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzc(Ljava/lang/String;II)I

    move-result v11

    const/16 v12, 0x2d

    .line 3
    invoke-static {v1, v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzb(Ljava/lang/String;IC)Z

    move-result v13

    const/4 v14, 0x5

    if-eqz v13, :cond_0

    add-int/lit8 v10, v9, 0x5

    :cond_0
    add-int/lit8 v9, v10, 0x2

    .line 4
    invoke-static {v1, v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzc(Ljava/lang/String;II)I

    move-result v13

    .line 5
    invoke-static {v1, v9, v12}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzb(Ljava/lang/String;IC)Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v9, v10, 0x3

    :cond_1
    add-int/lit8 v10, v9, 0x2

    .line 6
    invoke-static {v1, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzc(Ljava/lang/String;II)I

    move-result v15

    const/16 v14, 0x54

    .line 7
    invoke-static {v1, v10, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzb(Ljava/lang/String;IC)Z

    move-result v14

    const/4 v8, 0x0

    if-nez v14, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v12, v10, :cond_2

    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v13, v13, -0x1

    .line 48
    invoke-direct {v0, v11, v13, v15}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 49
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setLenient(Z)V

    .line 50
    invoke-virtual {v2, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 51
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    move-object v3, v2

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    const/16 v8, 0x5a

    if-eqz v14, :cond_d

    add-int/lit8 v10, v9, 0x3

    add-int/lit8 v14, v9, 0x5

    .line 9
    invoke-static {v1, v10, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzc(Ljava/lang/String;II)I

    move-result v10

    const/16 v12, 0x3a

    .line 10
    invoke-static {v1, v14, v12}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzb(Ljava/lang/String;IC)Z

    move-result v18

    if-eqz v18, :cond_3

    add-int/lit8 v14, v9, 0x6

    :cond_3
    add-int/lit8 v9, v14, 0x2

    .line 11
    invoke-static {v1, v14, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzc(Ljava/lang/String;II)I

    move-result v18

    .line 12
    invoke-static {v1, v9, v12}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzb(Ljava/lang/String;IC)Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v14, v14, 0x3

    goto :goto_1

    :cond_4
    move v14, v9

    .line 13
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v14, :cond_c

    .line 14
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_c

    const/16 v12, 0x2b

    if-eq v9, v12, :cond_c

    const/16 v12, 0x2d

    if-eq v9, v12, :cond_c

    add-int/lit8 v9, v14, 0x2

    .line 15
    invoke-static {v1, v14, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzc(Ljava/lang/String;II)I

    move-result v12

    const/16 v8, 0x3b

    if-le v12, v8, :cond_5

    const/16 v8, 0x3f

    if-ge v12, v8, :cond_5

    const/16 v12, 0x3b

    :cond_5
    const/16 v8, 0x2e

    .line 16
    invoke-static {v1, v9, v8}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzb(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v8, v14, 0x3

    add-int/lit8 v9, v14, 0x4

    move/from16 v19, v10

    .line 17
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 18
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v20, v9

    const/16 v9, 0x30

    if-lt v10, v9, :cond_7

    const/16 v9, 0x39

    if-le v10, v9, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v20, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    move/from16 v10, v20

    goto :goto_4

    .line 19
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v9

    :goto_4
    add-int/lit8 v14, v14, 0x6

    .line 20
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 21
    invoke-static {v1, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zzc(Ljava/lang/String;II)I

    move-result v14

    sub-int/2addr v9, v8

    const/4 v8, 0x1

    if-eq v9, v8, :cond_a

    const/4 v8, 0x2

    if-eq v9, v8, :cond_9

    goto :goto_5

    :cond_9
    mul-int/lit8 v14, v14, 0xa

    goto :goto_5

    :cond_a
    mul-int/lit8 v14, v14, 0x64

    :goto_5
    move/from16 v9, v18

    move/from16 v8, v19

    :goto_6
    move/from16 v18, v13

    goto :goto_8

    :cond_b
    move/from16 v19, v10

    move v10, v9

    move/from16 v9, v18

    move/from16 v8, v19

    :goto_7
    const/4 v14, 0x0

    goto :goto_6

    :cond_c
    move/from16 v19, v10

    move v10, v14

    move/from16 v9, v18

    move/from16 v8, v19

    const/4 v12, 0x0

    goto :goto_7

    :cond_d
    move/from16 v18, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 22
    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v10, :cond_16

    .line 24
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5a

    if-ne v13, v2, :cond_e

    :try_start_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zza:Ljava/util/TimeZone;

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d

    :catch_2
    move-exception v0

    :goto_9
    move-object/from16 v3, p1

    goto/16 :goto_e

    :catch_3
    move-exception v0

    goto :goto_9

    :cond_e
    const/16 v2, 0x2b

    if-eq v13, v2, :cond_10

    const/16 v2, 0x2d

    if-ne v13, v2, :cond_f

    goto :goto_a

    .line 58
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 47
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_10
    :goto_a
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v16, 0x2

    add-int/lit8 v4, v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v10, v4

    const-string v4, "+0000"

    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "+00:00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_c

    .line 29
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, ":"

    const-string v7, ""

    .line 33
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_b

    :cond_13
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    .line 46
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x35

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_14
    :goto_b
    move-object v0, v4

    goto :goto_d

    .line 28
    :cond_15
    :goto_c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaal;->zza:Ljava/util/TimeZone;

    .line 24
    :goto_d
    new-instance v2, Ljava/util/GregorianCalendar;

    .line 35
    invoke-direct {v2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v0, 0x1

    .line 37
    invoke-virtual {v2, v0, v11}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v13, v18, -0x1

    const/4 v3, 0x2

    .line 38
    invoke-virtual {v2, v3, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    .line 39
    invoke-virtual {v2, v5, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 40
    invoke-virtual {v2, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 41
    invoke-virtual {v2, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 42
    invoke-virtual {v2, v0, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 43
    invoke-virtual {v2, v0, v14}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v3, p1

    .line 44
    :try_start_2
    invoke-virtual {v3, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 45
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_e

    :cond_16
    move-object v3, v2

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No time zone indicator"

    .line 23
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_e
    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_f

    .line 47
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v16, 0x2

    add-int/lit8 v2, v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v16, 0x2

    add-int/lit8 v4, v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    :cond_19
    new-instance v4, Ljava/text/ParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to parse date ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 58
    throw v4
.end method

.method private static zzb(Ljava/lang/String;IC)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzc(Ljava/lang/String;II)I
    .locals 5

    if-ltz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    const/16 v0, 0xa

    .line 2
    const-string v1, "Invalid number: "

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    neg-int p0, v3

    return p0

    .line 1
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 2
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
