.class public final Lcom/facebook/ads/redexgen/X/AG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pF;


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/pF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 618
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "DnWOFrWNtrruVDlZPcn7mSzqB1u3fyA1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4khCAmOyD7V9Z9fo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Y1he90jrlOSSnjRb2RN33xbae"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sN3uyyiAo7qwm0FA39xGDer"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MIilbOvYRfmfRo2RH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W4KUp4d37G5W3qTHHFYFOJnsXzg3Y9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7BjcD7lz4UoePoP5n6bqbpOg1qjeNk3c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AG;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pF;)V
    .locals 1

    .line 28947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28948
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pF;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/pF;

    .line 28949
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A01:Landroid/net/Uri;

    .line 28950
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Ljava/util/Map;

    .line 28951
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 28952
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    return-wide v0
.end method

.method public final A01()Landroid/net/Uri;
    .locals 1

    .line 28953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final A02()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Ljava/util/Map;

    return-object v0
.end method

.method public final A43(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 1

    .line 28955
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/pF;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 28957
    return-void
.end method

.method public final A8t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A8t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 28959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A9P()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28960
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A01:Landroid/net/Uri;

    .line 28961
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Ljava/util/Map;

    .line 28962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/pF;->AGi(Lcom/facebook/ads/redexgen/X/5i;)J

    move-result-wide v1

    .line 28963
    .local v0, "availableBytes":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AG;->A9P()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A01:Landroid/net/Uri;

    .line 28964
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AG;->A8t()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Ljava/util/Map;

    .line 28965
    return-wide v1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->close()V

    .line 28967
    return-void
.end method

.method public final read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v7

    .line 28969
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 28970
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    int-to-long v2, v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/AG;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v6, v0

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v6, Lcom/facebook/ads/redexgen/X/AG;->A04:[Ljava/lang/String;

    const-string v1, "l8Xa62wp4MYShhMptlDz52jvD"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const-string v1, "PdriuKYg1yn0hjm9"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    .line 28971
    :cond_0
    return v7

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
