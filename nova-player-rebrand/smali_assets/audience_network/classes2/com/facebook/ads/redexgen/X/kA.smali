.class public final Lcom/facebook/ads/redexgen/X/kA;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/N8;->A0L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N8;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N8;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 89476
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kA;->A01:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kA;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kA;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x24t
        0x30t
        0x27t
        0x33t
        0x37t
        0x27t
        0x2ct
        0x21t
        0x3bt
        0x1dt
        0x21t
        0x23t
        0x32t
        0x32t
        0x2bt
        0x2ct
        0x25t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 89477
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kA;->A00(III)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A06(Lcom/facebook/ads/redexgen/X/N8;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 89478
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0I(Lcom/facebook/ads/redexgen/X/N8;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    .line 89480
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A05()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Nf;

    .line 89481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A04(I)V

    .line 89482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A07(Ljava/lang/String;)V

    .line 89483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A06()V

    .line 89484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A0C(Lcom/facebook/ads/redexgen/X/N8;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89485
    :catch_0
    move-exception v3

    .line 89486
    .local v1, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N8;->A0M()V

    .line 89487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A02(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    .line 89488
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 89489
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0

    .line 89490
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 89491
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A02(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    .line 89492
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1B:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 89493
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 89494
    :cond_0
    :goto_0
    return-void
.end method
