.class public final Lcom/facebook/ads/redexgen/X/h6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdCacheListenerImpl"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ju;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/h5;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2911
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XqTxzibSN1zAjaiM9LtVSqsxSG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xqN5bEwB0Nihon7KSuA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FVkOY26I4teb9ftOLmk9A45ZS3TS2DIY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wzTDEcMKt7VvW9W8eKeIWksTnJ0tE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iGRCr9OHUARnshCNCmKS3XNzEIA09VDm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MJLgHxMJm3Fw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "m77T1m6dtAhGTcgbhkAg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/h6;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/h5;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ju;",
            ">;)V"
        }
    .end annotation

    .line 83724
    .local p2, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83725
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/h6;->A00:Ljava/util/List;

    .line 83726
    return-void
.end method

.method private A00()V
    .locals 11

    .line 83727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/S6;->A05(Z)V

    .line 83728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S6;->A02()V

    .line 83729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/S6;->A03(I)V

    .line 83730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/h6;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/h6;->A02:[Ljava/lang/String;

    const-string v1, "GKxyFdZ7ADxfGJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/ju;

    .line 83731
    .local v1, "nativeAdapter":Lcom/facebook/ads/redexgen/X/ju;
    new-instance v5, Lcom/facebook/ads/redexgen/X/UK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    .line 83732
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A02(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v6

    .line 83733
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UK;->A0K()Lcom/facebook/ads/redexgen/X/Uk;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    .line 83734
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S6;->A01()Lcom/facebook/ads/redexgen/X/iu;

    move-result-object v10

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/UK;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ju;Lcom/facebook/ads/redexgen/X/Tx;Lcom/facebook/ads/redexgen/X/Va;Lcom/facebook/ads/redexgen/X/iu;)V

    .line 83735
    .local v2, "nativeAdBaseApi":Lcom/facebook/ads/redexgen/X/UK;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UK;->A12()Lcom/facebook/ads/redexgen/X/ju;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83736
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UK;->A12()Lcom/facebook/ads/redexgen/X/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0F()Lcom/facebook/ads/redexgen/X/NG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83737
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UK;->A12()Lcom/facebook/ads/redexgen/X/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0F()Lcom/facebook/ads/redexgen/X/NG;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/iv;

    .line 83738
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/iv;->A00(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 83739
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A02(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A00(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/NativeAd$NativeOptions;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v2, v5, v1}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;Lcom/facebook/ads/NativeAd$NativeOptions;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/S6;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 83740
    .end local v1    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/ju;
    .end local v2    # "nativeAdBaseApi":Lcom/facebook/ads/redexgen/X/UK;
    goto :goto_0

    .line 83741
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/h7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/h7;-><init>(Lcom/facebook/ads/redexgen/X/h6;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/WP;)V

    .line 83742
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final ADL()V
    .locals 0

    .line 83743
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/h6;->A00()V

    .line 83744
    return-void
.end method

.method public final ADT()V
    .locals 0

    .line 83745
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/h6;->A00()V

    .line 83746
    return-void
.end method
