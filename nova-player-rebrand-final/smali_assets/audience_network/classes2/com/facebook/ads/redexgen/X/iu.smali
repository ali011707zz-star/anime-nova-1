.class public final Lcom/facebook/ads/redexgen/X/iu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/WC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/7e;,
        Lcom/facebook/ads/redexgen/X/OB;,
        Lcom/facebook/ads/redexgen/X/iv;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/OB;

.field public A01:Lcom/facebook/ads/redexgen/X/Tw;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/AdSize;

.field public final A07:Lcom/facebook/ads/redexgen/X/N6;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Vq;

.field public final A0B:Lcom/facebook/ads/redexgen/X/WD;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2968
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gvO2SkJ6judPPNAAbU10EdMFrysfMOoq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C8fayNw08H03MAMa0MYSKK0pyo1qSvcR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tQ435k35SGtCPZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PU5xmRYaUesfDikXgdcM0c"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Sj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IzP0LuOvX3krWKzZjoX9w767Mf8waFqk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fiC8qpcDm8TluoxAfEpO8PomLrdxugFO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iu;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iu;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YD;->A02()V

    .line 2969
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/AdSize;I)V
    .locals 2

    .line 87570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87571
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 87572
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iu;->A0D:Ljava/lang/String;

    .line 87573
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iu;->A0A:Lcom/facebook/ads/redexgen/X/Vq;

    .line 87574
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/iu;->A06:Lcom/facebook/ads/AdSize;

    .line 87575
    iput p5, p0, Lcom/facebook/ads/redexgen/X/iu;->A04:I

    .line 87576
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A0B:Lcom/facebook/ads/redexgen/X/WD;

    .line 87577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A0B:Lcom/facebook/ads/redexgen/X/WD;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/WD;->A0R(Lcom/facebook/ads/redexgen/X/WC;)V

    .line 87578
    new-instance v0, Lcom/facebook/ads/redexgen/X/N6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/N6;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A07:Lcom/facebook/ads/redexgen/X/N6;

    .line 87579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Z

    .line 87580
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A05:Landroid/os/Handler;

    .line 87581
    new-instance v0, Lcom/facebook/ads/redexgen/X/7e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7e;-><init>(Lcom/facebook/ads/redexgen/X/iu;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A0C:Ljava/lang/Runnable;

    .line 87582
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A09:Lcom/facebook/ads/redexgen/X/VA;

    .line 87583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 87584
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/iu;)Landroid/os/Handler;
    .locals 0

    .line 87585
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iu;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/iu;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 87586
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/iu;)Ljava/lang/Runnable;
    .locals 0

    .line 87587
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iu;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iu;->A0E:[B

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

.method private A04()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ju;",
            ">;"
        }
    .end annotation

    .line 87588
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Lcom/facebook/ads/redexgen/X/Tw;

    .line 87589
    .local v0, "currentPlacement":Lcom/facebook/ads/redexgen/X/Tw;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Tw;->A04()Lcom/facebook/ads/redexgen/X/Tu;

    move-result-object v5

    .line 87590
    .local v1, "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Tw;->A02()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 87591
    .local v2, "validAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :goto_0
    if-eqz v5, :cond_1

    .line 87592
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iu;->A07:Lcom/facebook/ads/redexgen/X/N6;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/N6;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/N1;

    move-result-object v4

    .line 87593
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/N1;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/N1;->A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, v0, :cond_0

    .line 87594
    new-instance v8, Lcom/facebook/ads/redexgen/X/O8;

    .line 87595
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Tu;->A04()Lorg/json/JSONObject;

    move-result-object v9

    .line 87596
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/iu;->A0D:Ljava/lang/String;

    .line 87597
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A0C()J

    move-result-wide v12

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;Ljava/lang/String;J)V

    .line 87598
    .local v10, "loadConfig":Lcom/facebook/ads/redexgen/X/O8;
    check-cast v4, Lcom/facebook/ads/redexgen/X/ju;

    .line 87599
    .local v4, "nativeAdapter":Lcom/facebook/ads/redexgen/X/ju;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/7f;

    invoke-direct {v6, p0, v1, v4}, Lcom/facebook/ads/redexgen/X/7f;-><init>(Lcom/facebook/ads/redexgen/X/iu;Ljava/util/List;Lcom/facebook/ads/redexgen/X/ju;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/iu;->A09:Lcom/facebook/ads/redexgen/X/VA;

    .line 87600
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UK;->A0K()Lcom/facebook/ads/redexgen/X/Uk;

    move-result-object v9

    .line 87601
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/ju;->A0L(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NG;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/Va;)V

    .line 87602
    .end local v4    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/ju;
    .end local v10    # "loadConfig":Lcom/facebook/ads/redexgen/X/O8;
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Tw;->A04()Lcom/facebook/ads/redexgen/X/Tu;

    move-result-object v5

    .line 87603
    .end local v3    # "adapter":Lcom/facebook/ads/redexgen/X/N1;
    goto :goto_0

    .line 87604
    :cond_1
    return-object v1
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iu;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x2et
        -0x7dt
        -0x2dt
        -0x31t
        -0x3ct
        -0x3at
        -0x38t
        -0x30t
        -0x38t
        -0x2ft
        -0x29t
        -0x7dt
        -0x34t
        -0x2ft
        -0x7dt
        -0x2bt
        -0x38t
        -0x2at
        -0x2dt
        -0x2et
        -0x2ft
        -0x2at
        -0x38t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 87605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Z

    .line 87606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iu;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87607
    return-void
.end method

.method public final A07()V
    .locals 13

    .line 87608
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v5, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v8, v0, v5, v5, v5}, Lcom/facebook/ads/redexgen/X/Vu;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Vn; {:try_start_0 .. :try_end_0} :catch_0

    .line 87609
    .local v6, "bidPayload":Lcom/facebook/ads/redexgen/X/Vu;
    new-instance v2, Lcom/facebook/ads/redexgen/X/WA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iu;->A0D:Ljava/lang/String;

    .line 87610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A06:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Xn;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;-><init>(II)V

    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/iu;->A0A:Lcom/facebook/ads/redexgen/X/Vq;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/iu;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 87611
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0N(Landroid/content/Context;)I

    move-result v0

    .line 87612
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xt;->A01(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Ljava/lang/String;

    new-instance v12, Lcom/facebook/ads/redexgen/X/ij;

    invoke-direct {v12}, Lcom/facebook/ads/redexgen/X/ij;-><init>()V

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/facebook/ads/redexgen/X/WA;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Vq;ILcom/facebook/ads/redexgen/X/Vu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/U3;)V

    .line 87613
    .local v0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/WA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A0B:Lcom/facebook/ads/redexgen/X/WD;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/WD;->A0Q(Lcom/facebook/ads/redexgen/X/WA;)V

    .line 87614
    return-void

    .line 87615
    .end local v0    # "adEnvironmentData":Lcom/facebook/ads/redexgen/X/WA;
    .end local v6    # "bidPayload":Lcom/facebook/ads/redexgen/X/Vu;
    :catch_0
    move-exception v0

    .line 87616
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Vn;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A02(Lcom/facebook/ads/redexgen/X/Vn;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/iu;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87617
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/OB;)V
    .locals 0

    .line 87618
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Lcom/facebook/ads/redexgen/X/OB;

    .line 87619
    return-void
