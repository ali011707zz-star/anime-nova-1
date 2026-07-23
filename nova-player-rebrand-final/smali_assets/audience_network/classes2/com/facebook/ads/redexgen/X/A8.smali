.class public final Lcom/facebook/ads/redexgen/X/A8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/oj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8A;
    }
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/3b;

.field public A01:Lcom/facebook/ads/redexgen/X/4X;

.field public A02:Lcom/facebook/ads/redexgen/X/4d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/4d<",
            "Lcom/facebook/ads/redexgen/X/88;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public final A04:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/86;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/pl;

.field public final A06:Lcom/facebook/ads/redexgen/X/pj;

.field public final A07:Lcom/facebook/ads/redexgen/X/45;

.field public final A08:Lcom/facebook/ads/redexgen/X/8A;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 605
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4o0rkz4sfHeK33SO99B05QXsoRhyQzGZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "K0gAeF3eD9ckm8sSKGrLnlGwgDvg6cGZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7dDhReETm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uWDgAo3QhNS2SDAVWxvGGUxEzkeXCi8E"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iTLUe92lN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "exEbYNMUNVYj7aZkfWzuIWQ7Xih8easj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xOp2qsvLijFTZdD02NXuZsLwHYitQrqs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "G4m8GVqXoTOlF678hGe6mWsbCNLG0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/A8;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/45;)V
    .locals 3

    .line 26995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26996
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/45;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A07:Lcom/facebook/ads/redexgen/X/45;

    .line 26997
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5C;->A0d()Landroid/os/Looper;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/og;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/og;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {v0, v2, p1, v1}, Lcom/facebook/ads/redexgen/X/4d;-><init>(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/45;Lcom/facebook/ads/redexgen/X/4b;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/4d;

    .line 26998
    new-instance v0, Lcom/facebook/ads/redexgen/X/pl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pl;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A05:Lcom/facebook/ads/redexgen/X/pl;

    .line 26999
    new-instance v0, Lcom/facebook/ads/redexgen/X/pj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A06:Lcom/facebook/ads/redexgen/X/pj;

    .line 27000
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A8;->A05:Lcom/facebook/ads/redexgen/X/pl;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8A;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8A;-><init>(Lcom/facebook/ads/redexgen/X/pl;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A08:Lcom/facebook/ads/redexgen/X/8A;

    .line 27001
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A04:Landroid/util/SparseArray;

    .line 27002
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/86;
    .locals 1

    .line 27003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A08:Lcom/facebook/ads/redexgen/X/8A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8A;->A06()Lcom/facebook/ads/redexgen/X/no;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/A8;->A04(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v0

    return-object v0
.end method

.method private A01(ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;
    .locals 3

    .line 27004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27005
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 27006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A08:Lcom/facebook/ads/redexgen/X/8A;

    .line 27007
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/8A;->A05(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27008
    .local v0, "isInKnownTimeline":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 27009
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/A8;->A04(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v0

    .line 27010
    :goto_1
    return-object v0

    .line 27011
    :cond_0
    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v0

    goto :goto_1

    .line 27012
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 27013
    .end local v0    # "isInKnownTimeline":Z
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7g()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v1

    .line 27014
    .local v2, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 27015
    .local v0, "windowIsInTimeline":Z
    :goto_2
    if-eqz v2, :cond_3

    .line 27016
    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v0

    return-object v0

    .line 27017
    :cond_3
    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    goto :goto_3

    .line 27018
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/pz;)Lcom/facebook/ads/redexgen/X/86;
    .locals 2

    .line 27019
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/AD;

    if-eqz v0, :cond_0

    .line 27020
    check-cast p1, Lcom/facebook/ads/redexgen/X/AD;

    .line 27021
    .local v0, "exoError":Lcom/facebook/ads/redexgen/X/AD;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AD;->A05:Lcom/facebook/ads/redexgen/X/3C;

    if-eqz v0, :cond_0

    .line 27022
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/AD;->A05:Lcom/facebook/ads/redexgen/X/3C;

    new-instance v0, Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/no;-><init>(Lcom/facebook/ads/redexgen/X/3C;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/A8;->A04(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v0

    return-object v0

    .line 27023
    .end local v0    # "exoError":Lcom/facebook/ads/redexgen/X/AD;
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v0

    return-object v0
.end method

.method private final A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;
    .locals 18
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 27024
    move-object/from16 v8, p3

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27025
    const/4 v8, 0x0

    .line 27026
    .end local p13
    .local v1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/no;
    .end local p13
    .local v12, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/no;
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A07:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v4

    .line 27027
    .local v16, "realtimeMs":J
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27028
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7g()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    move/from16 v7, p2

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27029
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7b()I

    move-result v0

    if-ne v7, v0, :cond_8

    const/4 v1, 0x1

    .line 27030
    .local p0, "isInCurrentWindow":Z
    :goto_0
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/3C;->A00()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27031
    if-eqz v1, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27032
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7Y()I

    move-result v1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/3C;->A00:I

    if-ne v1, v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27033
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7Z()I

    move-result v1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/3C;->A01:I

    if-ne v1, v0, :cond_2

    .line 27034
    .local v1, "isCurrentAd":Z
    :goto_1
    if-eqz v3, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7e()J

    move-result-wide v9

    .line 27035
    .local p1, "eventPositionMs":J
    :cond_1
    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A08:Lcom/facebook/ads/redexgen/X/8A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8A;->A06()Lcom/facebook/ads/redexgen/X/no;

    move-result-object v13

    .line 27036
    .local p3, "currentMediaPeriodId":Lcom/facebook/ads/redexgen/X/no;
    new-instance v3, Lcom/facebook/ads/redexgen/X/86;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27037
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7g()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v11

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27038
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7b()I

    move-result v12

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27039
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7e()J

    move-result-wide v14

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27040
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A9J()J

    move-result-wide v16

    .end local v12    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/no;
    .local p9, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/no;
    invoke-direct/range {v3 .. v17}, Lcom/facebook/ads/redexgen/X/86;-><init>(JLcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/no;JLcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/no;JJ)V

    .line 27041
    return-object v3

    .line 27042
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 27043
    .end local v1    # "isCurrentAd":Z
    :cond_3
    if-eqz v1, :cond_5

    .line 27044
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7T()J

    move-result-wide v9

    sget-object v3, Lcom/facebook/ads/redexgen/X/A8;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v3, Lcom/facebook/ads/redexgen/X/A8;->A09:[Ljava/lang/String;

    const-string v1, "ZwCTxmE9kC93SnFyqUzyIs0NB6ZXsqqf"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    .restart local v1    # "isCurrentAd":Z
    goto :goto_2

    .line 27045
    .end local v1    # "isCurrentAd":Z
    :cond_5
    invoke-virtual {v6}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/A8;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_2

    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/A8;->A06:Lcom/facebook/ads/redexgen/X/pj;

    invoke-virtual {v6, v7, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/pj;)Lcom/facebook/ads/redexgen/X/pj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pj;->A04()J

    move-result-wide v9

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/facebook/ads/redexgen/X/A8;->A09:[Ljava/lang/String;

    const-string v1, "IrjjFtfbEX9d6APA3g1gQ2wngpNkMZh7"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    goto :goto_2

    .line 27046
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;
    .locals 4

    .line 27047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27048
    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 27049
    move-object v2, v3

    .line 27050
    .local v1, "knownTimeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    :goto_0
    if-eqz p1, :cond_0

    if-nez v2, :cond_4

    .line 27051
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7b()I

    move-result v2

    .line 27052
    .local v2, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3b;->A7g()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v1

    .line 27053
    .local v3, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v2, v0, :cond_2

    const/4 v0, 0x1

    .line 27054
    .local p0, "windowIsInTimeline":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 27055
    :goto_2
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v0

    return-object v0

    .line 27056
    :cond_1
    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    goto :goto_2

    .line 27057
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 27058
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A08:Lcom/facebook/ads/redexgen/X/8A;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8A;->A05(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v2

    goto :goto_0

    .line 27059
    :cond_4
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A05:Lcom/facebook/ads/redexgen/X/pl;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    .line 27060
    .local v0, "windowIndex":I
    invoke-direct {p0, v2, v0, p1}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/86;",
            "I",
            "Lcom/facebook/ads/redexgen/X/4a<",
            "Lcom/facebook/ads/redexgen/X/88;",
            ">;)V"
        }
    .end annotation

    .line 27061
    .local p3, "eventInvocation":Lcom/facebook/ads/redexgen/X/4a;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$Event<Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsListener;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A04:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/4d;->A0A(ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27063
    return-void
.end method


# virtual methods
.method public final ACe()V
    .locals 3

    .line 27064
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Z

    if-nez v0, :cond_0

    .line 27065
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27066
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Z

    .line 27067
    new-instance v1, Lcom/facebook/ads/redexgen/X/oe;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/oe;-><init>(Lcom/facebook/ads/redexgen/X/86;)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27068
    .end local v0    # "eventTime":Lcom/facebook/ads/redexgen/X/86;
    :cond_0
    return-void
.end method

.method public final ADZ(Lcom/facebook/ads/redexgen/X/pR;)V
    .locals 3

    .line 27069
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27070
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oc;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/oc;-><init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/pR;)V

    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27071
    return-void
.end method

.method public final ADa(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;)V"
        }
    .end annotation

    .line 27072
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27073
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oR;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/oR;-><init>(Lcom/facebook/ads/redexgen/X/86;Ljava/util/List;)V

    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27074
    return-void
.end method

.method public final ADk(ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/Cs;)V
    .locals 3

    .line 27075
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/A8;->A01(ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27076
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oh;

    invoke-direct {v1, v2, p3}, Lcom/facebook/ads/redexgen/X/oh;-><init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/Cs;)V

    const/16 v0, 0x3ec

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27077
    return-void
.end method

.method public final AEb(ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;)V
    .locals 3

    .line 27078
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/A8;->A01(ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27079
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/od;

    invoke-direct {v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/od;-><init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;)V

    const/16 v0, 0x3ea

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27080
    return-void
.end method

.method public final AEd(ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/no;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
        .end annotation
    .end param

    .line 27081
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/A8;->A01(ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27082
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oT;

    invoke-direct {v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/oT;-><init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;)V

    const/16 v0, 0x3e9

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27083
    return-void
.end method

.method public final AEg(ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V
    .locals 7

    .line 27084
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/A8;->A01(ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27085
    .local v6, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oi;

    move v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/oi;-><init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V

    const/16 v0, 0x3eb

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27086
    return-void
.end method

.method public final AFI(Lcom/facebook/ads/redexgen/X/px;)V
    .locals 3

    .line 27087
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27088
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/ob;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/ob;-><init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/px;)V

    const/16 v0, 0xc

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27089
    return-void
.end method

.method public final AFK(Lcom/facebook/ads/redexgen/X/pz;)V
    .locals 3

    .line 27090
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/A8;->A02(Lcom/facebook/ads/redexgen/X/pz;)Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27091
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/of;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/of;-><init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/pz;)V

    const/16 v0, 0xa

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27092
    return-void
.end method

.method public final AFM(ZI)V
    .locals 3

    .line 27093
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27094
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oa;

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/oa;-><init>(Lcom/facebook/ads/redexgen/X/86;ZI)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27095
    return-void
.end method

.method public final AFt()V
    .locals 3

    .line 27096
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27097
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oS;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/oS;-><init>(Lcom/facebook/ads/redexgen/X/86;)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27098
    return-void
.end method

.method public final AGA(Lcom/facebook/ads/androidx/media3/common/Timeline;I)V
    .locals 3

    .line 27099
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A8;->A08:Lcom/facebook/ads/redexgen/X/8A;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3b;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8A;->A07(Lcom/facebook/ads/redexgen/X/3b;)V

    .line 27100
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27101
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oY;

    invoke-direct {v1, v2, p2}, Lcom/facebook/ads/redexgen/X/oY;-><init>(Lcom/facebook/ads/redexgen/X/86;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27102
    return-void
.end method

.method public final AGE(Lcom/facebook/ads/redexgen/X/pY;)V
    .locals 3

    .line 27103
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;->A00()Lcom/facebook/ads/redexgen/X/86;

    move-result-object v2

    .line 27104
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/86;
    new-instance v1, Lcom/facebook/ads/redexgen/X/oW;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/oW;-><init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/pY;)V

    const/4 v0, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/86;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 27105
    return-void
.end method

.method public final AJf(Lcom/facebook/ads/redexgen/X/3b;Landroid/os/Looper;)V
    .locals 2

    .line 27106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A08:Lcom/facebook/ads/redexgen/X/8A;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8A;->A01(Lcom/facebook/ads/redexgen/X/8A;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 27107
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3b;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/3b;

    .line 27108
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A8;->A07:Lcom/facebook/ads/redexgen/X/45;

    const/4 v0, 0x0

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/45;->A5P(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/pJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A01:Lcom/facebook/ads/redexgen/X/4X;

    .line 27109
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/4d;

    new-instance v0, Lcom/facebook/ads/redexgen/X/oZ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/oZ;-><init>(Lcom/facebook/ads/redexgen/X/A8;Lcom/facebook/ads/redexgen/X/3b;)V

    .line 27110
    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4d;->A07(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/4b;)Lcom/facebook/ads/redexgen/X/4d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/4d;

    .line 27111
    return-void

    .line 27112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
