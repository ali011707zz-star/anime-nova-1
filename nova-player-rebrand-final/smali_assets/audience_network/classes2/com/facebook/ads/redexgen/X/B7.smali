.class public final Lcom/facebook/ads/redexgen/X/B7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/B6;,
        Lcom/facebook/ads/redexgen/X/B4;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:Lcom/facebook/ads/redexgen/X/B7;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/jM;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/B6;

.field public volatile A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/B0;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile A05:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 649
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eoBlep8s1FBIN6Rt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "z5PVad8lFvymSbVcRUVN6mCVOAyUTpZZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CSzRbjHFCczJ9I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vibjkM4Umklha9WpeyLj2yq757BqeZSZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UWrS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nE8lp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HlO2gnmnWOpwEq19Q9DE2Hcik4TJ8nc9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/B7;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/B7;->A08()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/B7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/B7;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/B7;->A08:Lcom/facebook/ads/redexgen/X/B7;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30003
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    .line 30004
    new-instance v0, Lcom/facebook/ads/redexgen/X/B6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/B6;-><init>(Lcom/facebook/ads/redexgen/X/B7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A03:Lcom/facebook/ads/redexgen/X/B6;

    .line 30005
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    .line 30006
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A05:J

    .line 30007
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/B7;J)J
    .locals 0

    .line 30008
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/B7;->A05:J

    return-wide p1
.end method

.method private A01(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/jI;
        }
    .end annotation

    .line 30009
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0I(ZLcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30010
    invoke-static {p4, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30011
    monitor-enter p0

    .line 30012
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 30013
    .local v0, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30014
    iget v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    .line 30015
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30016
    .local v1, "codecIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/B0;

    .line 30017
    .local v2, "ret":Lcom/facebook/ads/redexgen/X/B0;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30018
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p1, p4, p3, v0}, Lcom/facebook/ads/redexgen/X/jM;->A0A(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 30019
    monitor-exit p0

    return-object v2

    .line 30020
    .end local v0    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .end local v1    # "codecIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .end local v2    # "ret":Lcom/facebook/ads/redexgen/X/B0;
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 30021
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p3}, Lcom/facebook/ads/redexgen/X/jM;->A05(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;)Lcom/facebook/ads/redexgen/X/jJ;

    move-result-object v3

    .line 30022
    .local v0, "creatingEvent":Lcom/facebook/ads/redexgen/X/jJ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A03:Lcom/facebook/ads/redexgen/X/B6;

    invoke-static {v0, p1, p4}, Lcom/facebook/ads/redexgen/X/B6;->A01(Lcom/facebook/ads/redexgen/X/B6;ZLjava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v2

    .line 30023
    .local v1, "mediaCodec":Lcom/facebook/ads/redexgen/X/B0;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/jM;->A06(Lcom/facebook/ads/redexgen/X/jJ;I)V

    .line 30024
    return-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30025
    .end local v0    # "creatingEvent":Lcom/facebook/ads/redexgen/X/jJ;
    .end local v1    # "mediaCodec":Lcom/facebook/ads/redexgen/X/B0;
    :catch_0
    move-exception v1

    .line 30026
    .local v0, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/facebook/ads/redexgen/X/jI;

    invoke-direct {v0, p4, v1}, Lcom/facebook/ads/redexgen/X/jI;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A02()Lcom/facebook/ads/redexgen/X/B7;
    .locals 4

    .line 30027
    sget-object v3, Lcom/facebook/ads/redexgen/X/B7;->A08:Lcom/facebook/ads/redexgen/X/B7;

    sget-object v2, Lcom/facebook/ads/redexgen/X/B7;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/B7;->A07:[Ljava/lang/String;

    const-string v1, "gdX1n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "uqN6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/jM;
    .locals 1

    .line 30028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A01:Lcom/facebook/ads/redexgen/X/jM;

    if-eqz v0, :cond_0

    .line 30029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A01:Lcom/facebook/ads/redexgen/X/jM;

    .line 30030
    :goto_0
    return-object v0

    .line 30031
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/CD;->A02:Lcom/facebook/ads/redexgen/X/CD;

    goto :goto_0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/B7;)Lcom/facebook/ads/redexgen/X/jM;
    .locals 0

    .line 30032
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object p0

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/B7;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/B0;",
            ">;"
        }
    .end annotation

    .line 30033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A02:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A02:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30034
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object v0

    .line 30035
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/B7;)Ljava/util/Set;
    .locals 0

    .line 30036
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A06()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/B7;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x3ft
        -0x47t
        -0x38t
        -0x4bt
        -0x7et
        -0x48t
        -0x4bt
        -0x36t
        -0x7bt
        -0x48t
        -0x7et
        -0x4bt
        -0x36t
        -0x7bt
        -0x7et
        -0x48t
        -0x47t
        -0x49t
        -0x3dt
        -0x48t
        -0x47t
        -0x3at
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/jM;)V
    .locals 1

    .line 30037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A01:Lcom/facebook/ads/redexgen/X/jM;

    if-nez v0, :cond_0

    .line 30038
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/B7;->A01:Lcom/facebook/ads/redexgen/X/jM;

    .line 30039
    :cond_0
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/jQ;)V
    .locals 1

    .line 30040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A02:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 30041
    monitor-enter p0

    .line 30042
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A02:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 30043
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/jQ;->A0S:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A02:Ljava/lang/Boolean;

    .line 30044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A02:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30045
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    .line 30046
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 30047
    :cond_1
    :goto_0
    return-void
