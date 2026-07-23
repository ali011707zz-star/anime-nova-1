.class public final Lcom/facebook/ads/redexgen/X/h5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/h6;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/NativeAd$NativeOptions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/S6;

.field public A02:Lcom/facebook/ads/redexgen/X/gi;

.field public final A03:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2910
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2TNZv5rtJTplZyjTIrSAFwUR6QP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UjegX20Mk8HUIHIT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ti96PrkTuXG6IMzmEs5GDJe0LgUxYJn1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WKFIsio5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sT4eIPa9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0D70Whi8Ioa2N41OWBvmw3gUZoSjgMHO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iH11Sl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "erLbaj7N4o7d5mJ3hEM6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/h5;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/h5;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/S6;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;Lcom/facebook/ads/NativeAd$NativeOptions;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/S6;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 83685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83686
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/h5;->A00:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 83687
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/h5;->A01:Lcom/facebook/ads/redexgen/X/S6;

    .line 83688
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/h5;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 83689
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/h5;->A03:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 83690
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/NativeAd$NativeOptions;
    .locals 0

    .line 83691
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/h5;->A00:Lcom/facebook/ads/NativeAd$NativeOptions;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;
    .locals 0

    .line 83692
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/h5;->A01:Lcom/facebook/ads/redexgen/X/S6;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 83693
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/h5;->A02:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/h5;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/h5;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/h5;->A05:[Ljava/lang/String;

    const-string v1, "MdmGKNh4C3mG92xgGyorPLR3SXO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x58

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/h5;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        -0x27t
        -0x14t
        -0x1ft
        -0x12t
        -0x23t
        -0x1ct
        -0x23t
        -0x26t
        -0x23t
        -0x22t
        -0x1at
        -0x23t
    .end array-data
.end method


# virtual methods
.method public final ADp(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 1

    .line 83694
    new-instance v0, Lcom/facebook/ads/redexgen/X/h8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/h8;-><init>(Lcom/facebook/ads/redexgen/X/h5;Lcom/facebook/ads/redexgen/X/Vm;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/WP;)V

    .line 83695
    return-void
.end method

.method public final AEy(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ju;",
            ">;)V"
        }
    .end annotation

    .line 83696
    .local v12, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h5;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 83697
    .local v0, "manager":Lcom/facebook/ads/redexgen/X/Sx;
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/16 v1, 0x17

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/h5;->A03(III)Ljava/lang/String;

    move-result-object v1

    .line 83698
    .local v1, "firstRequestId":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/ju;

    .line 83699
    .local v3, "nativeAdapter":Lcom/facebook/ads/redexgen/X/ju;
    const/4 v5, 0x6

    const/4 v4, 0x7

    const/16 v3, 0x17

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/h5;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83700
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0G()Ljava/lang/String;

    move-result-object v1

    .line 83701
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/h5;->A03:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    sget-object v3, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83702
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 83703
    new-instance v7, Lcom/facebook/ads/redexgen/X/Sv;

    .line 83704
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 83705
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vb;->getHeight()I

    move-result v9

    .line 83706
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0I()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vb;->getWidth()I

    move-result v10

    .line 83707
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0G()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/16 v3, 0x20

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/h5;->A03(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 83708
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 83709
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 83710
    new-instance v7, Lcom/facebook/ads/redexgen/X/Sv;

    .line 83711
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 83712
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vb;->getHeight()I

    move-result v9

    .line 83713
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vb;->getWidth()I

    move-result v10

    .line 83714
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0G()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/16 v3, 0x20

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/h5;->A03(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 83715
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 83716
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83717
    new-instance v7, Lcom/facebook/ads/redexgen/X/St;

    .line 83718
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ji;->A0e()Ljava/lang/String;

    move-result-object v8

    .line 83719
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0G()Ljava/lang/String;

    move-result-object v9

    .line 83720
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ju;->A0E()Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ji;->A0D()J

    move-result-wide v11

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/16 v2, 0x20

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/h5;->A03(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 83721
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Sx;->A0b(Lcom/facebook/ads/redexgen/X/St;)V

    goto/16 :goto_0

    .line 83722
    :cond_4
    new-instance v5, Lcom/facebook/ads/redexgen/X/h6;

    invoke-direct {v5, p0, p1}, Lcom/facebook/ads/redexgen/X/h6;-><init>(Lcom/facebook/ads/redexgen/X/h5;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/16 v2, 0x20

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/h5;->A03(III)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V

    .line 83723
    return-void
.end method
