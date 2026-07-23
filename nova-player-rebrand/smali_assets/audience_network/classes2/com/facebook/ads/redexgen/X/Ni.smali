.class public final Lcom/facebook/ads/redexgen/X/Ni;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nj;
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

    .line 54652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ni;)Ljava/lang/String;
    .locals 0

    .line 54653
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ni;)Ljava/lang/String;
    .locals 0

    .line 54654
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ni;)Ljava/lang/String;
    .locals 0

    .line 54655
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ni;)Ljava/lang/String;
    .locals 0

    .line 54656
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ni;
    .locals 0

    .line 54657
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Ljava/lang/String;

    .line 54658
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ni;
    .locals 0

    .line 54659
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Ljava/lang/String;

    .line 54660
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ni;
    .locals 0

    .line 54661
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Ljava/lang/String;

    .line 54662
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ni;
    .locals 0

    .line 54663
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Ljava/lang/String;

    .line 54664
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Nj;
    .locals 2

    .line 54665
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nj;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Ni;Lcom/facebook/ads/redexgen/X/Nh;)V

    return-object v0
.end method
