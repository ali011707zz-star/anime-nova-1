.class public abstract Lcom/facebook/ads/androidx/media3/common/Timeline;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pj;,
        Lcom/facebook/ads/redexgen/X/pl;,
        Lcom/facebook/ads/redexgen/X/AR;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3421
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "u1TV1j0aFj13GJQ9ixTagHG8KyMgbnog"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4GMeFBxldVuonExwkIPaDDi9I59L728Z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hqD1wOYcZTmehOTQOtlNc0UQ2KV4ETaI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "yejsGunEYiKaKfUzobCfCtheJf3zEEcL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wYd9LRHFlTpJXE3VqmNr3ySXFdmyeGzN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VCegaKN739XbWKUaP5Uwy30Zmvr6QTeK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Cr3igiuAIuu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "x89DN52UD2fFRZn9rQXfWzGYhaiJYHE1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AS;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 3422
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05:Ljava/lang/String;

    .line 3423
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A03:Ljava/lang/String;

    .line 3424
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04:Ljava/lang/String;

    .line 3425
    new-instance v0, Lcom/facebook/ads/redexgen/X/pq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pq;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A01:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 104575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A02(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/AR;
    .locals 4

    .line 104576
    sget-object v1, Lcom/facebook/ads/redexgen/X/pj;->A0J:Lcom/facebook/ads/redexgen/X/23;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05:Ljava/lang/String;

    .line 104577
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/43;->A00(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04(Lcom/facebook/ads/redexgen/X/23;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v3

    .line 104578
    .local v0, "windows":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Window;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/pl;->A08:Lcom/facebook/ads/redexgen/X/23;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A03:Ljava/lang/String;

    .line 104579
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/43;->A00(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04(Lcom/facebook/ads/redexgen/X/23;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v2

    .line 104580
    .local v1, "periods":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Period;>;"
    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 104581
    .local v2, "shuffledWindowIndices":[I
    if-nez v1, :cond_0

    .line 104582
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BP;->size()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05(I)[I

    move-result-object v1

    .line 104583
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/AR;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AR;-><init>(Lcom/facebook/ads/redexgen/X/BP;Lcom/facebook/ads/redexgen/X/BP;[I)V

    .line 104584
    return-object v0
.end method

.method public static synthetic A03(Landroid/os/Bundle;)Lcom/facebook/ads/androidx/media3/common/Timeline;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/AR;

    move-result-object p0

    return-object p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/23;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/BP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/24;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/23<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TT;>;"
        }
    .end annotation

    .line 104585
    .local p0, "creator":Lcom/facebook/ads/redexgen/X/23;, "Lcom/facebook/ads/androidx/media3/common/Bundleable$Creator<TT;>;"
    if-nez p1, :cond_0

    .line 104586
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A03()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0

    .line 104587
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/2K;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/2K;-><init>()V

    .line 104588
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<TT;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/22;->A00(Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v2

    .line 104589
    .local v1, "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 104590
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 104591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104592
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method

.method public static A05(I)[I
    .locals 5

    .line 104593
    new-array v4, p0, [I

    .line 104594
    .local v0, "indices":[I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, p0, :cond_1

    .line 104595
    aput v3, v4, v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    .line 104596
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "bm1hpxiL8T70YPoy7qoC4X3DFFhRRvrI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ZU2doOYnXTdq2XyitRV5O0BVNSu1NLTL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 104597
    .end local v1    # "i":I
    :cond_1
    return-object v4
.end method


# virtual methods
.method public abstract A06()I
.end method

.method public abstract A07()I
.end method

.method public A08(IIZ)I
    .locals 4

    .line 104598
    packed-switch p2, :pswitch_data_0

    .line 104599
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 104600
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "R0HEAX03GiDQUcMP0CiDD2yYG3qNGv8H"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_1

    .line 104601
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v0

    .line 104602
    :goto_0
    return v0

    .line 104603
    :cond_1
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 104604
    :pswitch_1
    return p1

    .line 104605
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 104606
    const/4 v0, -0x1

    .line 104607
    :goto_1
    return v0

    .line 104608
    :cond_2
    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A09(ILcom/facebook/ads/redexgen/X/pl;Lcom/facebook/ads/redexgen/X/pj;IZ)I
    .locals 2

    .line 104609
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    .line 104610
    .local v0, "windowIndex":I
    invoke-virtual {p0, v1, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pj;->A01:I

    if-ne v0, p1, :cond_1

    .line 104611
    invoke-virtual {p0, v1, p4, p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    .line 104612
    .local v1, "nextWindowIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 104613
    return v0

    .line 104614
    :cond_0
    invoke-virtual {p0, v1, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pj;->A00:I

    return v0

    .line 104615
    .end local v1    # "nextWindowIndex":I
    :cond_1
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public abstract A0A(Ljava/lang/Object;)I
.end method

.method public A0B(Z)I
    .locals 1

    .line 104616
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A0C(Z)I
    .locals 1

    .line 104617
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/pj;Lcom/facebook/ads/redexgen/X/pl;IJ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pj;",
            "Lcom/facebook/ads/redexgen/X/pl;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104618
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0E(Lcom/facebook/ads/redexgen/X/pj;Lcom/facebook/ads/redexgen/X/pl;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/pj;Lcom/facebook/ads/redexgen/X/pl;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pj;",
            "Lcom/facebook/ads/redexgen/X/pl;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 104619
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p4

    move v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0G(Lcom/facebook/ads/redexgen/X/pj;Lcom/facebook/ads/redexgen/X/pl;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 104620
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/pj;Lcom/facebook/ads/redexgen/X/pl;IJJ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pj;",
            "Lcom/facebook/ads/redexgen/X/pl;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104621
    invoke-virtual/range {p0 .. p7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0G(Lcom/facebook/ads/redexgen/X/pj;Lcom/facebook/ads/redexgen/X/pl;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/pj;Lcom/facebook/ads/redexgen/X/pl;IJJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pj;",
            "Lcom/facebook/ads/redexgen/X/pl;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 104622
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    invoke-static {p3, v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A00(III)I

    .line 104623
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0L(ILcom/facebook/ads/redexgen/X/pj;J)Lcom/facebook/ads/redexgen/X/pj;

    .line 104624
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p4, v4

    if-nez v0, :cond_0

    .line 104625
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/pj;->A05()J

    move-result-wide p4

    .line 104626
    cmp-long v0, p4, v4

    if-nez v0, :cond_0

    .line 104627
    const/4 v0, 0x0

    return-object v0

    .line 104628
    :cond_0
    iget v3, p1, Lcom/facebook/ads/redexgen/X/pj;->A00:I

    .line 104629
    .local v2, "periodIndex":I
    invoke-virtual {p0, v3, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    .line 104630
    :goto_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pj;->A01:I

    if-ge v3, v0, :cond_1

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    cmp-long v0, v1, p4

    if-eqz v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    .line 104631
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    cmp-long v0, v1, p4

    if-gtz v0, :cond_1

    .line 104632
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104633
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;

    .line 104634
    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    sub-long/2addr p4, v0

    .line 104635
    .local v3, "periodPositionUs":J
    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    .line 104636
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_3

    sget-object v4, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "slEcDLMOMSnRw8lzrIQwxe9jf9tcgTic"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 104637
    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 104638
    .end local v3    # "periodPositionUs":J
    .local v0, "periodPositionUs":J
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/pl;->A04:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0H(ILcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;
    .locals 1

    .line 104639
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;
.end method

.method public A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;
    .locals 2

    .line 104640
    invoke-virtual {p0, p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    return-object v0
.end method

.method public final A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;
    .locals 2

    .line 104641
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0L(ILcom/facebook/ads/redexgen/X/pj;J)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0L(ILcom/facebook/ads/redexgen/X/pj;J)Lcom/facebook/ads/redexgen/X/pj;
.end method

.method public abstract A0M(I)Ljava/lang/Object;
.end method

.method public final A0N()Z
    .locals 1

    .line 104642
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0O(ILcom/facebook/ads/redexgen/X/pl;Lcom/facebook/ads/redexgen/X/pj;IZ)Z
    .locals 2

    .line 104643
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/pl;Lcom/facebook/ads/redexgen/X/pj;IZ)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .line 104644
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 104645
    return v5

    .line 104646
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/androidx/media3/common/Timeline;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 104647
    return v4

    .line 104648
    :cond_1
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 104649
    .local v1, "other":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 104650
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_2
    return v4

    .line 104651
    :cond_3
    new-instance v8, Lcom/facebook/ads/redexgen/X/pj;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/pj;-><init>()V

    .line 104652
    .local v3, "window":Lcom/facebook/ads/redexgen/X/pj;
    new-instance v7, Lcom/facebook/ads/redexgen/X/pl;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/pl;-><init>()V

    .line 104653
    .local v4, "period":Lcom/facebook/ads/redexgen/X/pl;
    new-instance v3, Lcom/facebook/ads/redexgen/X/pj;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/pj;-><init>()V

    .line 104654
    .local v5, "otherWindow":Lcom/facebook/ads/redexgen/X/pj;
    new-instance v6, Lcom/facebook/ads/redexgen/X/pl;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/pl;-><init>()V

    .line 104655
    .local v6, "otherPeriod":Lcom/facebook/ads/redexgen/X/pl;
    const/4 v2, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 104656
    invoke-virtual {p0, v2, v8}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v1

    invoke-virtual {p1, v2, v3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/pj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 104657
    return v4

    .line 104658
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104659
    .end local v7    # "i":I
    :cond_5
    const/4 v3, 0x0

    .restart local v7    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 104660
    invoke-virtual {p0, v3, v7, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v1

    .line 104661
    invoke-virtual {p1, v3, v6, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/pl;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "LCXdoHEXleHtD1UyLVprjOGqC7qnADXU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "np8LEsRhRemsbbWWIjAQc1GjKbBRdfRS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v8, :cond_7

    .line 104662
    return v4

    .line 104663
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104664
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {p0, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v3

    .line 104665
    .local v7, "windowIndex":I
    invoke-virtual {p1, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v0

    if-eq v3, v0, :cond_9

    .line 104666
    return v4

    .line 104667
    :cond_9
    invoke-virtual {p0, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v2

    .line 104668
    .local v8, "lastWindowIndex":I
    invoke-virtual {p1, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v0

    if-eq v2, v0, :cond_a

    .line 104669
    return v4

    .line 104670
    :cond_a
    :goto_2
    if-eq v3, v2, :cond_c

    .line 104671
    invoke-virtual {p0, v3, v4, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    .line 104672
    .local p0, "nextWindowIndex":I
    invoke-virtual {p1, v3, v4, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v0

    if-eq v1, v0, :cond_b

    .line 104673
    return v4

    .line 104674
    :cond_b
    move v3, v1

    .line 104675
    .end local p0    # "nextWindowIndex":I
    goto :goto_2

    .line 104676
    :cond_c
    return v5
.end method

.method public final hashCode()I
    .locals 5

    .line 104677
    new-instance v3, Lcom/facebook/ads/redexgen/X/pj;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/pj;-><init>()V

    .line 104678
    .local v0, "window":Lcom/facebook/ads/redexgen/X/pj;
    new-instance v4, Lcom/facebook/ads/redexgen/X/pl;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/pl;-><init>()V

    .line 104679
    .local v1, "period":Lcom/facebook/ads/redexgen/X/pl;
    const/4 v0, 0x7

    .line 104680
    .local v2, "result":I
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    add-int/2addr v2, v0

    .line 104681
    .end local v2    # "result":I
    .local v3, "result":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 104682
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pj;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 104683
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104684
    .end local v2    # "i":I
    :cond_0
    mul-int/lit8 v3, v2, 0x1f

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    add-int/2addr v3, v0

    .line 104685
    .end local v3    # "result":I
    .local v2, "result":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 104686
    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v1, v4, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pl;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    .line 104687
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104688
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v1

    .line 104689
    .local v3, "windowIndex":I
    :goto_2
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 104690
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v1

    .line 104691
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    goto :goto_2

    .line 104692
    .end local v3    # "windowIndex":I
    :cond_2
    return v3
.end method
