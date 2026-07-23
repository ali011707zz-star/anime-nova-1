.class public final Lcom/facebook/ads/redexgen/X/AF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pF;


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/5W;

.field public final A03:Lcom/facebook/ads/redexgen/X/pF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 617
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wbGAhFLyG1O1BXRQkdAsuvRwjcG0JvdY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WIGHUXkmdMwjKtYrGQHAEajnCcLVhsJc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "71g9TI5vzncmEyYDsqHRZQ5IIDSVhuCU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Of7gEliA8dohBLU5UePsnNPr9luYUKIX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ip7oB5coOYYSe2wQ3nHh7WYhGK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mFyxGR7YA7Uh54mquru9LT9AFg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iYrL5ZFnNwboLBDSkDK7D5rnh7HwI2GN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DEMvAgZEfGNSxO1Scy7Mz579azioI4xU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AF;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5W;)V
    .locals 1

    .line 28913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28914
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pF;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A03:Lcom/facebook/ads/redexgen/X/pF;

    .line 28915
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5W;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A02:Lcom/facebook/ads/redexgen/X/5W;

    .line 28916
    return-void
.end method


# virtual methods
.method public final A43(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 1

    .line 28917
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/pF;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 28919
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

    .line 28920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A8t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 28921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A9P()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/pF;->AGi(Lcom/facebook/ads/redexgen/X/5i;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    .line 28923
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 28924
    return-wide v3

    .line 28925
    :cond_0
    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/AF;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AF;->A04:[Ljava/lang/String;

    const-string v1, "8JYiy7Q3QOgUU9IJtNo1oEeVZYLkhQA2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "C3hXJiAszWGMEEgz1C8EzdfpsF4hhGij"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 28926
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/5i;->A05(JJ)Lcom/facebook/ads/redexgen/X/5i;

    move-result-object p1

    .line 28927
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A01:Z

    .line 28928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A02:Lcom/facebook/ads/redexgen/X/5W;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/5W;->AGk(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 28929
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    return-wide v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28930
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28931
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A01:Z

    if-eqz v0, :cond_0

    .line 28932
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/AF;->A01:Z

    .line 28933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A02:Lcom/facebook/ads/redexgen/X/5W;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5W;->close()V

    .line 28934
    :cond_0
    return-void

    .line 28935
    :catchall_0
    move-exception v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A01:Z

    if-eqz v0, :cond_1

    .line 28936
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/AF;->A01:Z

    .line 28937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A02:Lcom/facebook/ads/redexgen/X/5W;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5W;->close()V

    .line 28938
    :cond_1
    throw v1
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28939
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 28940
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/AF;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/AF;->A04:[Ljava/lang/String;

    const-string v1, "tTmOA5hODgmGBNxF0mS11dvWTNwifcB6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mpSZqupnUd3dBB1VIyplsxMvqiIWybTS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 28941
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A03:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v5

    .line 28942
    .local v0, "bytesRead":I
    if-lez v5, :cond_2

    .line 28943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AF;->A02:Lcom/facebook/ads/redexgen/X/5W;

    invoke-interface {v0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/5W;->write([BII)V

    .line 28944
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 28945
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    int-to-long v0, v5

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:J

    .line 28946
    :cond_2
    return v5
.end method
