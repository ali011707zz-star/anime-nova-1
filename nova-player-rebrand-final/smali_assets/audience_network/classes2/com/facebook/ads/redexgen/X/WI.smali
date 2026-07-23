.class public abstract Lcom/facebook/ads/redexgen/X/WI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2182
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WI;->A09()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WI;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WI;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WI;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;
    .locals 3

    .line 70566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WI;->A05(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0x2f

    const/16 v1, 0x13

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;
    .locals 3

    .line 70567
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0X(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70568
    .local v0, "loggingEndpointPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/WI;->A07(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0x16

    const/16 v1, 0xe

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;
    .locals 3

    .line 70569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WI;->A05(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x1

    const/16 v1, 0x15

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;
    .locals 3

    .line 70570
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0Y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70571
    .local v0, "syncEndpointPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/WI;->A07(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0x24

    const/16 v1, 0xb

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;
    .locals 3

    .line 70572
    sget-object v0, Lcom/facebook/ads/redexgen/X/WI;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70573
    .local v0, "urlOverride":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70574
    return-object v1

    .line 70575
    :cond_0
    const/16 v2, 0x42

    const/16 v1, 0x1c

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/WI;->A06(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 70576
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->A9Q()Ljava/lang/String;

    move-result-object p0

    .line 70577
    .local v0, "prefix":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v1, v0

    invoke-static {v4, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 70578
    sget-object v0, Lcom/facebook/ads/redexgen/X/WI;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70579
    .local v0, "urlOverride":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70580
    return-object v1

    .line 70581
    :cond_0
    const/16 v2, 0x5e

    const/16 v1, 0x1a

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/WI;->A06(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/WI;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 70582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70583
    return-object p0

    .line 70584
    :cond_0
    const/16 v2, 0x78

    const/4 v1, 0x3

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WI;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x22t
        0x3bt
        0x34t
        0x3et
        0x34t
        0x38t
        0x3et
        0x34t
        0x39t
        0x3dt
        0x34t
        0x34t
        0x3at
        0x34t
        0x3dt
        0x3ct
        0x22t
        0x6ft
        0x78t
        0x6at
        0x7et
        0xbt
        0x45t
        0x40t
        0x4at
        0x53t
        0x7bt
        0x48t
        0x4bt
        0x43t
        0x43t
        0x4dt
        0x4at
        0x43t
        0xbt
        0x72t
        0x3ct
        0x39t
        0x33t
        0x2at
        0x2t
        0x2et
        0x24t
        0x33t
        0x3et
        0x6ft
        0x2ct
        0x6dt
        0x66t
        0x77t
        0x74t
        0x6ct
        0x71t
        0x68t
        0x5ct
        0x62t
        0x67t
        0x70t
        0x5ct
        0x60t
        0x6ct
        0x6et
        0x6et
        0x6ct
        0x6dt
        0x25t
        0x39t
        0x39t
        0x3dt
        0x3et
        0x77t
        0x62t
        0x62t
        0x2at
        0x3ft
        0x2ct
        0x3dt
        0x25t
        0x68t
        0x3et
        0x63t
        0x2bt
        0x2ct
        0x2et
        0x28t
        0x2ft
        0x22t
        0x22t
        0x26t
        0x63t
        0x2et
        0x22t
        0x20t
        0x51t
        0x4dt
        0x4dt
        0x49t
        0x4at
        0x3t
        0x16t
        0x16t
        0x4et
        0x4et
        0x4et
        0x1ct
        0x4at
        0x17t
        0x5ft
        0x58t
        0x5at
        0x5ct
        0x5bt
        0x56t
        0x56t
        0x52t
        0x17t
        0x5at
        0x56t
        0x54t
        0xet
        0xet
        0xet
    .end array-data
.end method
