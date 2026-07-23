.class public final Lcom/facebook/ads/redexgen/X/81;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/k8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NativeViewability",
        "Logger:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/k8;"
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/N9;

.field public A01:Lcom/facebook/ads/redexgen/X/NA;

.field public A02:Lcom/facebook/ads/redexgen/X/jl;

.field public A03:Lcom/facebook/ads/redexgen/X/7o;

.field public A04:Lcom/facebook/ads/redexgen/X/76;

.field public A05:Lcom/facebook/ads/redexgen/X/VA;

.field public A06:Lcom/facebook/ads/redexgen/X/Vp;

.field public A07:Lcom/facebook/ads/redexgen/X/b1;

.field public A08:Lcom/facebook/ads/redexgen/X/LV;

.field public A09:Lcom/facebook/ads/redexgen/X/62;

.field public A0A:Lcom/facebook/ads/redexgen/X/fo;

.field public A0B:Lcom/facebook/ads/redexgen/X/fp;

.field public A0C:Ljava/lang/Boolean;

.field public A0D:Ljava/lang/String;

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public final A0H:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A0I:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 490
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NhwOmA8H17maQr2Thm3XPPVG1xwEsLhZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rranxCubAcBFDRhPr2LDrxoK3htxcyeL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LmhV8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZLGOK7uKxyyp5W3sNEqoBEODv8zXcPE1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dNK0bBZMrDk2YJmjrhSzlk1RMTFmUAsD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "q33l17MPfjO0fzYSahPh7EE95Ux5x03H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4VfBn9Mh4W5rafl7A4va0uDeREUgOp63"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NLrbv196ww605txiYhOndsfSQjY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/81;->A0B()V

    const-class v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/81;->A0L:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22001
    .local p0, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22002
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0I:Ljava/lang/String;

    .line 22003
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/81;->A0E:Z

    .line 22004
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/81;->A0F:Z

    .line 22005
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/81;->A0G:Z

    .line 22006
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0H:Lcom/facebook/ads/redexgen/X/Y2;

    .line 22007
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0C:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/N9;
    .locals 0

    .line 22008
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/N9;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/jl;
    .locals 0

    .line 22009
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/81;->A02:Lcom/facebook/ads/redexgen/X/jl;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;
    .locals 0

    .line 22010
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;
    .locals 0

    .line 22011
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/VA;
    .locals 0

    .line 22012
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/81;->A05:Lcom/facebook/ads/redexgen/X/VA;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/Y2;
    .locals 0

    .line 22013
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/81;->A0H:Lcom/facebook/ads/redexgen/X/Y2;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 22014
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/81;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method public static synthetic A07()Ljava/lang/String;
    .locals 1

    .line 22015
    sget-object v0, Lcom/facebook/ads/redexgen/X/81;->A0L:Ljava/lang/String;

    return-object v0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/81;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/81;)Ljava/lang/String;
    .locals 0

    .line 22016
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/81;->A0I:Ljava/lang/String;

    return-object p0
.end method

.method private A0A()V
    .locals 4

    .line 22017
    .local v2, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/N9;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A09:Lcom/facebook/ads/redexgen/X/62;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    .line 22018
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22019
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/N9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A09:Lcom/facebook/ads/redexgen/X/62;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/N9;->ADD(Lcom/facebook/ads/redexgen/X/k8;Landroid/view/View;)V

    .line 22020
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/N9;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/81;->A0E:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const-string v1, "pcQhCrMOoUvf1wSUiS8eXhj7G6bioSrh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "JWZBC7ZhFf7k7YrTz5pa22tV9NT1Mc4w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0F:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0G:Z

    if-nez v0, :cond_2

    .line 22021
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/N9;

    sget-object v1, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const-string v1, "irPj8aYnTZH6GsdLYSbTyVfXBLXHQnPh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    invoke-interface {v3, p0, v0}, Lcom/facebook/ads/redexgen/X/N9;->ADD(Lcom/facebook/ads/redexgen/X/k8;Landroid/view/View;)V

    .line 22022
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/N9;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4O(Z)V

    .line 22023
    return-void

    .line 22024
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const-string v1, "5PA9hoTjlgD01Tr6eTkR8jxCvDfXc2RO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    invoke-interface {v3, p0, v0}, Lcom/facebook/ads/redexgen/X/N9;->ADD(Lcom/facebook/ads/redexgen/X/k8;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/81;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x1ct
        0x28t
        0x26t
        -0x19t
        0x1ft
        0x1at
        0x1ct
        0x1et
        0x1bt
        0x28t
        0x28t
        0x24t
        -0x19t
        0x1at
        0x1dt
        0x2ct
        -0x19t
        0x1bt
        0x1at
        0x27t
        0x27t
        0x1et
        0x2bt
        -0x19t
        0x1ct
        0x25t
        0x22t
        0x1ct
        0x24t
        0x1et
        0x1dt
        -0xft
        -0x1et
        -0xbt
        -0xft
        -0x54t
        -0x1bt
        -0xft
        -0x16t
        -0x17t
        -0x15t
        -0x16t
        -0x24t
        -0x5dt
        -0x52t
    .end array-data
