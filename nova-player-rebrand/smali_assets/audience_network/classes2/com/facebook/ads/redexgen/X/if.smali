.class public final Lcom/facebook/ads/redexgen/X/if;
.super Lcom/facebook/ads/redexgen/X/N2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/id;->A0G(Ljava/util/EnumSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/id;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2952
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "swComlxz6aoGHqKS8LOj1g5iAOstdInC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iLoXwxITRpbgZFbT1koR1uJW4vvDXY2W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MpkXHfR6HdYIg9t449R"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HQI6v11U6roDlbOuDHGyMjhCWVrAbgmk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qsbQ14vrFuO8q1N0nwgFIOsRNgh3HWyt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NXqrvE65RyYHWICx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "E9yzS8MfEszoKvwo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "osh9YHk0bwFUuMRHqHbnPk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/if;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/id;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87244
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N2;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/if;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/if;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x70t
        0x69t
        0x2ft
        0x23t
        0x22t
        0x38t
        0x3et
        0x23t
        0x20t
        0x20t
        0x29t
        0x3et
        0x6ct
        0x25t
        0x3ft
        0x6ct
        0x22t
        0x39t
        0x20t
        0x20t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 87245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A01(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87246
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A0C(Lcom/facebook/ads/redexgen/X/id;Z)Z

    .line 87247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    .line 87248
    :cond_0
    return-void
.end method

.method public final A04()V
    .locals 2

    .line 87249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A01(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A0C(Lcom/facebook/ads/redexgen/X/id;Z)Z

    .line 87251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87252
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ig;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ig;-><init>(Lcom/facebook/ads/redexgen/X/if;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0S(Lcom/facebook/ads/redexgen/X/N2;)V

    .line 87254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0N()V

    .line 87255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0K()V

    .line 87256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A07(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/7j;)Lcom/facebook/ads/redexgen/X/7j;

    .line 87257
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 87258
    :goto_0
    return-void

    .line 87259
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A01(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_0
.end method

.method public final A05()V
    .locals 2

    .line 87260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    .line 87261
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 87262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdServerFailed()V

    .line 87263
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 87264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdServerSucceeded()V

    .line 87265
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 87266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdCompleted()V

    .line 87267
    return-void
.end method

.method public final A0C()V
    .locals 2

    .line 87268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3K()V

    .line 87269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 87270
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 87271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 87272
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 0

    .line 87273
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 7

    .line 87274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87276
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0N:I

    const/4 v2, 0x3

    const/16 v1, 0x12

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/if;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87277
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/if;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87278
    return-void

    .line 87279
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/id;->A0B(Lcom/facebook/ads/redexgen/X/id;Z)Z

    .line 87280
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7j;->A0I()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A05(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/NQ;)Lcom/facebook/ads/redexgen/X/NQ;

    .line 87281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A04(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/jd;

    if-eqz v0, :cond_6

    .line 87282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A04(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/jd;

    .line 87283
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A26()I

    move-result v0

    if-lez v0, :cond_1

    .line 87284
    new-instance v5, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/XC;-><init>()V

    .line 87285
    .local v2, "chainer":Lcom/facebook/ads/redexgen/X/XC;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 87286
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A08()Ljava/lang/String;

    move-result-object v1

    .line 87287
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A26()I

    move-result v0

    .line 87288
    invoke-virtual {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A09(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/XC;->A08(Lcom/facebook/ads/redexgen/X/gi;Z)V

    .line 87290
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 87291
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A0A()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 87292
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A08()Ljava/lang/String;

    move-result-object v0

    .line 87293
    invoke-virtual {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A06(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    .line 87294
    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/id;->A02(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;

    .line 87295
    .end local v2    # "chainer":Lcom/facebook/ads/redexgen/X/XC;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    sget-object v1, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const-string v1, "23I4hcZMgJ395X2lYna8PMjzW0ozt3hz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/id;->A01(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87296
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/jd;->A2J(Z)V

    .line 87297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 87298
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A01(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    .line 87299
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OH;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/OH;-><init>(Lcom/facebook/ads/redexgen/X/if;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 87300
    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 87301
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A0B()Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withCacheFlags(Ljava/util/EnumSet;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 87302
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    .line 87303
    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v1

    .line 87304
    .local v1, "loadAdConfig":Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A01(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    .line 87305
    .end local v1    # "loadAdConfig":Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;
    :goto_1
    return-void

    .line 87306
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const-string v1, "joZPUUFug9Ts"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_1

    .line 87307
    :cond_4
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    sget-object v1, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const-string v1, "alFbtn3b1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A08(Lcom/facebook/ads/redexgen/X/gi;Z)V

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const-string v1, "OkLAbmcEeyte5Vfo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zgaU15rF2mVDrexS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A08(Lcom/facebook/ads/redexgen/X/gi;Z)V

    goto/16 :goto_0

    .line 87308
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A02:[Ljava/lang/String;

    const-string v1, "JHAXxmwzHKs3NajX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "FHZeNyejFCAXh3Vz"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto/16 :goto_1
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 5

    .line 87309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87310
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 87311
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A00(Lcom/facebook/ads/redexgen/X/id;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v2

    .line 87312
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 87313
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vm;->A04()Ljava/lang/String;

    move-result-object v0

    .line 87314
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 87315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 87316
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XE;->A00(Lcom/facebook/ads/redexgen/X/Vm;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 87317
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 87318
    return-void
.end method
