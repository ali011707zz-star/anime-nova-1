.class public abstract Lcom/facebook/ads/redexgen/X/Vy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static final A01:Ljava/text/DateFormat;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2163
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A03()V

    const/16 v2, 0x22

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A01:Ljava/text/DateFormat;

    .line 2164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00()Ljava/lang/String;
    .locals 2

    .line 69907
    sget-object v1, Lcom/facebook/ads/redexgen/X/Vy;->A01:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vy;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 2

    .line 69908
    sget-object v1, Lcom/facebook/ads/redexgen/X/Vy;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69909
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x70t
        -0x42t
        0x77t
        0x6bt
        0x70t
        -0x42t
        0x61t
        -0x51t
        0x68t
        0x5ct
        -0x69t
        0x61t
        -0x51t
        -0x67t
        0x5ct
        0x61t
        -0x51t
        -0x29t
        -0x26t
        -0x1ct
        -0x13t
        -0xbt
        -0x26t
        -0x25t
        -0x28t
        -0x15t
        -0x23t
        -0xbt
        -0x1et
        -0x1bt
        -0x23t
        -0x23t
        -0x25t
        -0x18t
        -0x62t
        -0x62t
        -0x70t
        -0x3dt
        -0x3dt
        -0x70t
        -0x37t
        -0x37t
        -0x7ct
        -0x57t
        -0x57t
        -0x57t
    .end array-data
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 69910
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69911
    return-void

    .line 69912
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A00()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69913
    return-void
.end method

.method public static A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 69914
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69915
    return-void

    .line 69916
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A00()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const/4 v2, 0x6

    const/16 v1, 0xb

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69917
    return-void
.end method
