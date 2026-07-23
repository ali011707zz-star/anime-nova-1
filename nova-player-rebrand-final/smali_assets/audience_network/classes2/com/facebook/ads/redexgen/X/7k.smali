.class public final Lcom/facebook/ads/redexgen/X/7k;
.super Lcom/facebook/ads/redexgen/X/j0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/j2;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:J

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/76;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7k;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/O7;)V
    .locals 2

    .line 21490
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/j0;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O7;)V

    .line 21491
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A00:J

    .line 21492
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7k;->A02:Lcom/facebook/ads/redexgen/X/76;

    .line 21493
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7k;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 21494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7k;->A01:Landroid/view/View;

    return-object p1
.end method

.method private A01(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/j3;
    .locals 1

    .line 21495
    new-instance v0, Lcom/facebook/ads/redexgen/X/j3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/j3;-><init>(Lcom/facebook/ads/redexgen/X/7k;Ljava/lang/Runnable;)V

    .line 21496
    .local v0, "bannerAdapterListener":Lcom/facebook/ads/redexgen/X/N9;
    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7k;)Lcom/facebook/ads/redexgen/X/76;
    .locals 0

    .line 21497
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7k;->A02:Lcom/facebook/ads/redexgen/X/76;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7k;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/O8;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/O8;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 21498
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21499
    .local v0, "adsList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O8;->A03()Lorg/json/JSONObject;

    move-result-object v5

    .line 21500
    .local v1, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0x16

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    .line 21501
    .local v3, "isChainedAds":Z
    if-eqz v0, :cond_0

    .line 21502
    :try_start_0
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x3

    const/16 v1, 0x13

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A03(III)Ljava/lang/String;

    move-result-object v0

    .line 21503
    const/16 v1, 0x2710

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A00:J

    .line 21504
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 21505
    .local v2, "adsArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 21506
    const/4 v1, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 21507
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21509
    .local v2, "e":Lorg/json/JSONException;
    :catch_0
    const/16 v2, 0x24

    const/16 v1, 0x26

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A03(III)Ljava/lang/String;

    move-result-object v3

    .line 21510
    .local v4, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v2

    .line 21511
    .local v5, "error":Lcom/facebook/ads/redexgen/X/Vm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 21512
    return-object v4

    .line 21513
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v5    # "error":Lcom/facebook/ads/redexgen/X/Vm;
    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21514
    :cond_1
    return-object v4
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7k;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x17t
        0x26t
        -0xft
        -0x10t
        -0x3t
        -0x3t
        -0xct
        0x1t
        -0x12t
        0x1t
        -0xct
        -0xbt
        0x1t
        -0xct
        0x2t
        -0x9t
        -0x12t
        0x3t
        -0x8t
        -0x4t
        -0xct
        -0x5t
        0x0t
        -0x7t
        0x1t
        0x6t
        -0x9t
        0x8t
        -0x7t
        0xat
        -0x7t
        0x5t
        0xbt
        0x26t
        0x37t
        0x1bt
        0x28t
        0x28t
        0x25t
        0x28t
        -0x2at
        0x2dt
        0x1et
        0x1ft
        0x22t
        0x1bt
        -0x2at
        0x26t
        0x17t
        0x28t
        0x29t
        0x1ft
        0x24t
        0x1dt
        -0x2at
        0x19t
        0x1et
        0x17t
        0x1ft
        0x24t
        0x1bt
        0x1at
        -0x2at
        0x17t
        0x1at
        0x29t
        -0x2at
        -0x8t
        0x17t
        0x24t
        0x24t
        0x1bt
        0x28t
    .end array-data
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/k8;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V
    .locals 11

    .line 21515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0C:Z

    .line 21516
    nop

    .line 21517
    const/16 v2, 0x22

    const/4 v1, 0x2

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A03(III)Ljava/lang/String;

    move-result-object v0

    move-object v9, p2

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/j2;

    move-object v4, p1

    invoke-direct {v3, p0, v4, v0}, Lcom/facebook/ads/redexgen/X/j2;-><init>(Lcom/facebook/ads/redexgen/X/7k;Lcom/facebook/ads/redexgen/X/N1;Ljava/lang/String;)V

    .line 21518
    .local v0, "bannerTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v2

    move-object v10, p3

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Tx;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21519
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7k;->A02:Lcom/facebook/ads/redexgen/X/76;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/j0;->A09:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/O7;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    .line 21520
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/7k;->A01(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/j3;

    move-result-object v8

    .line 21521
    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/k8;->AAt(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Vp;Lcom/facebook/ads/redexgen/X/N9;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V

    .line 21522
    return-void
.end method


# virtual methods
.method public final A0P()V
    .locals 2

    .line 21523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 21524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4e()V

    .line 21525
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A01:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N2;->A0E(Landroid/view/View;)V

    .line 21526
    :goto_0
    return-void

    .line 21527
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4f()V

    goto :goto_0
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V
    .locals 5

    .line 21528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4Y()V

    .line 21529
    check-cast p1, Lcom/facebook/ads/redexgen/X/k8;

    .line 21530
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/k8;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/N1;->AKL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21531
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/7k;->A04(Lcom/facebook/ads/redexgen/X/O8;)Ljava/util/List;

    move-result-object v4

    .line 21532
    .local v1, "bannerAdList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/O8;->A01()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A06(Lcom/facebook/ads/redexgen/X/k8;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V

    .line 21533
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    .line 21534
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/O9;

    invoke-direct {v2, p0, p1, v4, p4}, Lcom/facebook/ads/redexgen/X/O9;-><init>(Lcom/facebook/ads/redexgen/X/7k;Lcom/facebook/ads/redexgen/X/k8;Ljava/util/List;Lcom/facebook/ads/redexgen/X/O8;)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A00:J

    .line 21535
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21536
    :cond_0
    :goto_0
    return-void

    .line 21537
    :cond_1
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/O8;->A03()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/O8;->A01()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A06(Lcom/facebook/ads/redexgen/X/k8;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V

    goto :goto_0
.end method

.method public final A0U(Ljava/lang/String;)V
    .locals 2

    .line 21538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4d(Z)V

    .line 21539
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/j0;->A0U(Ljava/lang/String;)V

    .line 21540
    return-void

    .line 21541
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Y(Z)V
    .locals 1

    .line 21542
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/j0;->A0Y(Z)V

    .line 21543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7k;->A01:Landroid/view/View;

    .line 21544
    return-void
.end method

.method public final synthetic A0a(Lcom/facebook/ads/redexgen/X/k8;Ljava/util/List;Lcom/facebook/ads/redexgen/X/O8;)V
    .locals 2

    .line 21545
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A01()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A06(Lcom/facebook/ads/redexgen/X/k8;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V

    return-void
.end method
