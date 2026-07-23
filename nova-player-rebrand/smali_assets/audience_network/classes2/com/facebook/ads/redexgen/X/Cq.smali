.class public final Lcom/facebook/ads/redexgen/X/Cq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A07:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:Landroid/net/Uri;

.field public final A05:Lcom/facebook/ads/redexgen/X/5i;

.field public final A06:Ljava/util/Map;
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


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 687
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cq;->A07:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/5i;J)V
    .locals 12

    .line 32633
    move-object v3, p3

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    .line 32634
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 32635
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-wide/from16 v6, p4

    move-wide v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/Cq;-><init>(JLcom/facebook/ads/redexgen/X/5i;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 32636
    return-void

    .line 32637
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/5i;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/ads/redexgen/X/5i;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    .line 32638
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32639
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Cq;->A03:J

    .line 32640
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Cq;->A05:Lcom/facebook/ads/redexgen/X/5i;

    .line 32641
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Cq;->A04:Landroid/net/Uri;

    .line 32642
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Cq;->A06:Ljava/util/Map;

    .line 32643
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Cq;->A01:J

    .line 32644
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/Cq;->A02:J

    .line 32645
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/Cq;->A00:J

    .line 32646
    return-void
.end method

.method public static A00()J
    .locals 2

    .line 32647
    sget-object v0, Lcom/facebook/ads/redexgen/X/Cq;->A07:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method
