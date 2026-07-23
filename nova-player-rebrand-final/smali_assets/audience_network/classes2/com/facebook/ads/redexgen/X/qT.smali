.class public final Lcom/facebook/ads/redexgen/X/qT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/qS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/qT;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0A:Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;

.field public static final A0F:Ljava/lang/String;

.field public static final A0G:Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:J

.field public final A04:Z

.field public final A05:[I

.field public final A06:[J

.field public final A07:[Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3536
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OkxecgD0Gv2GK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dTJXSSjTvXtvCpVWxsqZ6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wYzs5zgiK5G18"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "klAEANkVopL6T8N0G4GCOYVrDlyPlXqI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4WcRthq3aJhjltodanyM1lxGrZBe12qe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Nzs6zPyAK9Q7ZYWQPcJbQV1Iqfi6la98"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CqWpbShPfJkKIhE6JIbgz0xValvGrdcB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ap1AkjUIhWjw5r6nQb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/qT;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0G:Ljava/lang/String;

    .line 3537
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0B:Ljava/lang/String;

    .line 3538
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0H:Ljava/lang/String;

    .line 3539
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0F:Ljava/lang/String;

    .line 3540
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0C:Ljava/lang/String;

    .line 3541
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0A:Ljava/lang/String;

    .line 3542
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0D:Ljava/lang/String;

    .line 3543
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0E:Ljava/lang/String;

    .line 3544
    new-instance v0, Lcom/facebook/ads/redexgen/X/qU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/qU;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qT;->A09:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 11

    .line 105736
    const/4 v0, 0x0

    new-array v5, v0, [I

    new-array v6, v0, [Landroid/net/Uri;

    new-array v7, v0, [J

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/qT;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    .line 105737
    return-void
.end method

.method public constructor <init>(JII[I[Landroid/net/Uri;[JJZ)V
    .locals 2

    .line 105738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105739
    array-length v1, p5

    array-length v0, p6

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 105740
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    .line 105741
    iput p3, p0, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    .line 105742
    iput p4, p0, Lcom/facebook/ads/redexgen/X/qT;->A01:I

    .line 105743
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    .line 105744
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/qT;->A07:[Landroid/net/Uri;

    .line 105745
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/qT;->A06:[J

    .line 105746
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/qT;->A02:J

    .line 105747
    iput-boolean p10, p0, Lcom/facebook/ads/redexgen/X/qT;->A04:Z

    .line 105748
    return-void

    .line 105749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/qT;
    .locals 15

    .line 105750
    sget-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 105751
    .local v13, "timeUs":J
    sget-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 105752
    .local v1, "count":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0E:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 105753
    .local p0, "originalCount":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0H:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 105754
    .local v12, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0F:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    .line 105755
    .local p1, "states":[I
    sget-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v12

    .line 105756
    .local p2, "durationsUs":[J
    sget-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 105757
    .local p3, "contentResumeOffsetUs":J
    sget-object v0, Lcom/facebook/ads/redexgen/X/qT;->A0D:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 105758
    .local p5, "isServerSideInserted":Z
    new-instance v5, Lcom/facebook/ads/redexgen/X/qT;

    .line 105759
    const/4 v3, 0x0

    if-nez v10, :cond_0

    new-array v10, v3, [I

    .line 105760
    :cond_0
    new-array v11, v3, [Landroid/net/Uri;

    sget-object v4, Lcom/facebook/ads/redexgen/X/qT;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/qT;->A08:[Ljava/lang/String;

    const-string v1, "h5Cz72DlneqkJ"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "HzHttfqxNoxwC"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-nez v2, :cond_3

    .line 105761
    :goto_0
    if-nez v12, :cond_2

    new-array v12, v3, [J

    .end local v12    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p7, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/qT;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    .line 105762
    return-object v5

    .line 105763
    :cond_3
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/net/Uri;

    goto :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/qT;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/qT;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object p0

    return-object p0
.end method

.method public static A02([II)[I
    .locals 4

    .line 105764
    array-length v3, p0

    .line 105765
    .local v0, "oldStateCount":I
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 105766
    .local v1, "newStateCount":I
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 105767
    const/4 v0, 0x0

    invoke-static {v1, v3, v2, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 105768
    return-object v1
.end method

.method public static A03([JI)[J
    .locals 5

    .line 105769
    array-length v4, p0

    .line 105770
    .local v0, "oldDurationsUsCount":I
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 105771
    .local v1, "newDurationsUsCount":I
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 105772
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v2, v4, v3, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 105773
    return-object v2
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 105774
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/qT;->A05(I)I

    move-result v0

    return v0
.end method

.method public final A05(I)I
    .locals 5

    .line 105775
    add-int/lit8 v3, p1, 0x1

    .line 105776
    .local v0, "nextAdIndexToPlay":I
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/qT;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/qT;->A08:[Ljava/lang/String;

    const-string v1, "Wtq62hhDQ1jo9VyQ6cIhlPoFSuywDvdH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 105777
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A04:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    aget v1, v0, v3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 105778
    :cond_1
    return v3

    .line 105779
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final A06(I)Lcom/facebook/ads/redexgen/X/qT;
    .locals 13

    .line 105780
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    move v5, p1

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/qT;->A02([II)[I

    move-result-object v7

    .line 105781
    .local p0, "states":[I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/qT;->A06:[J

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/qT;->A03([JI)[J

    move-result-object v9

    .line 105782
    .local p1, "durationsUs":[J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/qT;->A07:[Landroid/net/Uri;

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/Uri;

    .line 105783
    .local p2, "uris":[Landroid/net/Uri;
    new-instance v2, Lcom/facebook/ads/redexgen/X/qT;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    iget v6, v1, Lcom/facebook/ads/redexgen/X/qT;->A01:I

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/qT;->A02:J

    iget-boolean v12, v1, Lcom/facebook/ads/redexgen/X/qT;->A04:Z

    invoke-direct/range {v2 .. v12}, Lcom/facebook/ads/redexgen/X/qT;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v2
.end method

.method public final A07()Z
    .locals 3

    .line 105784
    iget v1, p0, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 105785
    return v2

    .line 105786
    :cond_0
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    if-ge v1, v0, :cond_3

    .line 105787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_2

    .line 105788
    :cond_1
    return v2

    .line 105789
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105790
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final A08()Z
    .locals 2

    .line 105791
    iget v1, p0, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/qT;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 105792
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 105793
    return v5

    .line 105794
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 105795
    .end local v2
    :cond_1
    return v2

    .line 105796
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/qT;

    .line 105797
    .local v2, "adGroup":Lcom/facebook/ads/redexgen/X/qT;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/qT;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qT;->A01:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qT;->A07:[Landroid/net/Uri;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qT;->A07:[Landroid/net/Uri;

    .line 105798
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    .line 105799
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/qT;->A06:[J

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qT;->A06:[J

    .line 105800
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/qT;->A02:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/qT;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/qT;->A08:[Ljava/lang/String;

    const-string v1, "oTIVhrwO4wW48XZtZFkmZHaHYFeLbVqJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "xLWtDigMD9KXXhkKgPNBVDDiVfKu3Nqc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/qT;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/qT;->A04:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/qT;->A04:Z

    if-ne v1, v0, :cond_3

    .line 105801
    :goto_0
    return v5
.end method

.method public final hashCode()I
    .locals 6

    .line 105802
    iget v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    .line 105803
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A01:I

    add-int/2addr v1, v0

    .line 105804
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 105805
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A07:[Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 105806
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    .line 105807
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A06:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    add-int/2addr v1, v0

    .line 105808
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/qT;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A02:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 105809
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qT;->A04:Z

    add-int/2addr v1, v0

    .line 105810
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
