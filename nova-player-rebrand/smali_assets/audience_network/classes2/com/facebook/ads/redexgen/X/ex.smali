.class public final Lcom/facebook/ads/redexgen/X/ex;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/pF;

.field public final A03:Landroid/net/Uri;

.field public final A04:Lcom/facebook/ads/redexgen/X/5Y;

.field public final A05:Lcom/facebook/ads/redexgen/X/ge;

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/5Y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82010
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 82011
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ex;->A05:Lcom/facebook/ads/redexgen/X/ge;

    .line 82012
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ex;->A04:Lcom/facebook/ads/redexgen/X/5Y;

    .line 82013
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ex;->A03:Landroid/net/Uri;

    .line 82014
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ex;->A05:Lcom/facebook/ads/redexgen/X/ge;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A03:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A09(Lcom/facebook/ads/redexgen/X/ge;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A06:Ljava/lang/String;

    .line 82015
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ex;->A00(I)V

    .line 82016
    return-void
.end method

.method private A00(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A02:Lcom/facebook/ads/redexgen/X/pF;

    if-eqz v0, :cond_0

    .line 82018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->close()V

    .line 82019
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A04:Lcom/facebook/ads/redexgen/X/5Y;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5Y;->A5I()Lcom/facebook/ads/redexgen/X/pF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A02:Lcom/facebook/ads/redexgen/X/pF;

    .line 82020
    new-instance v1, Lcom/facebook/ads/redexgen/X/5i;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ex;->A03:Landroid/net/Uri;

    int-to-long v3, p1

    const-wide/16 v5, -0x1

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/ex;->A06:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 82021
    .local v0, "dataSpec":Lcom/facebook/ads/redexgen/X/5i;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/pF;->AGi(Lcom/facebook/ads/redexgen/X/5i;)J

    move-result-wide v1

    long-to-int v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A01:J

    .line 82022
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 82023
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ex;->A01:J

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A00:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->close()V

    .line 82025
    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82026
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 82027
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ex;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v1

    .line 82029
    .local v0, "read":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A00:I

    .line 82030
    return v1
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82031
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ex;->A01:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 82032
    .local v0, "available":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 82033
    return-wide v1

    .line 82034
    .local v2, "skipped":J
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 82035
    move-wide p1, v3

    .line 82036
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A00:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A00:I

    .line 82037
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ex;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ex;->A00(I)V

    .line 82038
    return-wide p1
.end method
