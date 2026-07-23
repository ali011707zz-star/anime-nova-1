.class public final Lcom/facebook/ads/redexgen/X/qS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/qT;,
        Lcom/facebook/ads/androidx/media3/common/AdPlaybackState$AdState;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:Lcom/facebook/ads/redexgen/X/qS;

.field public static final A09:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/qS;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0A:Lcom/facebook/ads/redexgen/X/qT;

.field public static final A0B:Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:J

.field public final A04:Ljava/lang/Object;

.field public final A05:[Lcom/facebook/ads/redexgen/X/qT;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Change back to private after AdsMediaSource fully upgraded"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 3529
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HSHJbKu4LLVwlp8kAtKM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "V6sGPCPiRhBLh6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pDYVgvWCLxIG9LT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RWHl9GQtcXYH3V7mNtlpSVait36OCwJs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0F7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tg3oN59jNUBk8XSE4kwfd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NBkHOFenkRKh7SKHrVJVIcIm0kDLsOxD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OSER18TpRPMUQAQSprsMKIJx0xqzVeT1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/qS;->A03()V

    new-instance v4, Lcom/facebook/ads/redexgen/X/qS;

    const/4 v3, 0x0

    new-array v6, v3, [Lcom/facebook/ads/redexgen/X/qT;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/qS;-><init>(Ljava/lang/Object;[Lcom/facebook/ads/redexgen/X/qT;JJI)V

    sput-object v4, Lcom/facebook/ads/redexgen/X/qS;->A08:Lcom/facebook/ads/redexgen/X/qS;

    .line 3530
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/qT;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/qT;-><init>(J)V

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/qT;->A06(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qS;->A0A:Lcom/facebook/ads/redexgen/X/qT;

    .line 3531
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qS;->A0B:Ljava/lang/String;

    .line 3532
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qS;->A0C:Ljava/lang/String;

    .line 3533
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qS;->A0D:Ljava/lang/String;

    .line 3534
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qS;->A0E:Ljava/lang/String;

    .line 3535
    new-instance v0, Lcom/facebook/ads/redexgen/X/qV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/qV;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qS;->A09:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Lcom/facebook/ads/redexgen/X/qT;JJI)V
    .locals 1

    .line 105638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105639
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/qS;->A04:Ljava/lang/Object;

    .line 105640
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/qS;->A02:J

    .line 105641
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/qS;->A03:J

    .line 105642
    array-length v0, p2

    add-int/2addr v0, p7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A00:I

    .line 105643
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    .line 105644
    iput p7, p0, Lcom/facebook/ads/redexgen/X/qS;->A01:I

    .line 105645
    return-void
.end method

.method public static A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/qS;
    .locals 9

    .line 105646
    sget-object v0, Lcom/facebook/ads/redexgen/X/qS;->A0B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 105647
    .local v1, "adGroupBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v3, :cond_1

    .line 105648
    const/4 v0, 0x0

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/qT;

    .line 105649
    .local v2, "adGroups":[Lcom/facebook/ads/redexgen/X/qT;
    .end local v3
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A0C:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/qS;->A08:Lcom/facebook/ads/redexgen/X/qS;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/qS;->A02:J

    .line 105650
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 105651
    .local p3, "adResumePositionUs":J
    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A0D:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/qS;->A08:Lcom/facebook/ads/redexgen/X/qS;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/qS;->A03:J

    .line 105652
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 105653
    .local p5, "contentDurationUs":J
    sget-object v1, Lcom/facebook/ads/redexgen/X/qS;->A0E:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/qS;->A08:Lcom/facebook/ads/redexgen/X/qS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qS;->A01:I

    .line 105654
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 105655
    .local v3, "removedAdGroupCount":I
    new-instance v2, Lcom/facebook/ads/redexgen/X/qS;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/qS;-><init>(Ljava/lang/Object;[Lcom/facebook/ads/redexgen/X/qT;JJI)V

    return-object v2

    .line 105656
    .end local v2    # "adGroups":[Lcom/facebook/ads/redexgen/X/qT;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/qT;

    .line 105657
    .restart local v2    # "adGroups":[Lcom/facebook/ads/redexgen/X/qT;
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 105658
    sget-object v1, Lcom/facebook/ads/redexgen/X/qT;->A09:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qT;

    aput-object v0, v4, v2

    .line 105659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/qS;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/qS;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/qS;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/qS;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    xor-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const-string v1, "7EQT2aPGHNOftenQ9VAvD"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "79Hg5O6oUNL8gh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x1c

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x67

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qS;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x46t
        0x4at
        0x3ft
        0x33t
        0x72t
        0x77t
        0x54t
        0x61t
        0x7ct
        0x66t
        0x63t
        0x60t
        0x2et
        0x48t
        0x74t
        0x78t
        0x39t
        0x3ct
        0xat
        0x3dt
        0x2bt
        0x2dt
        0x35t
        0x3dt
        0x8t
        0x37t
        0x2bt
        0x31t
        0x2ct
        0x31t
        0x37t
        0x36t
        0xdt
        0x2bt
        0x65t
        0x2ft
        0x23t
        0x62t
        0x67t
        0x70t
        0x3et
        0x58t
        0xdt
        0x1t
        0x45t
        0x54t
        0x53t
        0x40t
        0x55t
        0x48t
        0x4et
        0x4ft
        0x74t
        0x52t
        0x1ct
        0x1t
        0x24t
        0x10t
        0x2ct
        0x21t
        0x39t
        0x22t
        0x21t
        0x23t
        0x2bt
        0x13t
        0x34t
        0x21t
        0x34t
        0x25t
        0x68t
        0x21t
        0x24t
        0x33t
        0x9t
        0x24t
        0x7dt
        0x50t
        0x24t
        0x1dt
        0x18t
        0x54t
        0xft
        0x8t
        0x1dt
        0x8t
        0x19t
        0x41t
        0x5bt
        0x5et
        0x7dt
        0x48t
        0x55t
        0x4ft
        0x4at
        0x12t
        0x4et
        0x53t
        0x57t
        0x5ft
        0x6ft
        0x49t
        0x7t
    .end array-data
.end method

.method private A04(JJI)Z
    .locals 6

    .line 105660
    const/4 v5, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    .line 105661
    return v5

    .line 105662
    :cond_0
    invoke-virtual {p0, p5}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    .line 105663
    .local v3, "adGroupPositionUs":J
    cmp-long v0, v1, v3

    if-nez v0, :cond_4

    .line 105664
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v1, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const-string v1, "6w59Aw8BMojzvOgPymJyT"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Ceso9EO8QL9NfZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    cmp-long v0, p3, v3

    if-eqz v0, :cond_2

    cmp-long v0, p1, p3

    if-gez v0, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    return v5

    .line 105665
    :cond_4
    cmp-long v0, p1, v1

    if-gez v0, :cond_5

    const/4 v5, 0x1

    :cond_5
    return v5
.end method


# virtual methods
.method public final A05(JJ)I
    .locals 7

    .line 105666
    const/4 v6, -0x1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, p1, v4

    if-eqz v0, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v1

    if-eqz v0, :cond_1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 105667
    .end local v3
    :cond_0
    return v6

    .line 105668
    :cond_1
    iget v3, p0, Lcom/facebook/ads/redexgen/X/qS;->A01:I

    .line 105669
    .local v3, "index":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A00:I

    if-ge v3, v0, :cond_4

    .line 105670
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    .line 105671
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_3

    .line 105672
    :cond_2
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qT;->A08()Z

    move-result v0

    if-nez v0, :cond_4

    .line 105673
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105674
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A00:I

    if-ge v3, v0, :cond_5

    move v6, v3

    :cond_5
    return v6
.end method

.method public final A06(JJ)I
    .locals 6

    .line 105675
    iget v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A00:I

    add-int/lit8 v5, v0, -0x1

    .line 105676
    .local v0, "index":I
    :goto_0
    if-ltz v5, :cond_0

    move-object v0, p0

    move-wide v3, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/qS;->A04(JJI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105677
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 105678
    :cond_0
    if-ltz v5, :cond_1

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qT;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v5

    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/qT;
    .locals 2

    .line 105679
    iget v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A01:I

    if-ge p1, v0, :cond_0

    .line 105680
    sget-object v0, Lcom/facebook/ads/redexgen/X/qS;->A0A:Lcom/facebook/ads/redexgen/X/qT;

    .line 105681
    :goto_0
    return-object v0

    .line 105682
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A01:I

    sub-int/2addr p1, v0

    aget-object v0, v1, p1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 105683
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 105684
    return v5

    .line 105685
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 105686
    .end local v2
    :cond_1
    return v2

    .line 105687
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/qS;

    .line 105688
    .local v2, "that":Lcom/facebook/ads/redexgen/X/qS;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A04:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qS;->A04:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qS;->A00:I

    if-ne v1, v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/qS;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/qS;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/qS;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/qS;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qS;->A01:I

    if-ne v1, v0, :cond_3

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const-string v1, "16faulxPxX0sTjyZsuY2d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "99yT7gYz4zzQy1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    .line 105689
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105690
    :goto_0
    return v5

    .line 105691
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 4

    .line 105692
    iget v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A00:I

    .line 105693
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A04:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 105694
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A02:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 105695
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v3, v3, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A03:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 105696
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v3, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A01:I

    add-int/2addr v1, v0

    .line 105697
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 105698
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 105699
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A04:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 105700
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105701
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x37

    const/16 v1, 0x16

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A04:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105703
    const/16 v2, 0xe

    const/16 v1, 0x15

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105704
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A02:J

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105705
    const/4 v2, 0x2

    const/16 v1, 0xc

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105706
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const-string v1, "HwwbQlKsFzrVvgzZA70k"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "CWSfdfe0R8gD4PU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    array-length v3, v3

    const/16 v2, 0x4d

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v0

    if-ge v4, v3, :cond_4

    .line 105707
    const/16 v3, 0x58

    const/16 v2, 0xf

    const/16 v1, 0x26

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105708
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    aget-object v1, v1, v4

    iget-wide v1, v1, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105709
    const/16 v3, 0x23

    const/4 v2, 0x7

    const/16 v1, 0x1f

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105710
    const/4 v6, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    array-length v7, v1

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/16 v1, 0x76

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-ge v6, v7, :cond_1

    .line 105711
    const/16 v7, 0x4f

    const/16 v2, 0x9

    const/16 v1, 0x60

    invoke-static {v7, v2, v1}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105712
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 105713
    const/16 v1, 0x3f

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105714
    :goto_2
    const/16 v7, 0x2a

    const/16 v2, 0xd

    const/16 v1, 0x3d

    invoke-static {v7, v2, v1}, Lcom/facebook/ads/redexgen/X/qS;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/qT;->A06:[J

    aget-wide v1, v1, v6

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105716
    const/16 v1, 0x29

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105717
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v6, v1, :cond_0

    .line 105718
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105719
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 105720
    :pswitch_0
    const/16 v1, 0x21

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105721
    goto :goto_2

    .line 105722
    :pswitch_1
    const/16 v1, 0x50

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105723
    goto :goto_2

    .line 105724
    :pswitch_2
    const/16 v1, 0x53

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105725
    goto :goto_2

    .line 105726
    :pswitch_3
    const/16 v1, 0x52

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105727
    goto :goto_2

    .line 105728
    :pswitch_4
    const/16 v1, 0x5f

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105729
    goto :goto_2

    .line 105730
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 105731
    sget-object v2, Lcom/facebook/ads/redexgen/X/qS;->A07:[Ljava/lang/String;

    const-string v1, "tpRIwkkikLxaZqXNkXQj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ureQIhKfJpTfNVp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2

    .line 105732
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105733
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 105734
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105735
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