.end method

.method private A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 4

    .line 30048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 30049
    .local v0, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30050
    iget v3, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/B7;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/B7;->A07:[Ljava/lang/String;

    const-string v1, "FxBrmOrzGAHEl951IE67fieu752sH0JZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "QwM4isUBZzXVsf3PyxWpFGvjBfZOcOMZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    .line 30051
    :cond_1
    return-void
.end method

.method private A0C(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 4

    .line 30052
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0I(ZLcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30053
    invoke-static {p4, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30054
    const/4 v3, 0x1

    .line 30055
    .local v0, "release":Z
    monitor-enter p0

    .line 30056
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/jQ;->A07:I

    if-ge v1, v0, :cond_4

    .line 30057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 30058
    .local v1, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    if-nez v2, :cond_0

    .line 30059
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A06()Ljava/util/Set;

    move-result-object v2

    .line 30060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    invoke-interface {v0, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30061
    :cond_0
    invoke-interface {v2, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30062
    const/4 v3, 0x0

    goto :goto_0

    .line 30063
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/jQ;->A0N:Z

    if-nez v0, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/jQ;->A0M:Z

    if-eqz v0, :cond_4

    .line 30064
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/jQ;->A06:I

    if-ge v1, v0, :cond_4

    .line 30065
    invoke-interface {v2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30066
    iget v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    .line 30067
    const/4 v3, 0x0

    .line 30068
    .end local v1    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    :cond_4
    :goto_0
    if-nez v3, :cond_5

    .line 30069
    const-wide/16 v0, -0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/B7;->A05:J

    .line 30070
    invoke-interface {p5}, Lcom/facebook/ads/redexgen/X/B0;->reset()V

    .line 30071
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v3

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, p3, v2}, Lcom/facebook/ads/redexgen/X/jM;->A09(Lcom/facebook/ads/redexgen/X/jL;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30072
    :try_start_2
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A05:J

    monitor-exit p0

    .line 30073
    return-void
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30074
    .local v3, "e":Ljava/lang/IllegalStateException;
    :catch_0
    :try_start_3
    invoke-direct {p0, p4, p5}, Lcom/facebook/ads/redexgen/X/B7;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V

    goto :goto_1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30075
    :catchall_0
    move-exception v2

    :try_start_4
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A05:J

    .line 30076
    .end local v0    # "release":Z
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/jQ;
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/jL;
    .end local p4    # null:Ljava/lang/String;
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/B0;
    .end local p6
    throw v2

    .line 30077
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A05:J

    .line 30078
    .restart local v0    # "release":Z
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/jQ;
    .restart local p3    # null:Lcom/facebook/ads/redexgen/X/jL;
    .restart local p4    # null:Ljava/lang/String;
    .restart local p5    # null:Lcom/facebook/ads/redexgen/X/B0;
    .restart local p6
    :cond_5
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 30079
    .end local v0    # "release":Z
    :cond_6
    :goto_2
    :try_start_5
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/jQ;->A0R:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_8

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/jQ;->A0Q:Z

    if-nez v0, :cond_8

    .line 30080
    :cond_7
    invoke-interface {p5}, Lcom/facebook/ads/redexgen/X/B0;->stop()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 30081
    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/jM;->A08(Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 30082
    invoke-interface {p5}, Lcom/facebook/ads/redexgen/X/B0;->AHb()V

    .line 30083
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/jM;->A07(Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 30084
    return-void

    .line 30085
    :catchall_2
    move-exception v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/jM;->A08(Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 30086
    invoke-interface {p5}, Lcom/facebook/ads/redexgen/X/B0;->AHb()V

    .line 30087
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B7;->A03()Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/jM;->A07(Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 30088
    throw v2
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/B7;ZLcom/facebook/ads/redexgen/X/jQ;)Z
    .locals 0

    .line 30089
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0I(ZLcom/facebook/ads/redexgen/X/jQ;)Z

    move-result p0

    return p0
.end method

.method public static A0E(Ljava/lang/String;)Z
    .locals 3

    .line 30090
    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B7;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0F(Ljava/lang/String;)Z
    .locals 0

    .line 30091
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/B7;->A0E(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jQ;)Z
    .locals 0

    .line 30092
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/B7;->A0E(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/facebook/ads/redexgen/X/jQ;->A0C:Z

    if-eqz p0, :cond_0

    .line 30093
    const/4 p0, 0x0

    return p0

    .line 30094
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic A0H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jQ;)Z
    .locals 0

    .line 30095
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jQ;)Z

    move-result p0

    return p0
.end method

.method private A0I(ZLcom/facebook/ads/redexgen/X/jQ;)Z
    .locals 5

    .line 30096
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/jQ;->A0E:Z

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/B7;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 30097
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A05:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x1388

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 30098
    const/4 v0, 0x0

    return v0

    .line 30099
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0J(ZLcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    return v0
.end method

.method public static A0J(ZLcom/facebook/ads/redexgen/X/jQ;)Z
    .locals 1

    .line 30100
    if-eqz p0, :cond_0

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/jQ;->A0N:Z

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/jQ;->A0M:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0K(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jM;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/jI;
        }
    .end annotation

    .line 30101
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/B7;->A09(Lcom/facebook/ads/redexgen/X/jM;)V

    .line 30102
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0A(Lcom/facebook/ads/redexgen/X/jQ;)V

    .line 30103
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/jQ;->A0K:Z

    if-eqz v0, :cond_1

    .line 30104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A03:Lcom/facebook/ads/redexgen/X/B6;

    invoke-static {v0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/B6;->A00(Lcom/facebook/ads/redexgen/X/B6;ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/B7;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/B7;->A07:[Ljava/lang/String;

    const-string v1, "ttyEUrXfsAwEm9Eniby4AXTGkmRMb34Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "BAFCEyHtTeugEvQpUcdazZ0OUcRhptwZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30105
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/B7;->A01(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v0

    return-object v0
.end method

.method public final A0L(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jM;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 6

    .line 30106
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/B7;->A09(Lcom/facebook/ads/redexgen/X/jM;)V

    .line 30107
    move-object v2, p2

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/jQ;->A0K:Z

    move-object v4, p5

    move-object v3, p4

    move-object v5, p6

    move v1, p1

    if-eqz v0, :cond_0

    .line 30108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B7;->A03:Lcom/facebook/ads/redexgen/X/B6;

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/B6;->A06(Lcom/facebook/ads/redexgen/X/B6;ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V

    .line 30109
    :goto_0
    return-void

    .line 30110
    :cond_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/B7;->A0C(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V

    goto :goto_0
.end method