.end method

.method public final A09(Ljava/lang/String;)V
    .locals 0

    .line 87620
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Ljava/lang/String;

    .line 87621
    return-void
.end method

.method public final A0A()Z
    .locals 1

    .line 87622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Lcom/facebook/ads/redexgen/X/Tw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Lcom/facebook/ads/redexgen/X/Tw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tw;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 4

    .line 87623
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Z

    if-eqz v0, :cond_0

    .line 87624
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iu;->A05:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iu;->A0C:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87625
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Lcom/facebook/ads/redexgen/X/OB;

    if-eqz v0, :cond_1

    .line 87626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Lcom/facebook/ads/redexgen/X/OB;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/OB;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87627
    :cond_1
    return-void
.end method

.method public final AG7(Lcom/facebook/ads/redexgen/X/RG;)V
    .locals 7

    .line 87628
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RG;->A00()Lcom/facebook/ads/redexgen/X/Tw;

    move-result-object v6

    .line 87629
    .local v0, "placement":Lcom/facebook/ads/redexgen/X/Tw;
    if-eqz v6, :cond_5

    .line 87630
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Z

    if-eqz v0, :cond_1

    .line 87631
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A0A()J

    move-result-wide v2

    .line 87632
    .local v1, "refreshInterval":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 87633
    const-wide/32 v2, 0x1b7740

    .line 87634
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iu;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87635
    .end local v1    # "refreshInterval":J
    :cond_1
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Lcom/facebook/ads/redexgen/X/Tw;

    .line 87636
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iu;->A04()Ljava/util/List;

    move-result-object v4

    .line 87637
    .local v1, "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Lcom/facebook/ads/redexgen/X/OB;

    if-eqz v0, :cond_4

    .line 87638
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/iu;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/iu;->A0F:[Ljava/lang/String;

    const-string v1, "Ma8ASQR7F1ZvPn5hHoXinNcVvjUetiuh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 87639
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Lcom/facebook/ads/redexgen/X/OB;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/OB;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87640
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 87641
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Lcom/facebook/ads/redexgen/X/OB;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/OB;->AEy(Ljava/util/List;)V

    .line 87642
    :cond_4
    return-void

    .line 87643
    .end local v1    # "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
