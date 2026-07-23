.class public final Lcom/facebook/ads/redexgen/X/N7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lorg/json/JSONObject;

.field public final A01:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1422
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yonrCQ0uoeCYCSmT5ejKLJLtf9VOp321"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NDuBqnzzJqzb1WeHMragxAHoyIt26Von"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hWL4zdMk8yywijkAtqHNVn2pZmfj34f9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9i7qyia1evnFwuCuocWilq3mxIKRQ8Gt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sdkV7vC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wcot"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/N7;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/N7;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 52798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52799
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Ljava/util/LinkedHashSet;

    .line 52800
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    .line 52801
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52802
    return-void
.end method

.method private final declared-synchronized A00(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Nf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/facebook/ads/redexgen/X/Te;
        }
    .end annotation

    monitor-enter p0

    .line 52803
    :try_start_0
    const/16 v2, 0x1d

    const/16 v1, 0xc

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 52804
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52805
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52806
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nf;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Nf;-><init>(Ljava/lang/String;)V

    .line 52807
    .local v0, "frequencyCappingData":Lcom/facebook/ads/redexgen/X/Nf;
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/N7;->A03(Lcom/facebook/ads/redexgen/X/Nf;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52808
    monitor-exit p0

    return-object v0

    .line 52809
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 52810
    .local v0, "debugLogEvent":Lcom/facebook/ads/redexgen/X/Te;
    const/4 v3, 0x5

    const/16 v2, 0x18

    const/16 v0, 0x56

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52811
    invoke-virtual {v1, p2}, Lcom/facebook/ads/redexgen/X/Te;->A07(Lorg/json/JSONObject;)V

    .line 52812
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A05(I)V

    .line 52813
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52814
    .end local v0    # "debugLogEvent":Lcom/facebook/ads/redexgen/X/Te;
    .end local v3
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N7;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/N7;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/N7;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x43t
        -0x41t
        -0x3ft
        -0x41t
        -0x32t
        -0x3t
        0x6t
        -0x5t
        0xat
        0x11t
        0x8t
        0xct
        -0x3t
        -0x4t
        -0x9t
        -0x7t
        -0x4t
        -0x9t
        0x1t
        -0x4t
        -0x9t
        0x7t
        0xat
        0x1t
        -0x1t
        0x1t
        0x6t
        -0x7t
        0x4t
        -0x13t
        -0xat
        -0x15t
        -0x6t
        0x1t
        -0x8t
        -0x4t
        -0x13t
        -0x14t
        -0x19t
        -0xft
        -0x14t
        0x19t
        0xdt
        0x24t
        0xbt
        0xft
        0xdt
        0x1ct
        0x1ct
        0x11t
        0x10t
        0xbt
        0xdt
        0x1et
        0x1et
        0xdt
        0x25t
        0xbt
        0x18t
        0x11t
        0x1at
        0x13t
        0x20t
        0x14t
        0x2ft
        0x23t
        0x23t
        0x35t
        0x32t
        0x32t
        0x25t
        0x2et
        0x23t
        0x25t
        0x33t
        -0x1t
        -0xct
        0x1t
        -0x8t
        -0x2t
        -0xdt
        0x25t
        0x1ct
        0x22t
        0x21t
        0xct
        0x1ct
        0x10t
        0x10t
        0x22t
        0x1ft
        0x1ft
        0x12t
        0x1bt
        0x10t
        0x12t
        0xct
        0x20t
        0x12t
        0x10t
        0x20t
        0x1et
        0x15t
        0x1bt
        0x1at
        0x5t
        0x16t
        0xbt
        0x18t
        0xft
        0x15t
        0xat
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Nf;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 52815
    const/16 v2, 0x4b

    const/4 v1, 0x6

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 52816
    .local v0, "cappingTimeSecs":I
    const/16 v2, 0x65

    const/16 v1, 0xb

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 52817
    .local v7, "xoutTimeSecs":I
    const/16 v2, 0x29

    const/16 v1, 0x17

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x32

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 52818
    .local v8, "maxCappedArrayLength":I
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 52819
    .local p0, "cappingCount":J
    const/16 v2, 0x40

    const/16 v1, 0xb

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    move-object v3, p1

    if-eqz v0, :cond_0

    .line 52820
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 52821
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A06(Lorg/json/JSONArray;)V

    .line 52822
    :cond_0
    const/16 v2, 0x51

    const/16 v1, 0x14

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52823
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 52824
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A04(I)V

    .line 52825
    :cond_1
    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Nf;->A05(IIJI)V

    .line 52826
    return-void
.end method


# virtual methods
.method public final A04()Ljava/lang/String;
    .locals 4

    .line 52827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52828
    .local v0, "list":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/N7;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/N7;->A04:[Ljava/lang/String;

    const-string v1, "Yd8WV87KlA8AS9IbyfadEkj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final declared-synchronized A05()Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    .line 52829
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N7;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06()V
    .locals 3

    monitor-enter p0

    .line 52830
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 52831
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52832
    .local v2, "encryptedAdId":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 52833
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N7;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N7;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52834
    monitor-exit p0

    return-void

    .line 52835
    .end local v0    # "array":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A07(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 52836
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nf;->A00()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 52837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 52838
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52839
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 52840
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N7;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 52841
    invoke-static {}, Lcom/facebook/ads/redexgen/X/So;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52842
    monitor-exit p0

    return-void

    .line 52843
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A08(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 52844
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 52845
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 52846
    .local v0, "cappedAdsJSONArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 52847
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nf;->A00()I

    move-result v0

    if-lt v2, v0, :cond_1

    goto :goto_1

    .line 52848
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 52849
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52850
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N7;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 52851
    .end local v0    # "cappedAdsJSONArray":Lorg/json/JSONArray;
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52852
    .restart local p1    # null:Ljava/lang/String;
    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized A09(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 52853
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 52854
    invoke-static {}, Lcom/facebook/ads/redexgen/X/So;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52855
    monitor-exit p0

    return-void

    .line 52856
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N7;
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0A(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/facebook/ads/redexgen/X/Te;
        }
    .end annotation

    monitor-enter p0

    .line 52857
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 52858
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    .line 52859
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52860
    .local v0, "swapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/adapters/datamodels/FrequencyCappingData;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52861
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52862
    .local v2, "encryptedId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 52863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    .line 52864
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52865
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    .line 52866
    .local v3, "frequencyCappingData":Lcom/facebook/ads/redexgen/X/Nf;
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52867
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52868
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/internal/adapters/datamodels/FrequencyCappingData;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52869
    :cond_3
    monitor-exit p0

    return-void

    .line 52870
    .end local v0    # "swapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/adapters/datamodels/FrequencyCappingData;>;"
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52871
    .restart local p2
    :cond_4
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized A0B(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 52872
    :try_start_0
    const/16 v2, 0x1d

    const/16 v1, 0xc

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 52873
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52874
    .local v0, "encryptedAdId":Ljava/lang/String;
    if-nez v2, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52875
    monitor-exit p0

    return-void

    .line 52876
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    .line 52877
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Nf;

    if-eqz v0, :cond_1

    .line 52878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Nf;

    .line 52879
    .local v1, "frequencyCappingData":Lcom/facebook/ads/redexgen/X/Nf;
    .restart local v1    # "frequencyCappingData":Lcom/facebook/ads/redexgen/X/Nf;
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/N7;->A03(Lcom/facebook/ads/redexgen/X/Nf;Lorg/json/JSONObject;)V

    .line 52880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 52881
    .end local v1    # "frequencyCappingData":Lcom/facebook/ads/redexgen/X/Nf;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N7;
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nf;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Nf;-><init>(Ljava/lang/String;)V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52882
    :goto_1
    monitor-exit p0

    return-void

    .line 52883
    .end local v0    # "encryptedAdId":Ljava/lang/String;
    .end local v1
    .end local p1    # null:Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
