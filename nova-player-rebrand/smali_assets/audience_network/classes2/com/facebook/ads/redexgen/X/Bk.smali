.class public final Lcom/facebook/ads/redexgen/X/Bk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download$FailureReason;,
        Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download$State;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/C6;

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V
    .locals 12

    .line 31162
    new-instance v11, Lcom/facebook/ads/redexgen/X/C6;

    invoke-direct {v11}, Lcom/facebook/ads/redexgen/X/C6;-><init>()V

    move-object v0, p0

    move/from16 v10, p10

    move/from16 v9, p9

    move-wide/from16 v5, p5

    move-wide v3, p3

    move-wide/from16 v7, p7

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJIILcom/facebook/ads/redexgen/X/C6;)V

    .line 31163
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJIILcom/facebook/ads/redexgen/X/C6;)V
    .locals 3

    .line 31164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31165
    invoke-static {p11}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31166
    const/4 v2, 0x1

    if-nez p10, :cond_4

    const/4 v1, 0x1

    :goto_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 31167
    if-eqz p9, :cond_0

    .line 31168
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    :goto_3
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 31169
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    .line 31170
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    .line 31171
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    .line 31172
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    .line 31173
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    .line 31174
    iput p9, p0, Lcom/facebook/ads/redexgen/X/Bk;->A03:I

    .line 31175
    iput p10, p0, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    .line 31176
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    .line 31177
    return-void

    .line 31178
    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    .line 31179
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00()F
    .locals 1

    .line 31180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/C6;->A00:F

    return v0
.end method

.method public final A01()J
    .locals 2

    .line 31181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/C6;->A01:J

    return-wide v0
.end method

.method public final A02()Z
    .locals 2

    .line 31182
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
