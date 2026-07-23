.class public final Lcom/facebook/ads/redexgen/X/iY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/T5;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/InterstitialAd;

.field public A02:Lcom/facebook/ads/InterstitialAdListener;

.field public A03:Lcom/facebook/ads/RewardData;

.field public A04:Lcom/facebook/ads/RewardedAdListener;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/U3;

.field public final A0A:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V
    .locals 1

    .line 86927
    new-instance v0, Lcom/facebook/ads/redexgen/X/ij;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ij;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/iY;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/U3;)V

    .line 86928
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/U3;)V
    .locals 2

    .line 86929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86930
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 86931
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iY;->A0B:Ljava/lang/String;

    .line 86932
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iY;->A01:Lcom/facebook/ads/InterstitialAd;

    .line 86933
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A0C:Ljava/lang/ref/WeakReference;

    .line 86934
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A00:J

    .line 86935
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/gi;->A0N(Lcom/facebook/ads/redexgen/X/T5;)V

    .line 86936
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/iY;->A09:Lcom/facebook/ads/redexgen/X/U3;

    .line 86937
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 86938
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/InterstitialAd;
    .locals 1

    .line 86939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A01:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A01:Lcom/facebook/ads/InterstitialAd;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A0C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    goto :goto_0
.end method

.method public final A02()Lcom/facebook/ads/InterstitialAdListener;
    .locals 1

    .line 86940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A02:Lcom/facebook/ads/InterstitialAdListener;

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/RewardData;
    .locals 1

    .line 86941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A03:Lcom/facebook/ads/RewardData;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/RewardedAdListener;
    .locals 1

    .line 86942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A04:Lcom/facebook/ads/RewardedAdListener;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 86943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/U3;
    .locals 1

    .line 86944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A09:Lcom/facebook/ads/redexgen/X/U3;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .locals 1

    .line 86945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A05:Ljava/lang/String;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 1

    .line 86946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A09()Ljava/lang/String;
    .locals 1

    .line 86947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A07:Ljava/lang/String;

    return-object v0
.end method

.method public final A0A()Ljava/lang/String;
    .locals 1

    .line 86948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A0B()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation

    .line 86949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A08:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final A0C(J)V
    .locals 0

    .line 86950
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A00:J

    .line 86951
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/InterstitialAd;)V
    .locals 1

    .line 86952
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iY;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86953
    return-void

    .line 86954
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A01:Lcom/facebook/ads/InterstitialAd;

    .line 86955
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 0

    .line 86956
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A02:Lcom/facebook/ads/InterstitialAdListener;

    .line 86957
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 86958
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A03:Lcom/facebook/ads/RewardData;

    .line 86959
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/RewardedAdListener;)V
    .locals 0

    .line 86960
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A04:Lcom/facebook/ads/RewardedAdListener;

    .line 86961
    return-void
.end method

.method public final A0H(Ljava/lang/String;)V
    .locals 0

    .line 86962
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A05:Ljava/lang/String;

    .line 86963
    return-void
.end method

.method public final A0I(Ljava/lang/String;)V
    .locals 0

    .line 86964
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A06:Ljava/lang/String;

    .line 86965
    return-void
.end method

.method public final A0J(Ljava/lang/String;)V
    .locals 0

    .line 86966
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A07:Ljava/lang/String;

    .line 86967
    return-void
.end method

.method public final A0K(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 86968
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iY;->A08:Ljava/util/EnumSet;

    .line 86969
    return-void
.end method

.method public final bridge synthetic A6k()Lcom/facebook/ads/Ad;
    .locals 1

    .line 86970
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A6o()Lcom/facebook/ads/AdListener;
    .locals 1

    .line 86971
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iY;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    return-object v0
.end method