.end method

.method private A0C(ILcom/facebook/ads/redexgen/X/Tx;)V
    .locals 11

    .line 22025
    .local p0, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    new-instance v6, Lcom/facebook/ads/redexgen/X/k2;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/k2;-><init>(Lcom/facebook/ads/redexgen/X/81;)V

    .line 22026
    .local v3, "nativeDSLListener":Lcom/facebook/ads/redexgen/X/d1;
    new-instance v3, Lcom/facebook/ads/redexgen/X/62;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/81;->A05:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/81;->A0H:Lcom/facebook/ads/redexgen/X/Y2;

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/81;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/62;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/d1;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Y2;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/81;->A09:Lcom/facebook/ads/redexgen/X/62;

    .line 22027
    new-instance v0, Lcom/facebook/ads/redexgen/X/k1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/k1;-><init>(Lcom/facebook/ads/redexgen/X/81;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0A:Lcom/facebook/ads/redexgen/X/fo;

    .line 22028
    new-instance v1, Lcom/facebook/ads/redexgen/X/fp;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/81;->A09:Lcom/facebook/ads/redexgen/X/62;

    .line 22029
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tx;->A04()I

    move-result v3

    .line 22030
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tx;->A09()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0A:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    .line 22031
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    .line 22032
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0m()I

    move-result v0

    .line 22033
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 22034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0n()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 22035
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A09:Lcom/facebook/ads/redexgen/X/62;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/62;->setVisibility(I)V

    .line 22036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->getResources()Landroid/content/res/Resources;

    .line 22037
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/81;->A09:Lcom/facebook/ads/redexgen/X/62;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/62;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A09:Lcom/facebook/ads/redexgen/X/62;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/62;->AKD()V

    .line 22039
    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/81;)V
    .locals 0

    .line 22040
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/81;->A0A()V

    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/81;ILcom/facebook/ads/redexgen/X/Tx;)V
    .locals 0

    .line 22041
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/81;->A0C(ILcom/facebook/ads/redexgen/X/Tx;)V

    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/Tx;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Vp;)V
    .locals 11

    .line 22042
    .local p0, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0F:Z

    .line 22043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/jn;->A00(Lcom/facebook/ads/redexgen/X/76;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/jn;

    move-result-object v3

    .line 22044
    .local v0, "dataModel":Lcom/facebook/ads/redexgen/X/jn;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jn;->A7O()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0D:Ljava/lang/String;

    .line 22045
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A06(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/VA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A52()V

    .line 22047
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/N9;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/N9;->AEN(Lcom/facebook/ads/redexgen/X/k8;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 22048
    return-void

    .line 22049
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/82;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/82;-><init>(Lcom/facebook/ads/redexgen/X/81;Lcom/facebook/ads/redexgen/X/jn;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A07:Lcom/facebook/ads/redexgen/X/b1;

    .line 22050
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A07:Lcom/facebook/ads/redexgen/X/b1;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22051
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tx;->A04()I

    move-result v2

    .line 22052
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/81;->A7O()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LV;

    invoke-direct {v0, v5, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/LV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    .line 22053
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    .line 22054
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tx;->A07()I

    move-result v1

    .line 22055
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tx;->A08()I

    move-result v0

    .line 22056
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0L(II)V

    .line 22057
    new-instance v9, Lcom/facebook/ads/redexgen/X/k0;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/k0;-><init>(Lcom/facebook/ads/redexgen/X/81;)V

    .line 22058
    .local v9, "impressionHelper":Lcom/facebook/ads/redexgen/X/N4;
    new-instance v4, Lcom/facebook/ads/redexgen/X/jl;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/81;->A05:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    .line 22059
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LV;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v8

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/jl;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/ay;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/N4;Lcom/facebook/ads/redexgen/X/Vp;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/81;->A02:Lcom/facebook/ads/redexgen/X/jl;

    .line 22060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A02:Lcom/facebook/ads/redexgen/X/jl;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/jl;->A0A(Lcom/facebook/ads/redexgen/X/jn;)V

    .line 22061
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    .line 22062
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b4;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22063
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jn;->A04()Ljava/lang/String;

    move-result-object v6

    .line 22064
    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/81;->A08(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x28

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/81;->A08(III)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/LV;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0E:Z

    .line 22066
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/81;->A0A()V

    .line 22067
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/Vp;Lcom/facebook/ads/redexgen/X/Tx;)V
    .locals 10

    .line 22068
    .local p1, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/81;->A05:Lcom/facebook/ads/redexgen/X/VA;

    sget-object v1, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const-string v1, "0asQ5nS3mEJJFXqECkaJp8czAINd5ojj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wkfCN0fAVUFan65EWCqz3ffd3K2ZXjjS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 22069
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v9
    :cond_0
    return-void

    .line 22070
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vp;->A03()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const-string v1, "7AAzPingpmVfFCqSXKHauNoNKo9Xv93Z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-float v1, v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 22071
    .local v0, "bannerHeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    .line 22072
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    .line 22073
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SN;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 22074
    .local v1, "isUnifiedAssetsLoaderEnabled":Z
    :goto_1
    if-nez v0, :cond_4

    .line 22075
    invoke-direct {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/81;->A0C(ILcom/facebook/ads/redexgen/X/Tx;)V

    .line 22076
    return-void

    :cond_2
    int-to-float v1, v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 22077
    .local v0, "bannerHeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    .line 22078
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 22079
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 22080
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 22081
    .local v3, "cacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    move-object v2, p0

    .line 22082
    .local v9, "selfReference":Lcom/facebook/ads/redexgen/X/81;
    new-instance v3, Lcom/facebook/ads/redexgen/X/SN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    .line 22083
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    .line 22084
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    .line 22085
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/k4;

    invoke-direct {v9, p0, v1, p2, v2}, Lcom/facebook/ads/redexgen/X/k4;-><init>(Lcom/facebook/ads/redexgen/X/81;ILcom/facebook/ads/redexgen/X/Tx;Lcom/facebook/ads/redexgen/X/81;)V

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SM;)V

    .line 22086
    .local v2, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SN;->A0B()V

    .line 22087
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/81;)Z
    .locals 0

    .line 22088
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/81;->A0G:Z

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/81;Z)Z
    .locals 0

    .line 22089
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/81;->A0F:Z

    return p1
.end method


# virtual methods
.method public final A7O()Ljava/lang/String;
    .locals 1

    .line 22090
    .local p0, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0D:Ljava/lang/String;

    return-object v0
.end method

.method public final A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 4

    .line 22091
    .local v2, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    .line 22092
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/81;->A06:Lcom/facebook/ads/redexgen/X/Vp;

    sget-object v2, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/81;->A0K:[Ljava/lang/String;

    const-string v1, "gRyzGCsQg6apk2eHBZ3N290V4KDgGwY2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A06:Lcom/facebook/ads/redexgen/X/Vp;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Vp;

    if-ne v1, v0, :cond_0

    .line 22093
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 22094
    :goto_0
    return-object v0

    .line 22095
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AAt(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Vp;Lcom/facebook/ads/redexgen/X/N9;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V
    .locals 3

    .line 22096
    .local p0, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4N()V

    .line 22097
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    .line 22098
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/81;->A05:Lcom/facebook/ads/redexgen/X/VA;

    .line 22099
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/N9;

    .line 22100
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/81;->A06:Lcom/facebook/ads/redexgen/X/Vp;

    .line 22101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    .line 22102
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 22103
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/81;->A0G:Z

    .line 22104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    invoke-static {p5, v0}, Lcom/facebook/ads/redexgen/X/7o;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    .line 22105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A03:Lcom/facebook/ads/redexgen/X/7o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22106
    invoke-direct {p0, p3, p6}, Lcom/facebook/ads/redexgen/X/81;->A0G(Lcom/facebook/ads/redexgen/X/Vp;Lcom/facebook/ads/redexgen/X/Tx;)V

    .line 22107
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A0I:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v0, v2, v1, p0, p4}, Lcom/facebook/ads/redexgen/X/NA;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/k8;Lcom/facebook/ads/redexgen/X/N9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A01:Lcom/facebook/ads/redexgen/X/NA;

    .line 22108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A01:Lcom/facebook/ads/redexgen/X/NA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A02()V

    .line 22109
    return-void

    .line 22110
    :cond_0
    invoke-direct {p0, p6, p5, p3}, Lcom/facebook/ads/redexgen/X/81;->A0F(Lcom/facebook/ads/redexgen/X/Tx;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Vp;)V

    goto :goto_0
.end method

.method public final AKL()Z
    .locals 1

    .line 22111
    .local p0, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 22112
    .local p0, "this":Lcom/facebook/ads/redexgen/X/81;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A04:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4L(Z)V

    .line 22113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    if-eqz v0, :cond_0

    .line 22114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LV;->destroy()V

    .line 22115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A08:Lcom/facebook/ads/redexgen/X/LV;

    .line 22116
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A07:Lcom/facebook/ads/redexgen/X/b1;

    .line 22117
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A01:Lcom/facebook/ads/redexgen/X/NA;

    if-eqz v0, :cond_1

    .line 22118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/81;->A01:Lcom/facebook/ads/redexgen/X/NA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A03()V

    .line 22119
    :cond_1
    return-void

    .line 22120
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
