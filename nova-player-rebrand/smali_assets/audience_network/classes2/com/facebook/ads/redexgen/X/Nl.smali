.class public final Lcom/facebook/ads/redexgen/X/Nl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Nl;)Ljava/lang/String;
    .locals 0

    .line 54683
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Nl;)Ljava/lang/String;
    .locals 0

    .line 54684
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A01:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Nl;)Ljava/lang/String;
    .locals 0

    .line 54685
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Nl;)Ljava/lang/String;
    .locals 0

    .line 54686
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A03:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 54687
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:Ljava/lang/String;

    .line 54688
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 54689
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A01:Ljava/lang/String;

    .line 54690
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 54691
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A02:Ljava/lang/String;

    .line 54692
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 54693
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A03:Ljava/lang/String;

    .line 54694
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Nm;
    .locals 2

    .line 54695
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nm;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Nm;-><init>(Lcom/facebook/ads/redexgen/X/Nl;Lcom/facebook/ads/redexgen/X/Nk;)V

    return-object v0
.end method
