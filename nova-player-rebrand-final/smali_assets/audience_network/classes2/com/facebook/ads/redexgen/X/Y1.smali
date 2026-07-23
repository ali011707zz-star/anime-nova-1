.class public final Lcom/facebook/ads/redexgen/X/Y1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Y0;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/Y0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2414
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kzsYhm9LKsU0BkYF5GBD4cHOfO5I2S"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FiiX6q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "juV27aOscABEXHLMFQmBucT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1EXxaj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "f1sOyyKe81qkTfSynlEtElAllv4GRKo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lzeqJRba"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GXB72S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "F9UQYukVDOEwI1lxcupNtKixpZh4OtVr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y1;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y1;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()J
    .locals 2

    .line 73258
    sget-object v0, Lcom/facebook/ads/redexgen/X/Y1;->A02:Lcom/facebook/ads/redexgen/X/Y0;

    if-eqz v0, :cond_0

    .line 73259
    sget-object v0, Lcom/facebook/ads/redexgen/X/Y1;->A02:Lcom/facebook/ads/redexgen/X/Y0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Y0;->A5n()J

    move-result-wide v0

    return-wide v0

    .line 73260
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static A01(J)J
    .locals 2

    .line 73261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A02(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A02(JJ)J
    .locals 3

    .line 73262
    const-wide/16 v1, -0x1

    cmp-long v0, p0, v1

    if-nez v0, :cond_0

    .line 73263
    return-wide v1

    .line 73264
    :cond_0
    sub-long/2addr p2, p0

    return-wide p2
.end method

.method public static A03(D)Ljava/lang/String;
    .locals 6

    .line 73265
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y1;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73266
    :catch_0
    move-exception p1

    .line 73267
    .local v0, "e":Ljava/lang/Exception;
    const-class v0, Lcom/facebook/ads/redexgen/X/Y1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x9

    const/16 v4, 0x12

    const/16 v3, 0x45

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y1;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y1;->A01:[Ljava/lang/String;

    const-string v1, "ylDYykVZ0MQgZWbzvTC4Y0QCoTAruV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Y1;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73268
    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y1;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y1;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05(J)Ljava/lang/String;
    .locals 0

    .line 73269
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A06(J)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73270
    long-to-double v2, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/Y1;->A03(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A07(J)Ljava/lang/String;
    .locals 0

    .line 73271
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Y1;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x4bt
        0x56t
        0x3t
        0x17t
        0x8t
        0x14t
        0x15t
        0x12t
        0x10t
        0x32t
        0x3dt
        0x74t
        0x27t
        0x73t
        0x35t
        0x3ct
        0x21t
        0x3et
        0x32t
        0x27t
        0x73t
        0x27t
        0x3at
        0x3et
        0x36t
        0x7dt
    .end array-data
.end method
