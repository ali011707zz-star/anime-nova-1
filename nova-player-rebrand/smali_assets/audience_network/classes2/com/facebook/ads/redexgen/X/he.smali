.class public final Lcom/facebook/ads/redexgen/X/he;
.super Lcom/facebook/ads/redexgen/X/PL;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/hb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2934
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TEi6qE8rkCQGgGy4v7NzSxsVq0pzva7O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YDOvw0rnr4UKw3Mnxoslotwc24p8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "a0zjiBNZeYiCSuvwyHtYeell8KyTQ5xY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ogjV6WpDB35FLp8RKY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WANqVRIVKxhPnPWopei7e1k0CZWy62T"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aZZWj5Yt51SqLR33GVZjsdPHZCc7cpWa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7MlacYU9Pwo9bfliYZC3slRrct3tH7Ko"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0XE4m45s2Z74YdVCvJuFI2R02XTQtmXa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/he;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hb;)V
    .locals 0

    .line 85030
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PL;-><init>()V

    .line 85031
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/he;->A00:Lcom/facebook/ads/redexgen/X/hb;

    .line 85032
    return-void
.end method


# virtual methods
.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 4

    .line 85033
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PL;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 85034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/he;->A00:Lcom/facebook/ads/redexgen/X/hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hb;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/he;->A00:Lcom/facebook/ads/redexgen/X/hb;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    .line 85035
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/he;->A00:Lcom/facebook/ads/redexgen/X/hb;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/he;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 85037
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/he;->A01:[Ljava/lang/String;

    const-string v1, "lLG2rM4BR6TSMRI6WEis0bH1e3aTZeM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A1E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 85038
    :cond_1
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 85039
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PL;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85040
    const/4 v0, 0x1

    return v0

    .line 85041
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/he;->A00:Lcom/facebook/ads/redexgen/X/hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hb;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/he;->A00:Lcom/facebook/ads/redexgen/X/hb;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    .line 85042
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/he;->A00:Lcom/facebook/ads/redexgen/X/hb;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    .line 85044
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/R2;->A1Z(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 85045
    return v0

    .line 85046
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
