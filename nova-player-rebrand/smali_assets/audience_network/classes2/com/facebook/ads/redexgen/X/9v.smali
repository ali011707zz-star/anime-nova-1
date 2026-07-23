.class public final Lcom/facebook/ads/redexgen/X/9v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/np;
.implements Lcom/facebook/ads/redexgen/X/nq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/nt;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/nq;

.field public A04:[Lcom/facebook/ads/redexgen/X/nt;

.field public final A05:Lcom/facebook/ads/redexgen/X/np;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 594
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JXRw8dEnvO1Lr4g7cFUS0dvQrSj2gCrD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hvHNuBxl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xmWilmV3z2eIIj1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UUtHfwhImwRJiupXWlBcpFq10hKf2hZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Gjwbiw3zcCnfnivX0C6Z4KLegMayRhyW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PFLAFIzQgEofbdrT2htWxpP7W2gVOOgi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "405rypbMY6P"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HWuA8Rz9jBHRgd5bymvhijPSyV36G6mN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/np;ZJJ)V
    .locals 2

    .line 26348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26349
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    .line 26350
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/nt;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    .line 26351
    if-eqz p2, :cond_0

    move-wide v0, p3

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:J

    .line 26352
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    .line 26353
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    .line 26354
    return-void

    .line 26355
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private A00(JLcom/facebook/ads/redexgen/X/7u;)Lcom/facebook/ads/redexgen/X/7u;
    .locals 14

    .line 26356
    move-object/from16 v2, p3

    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/7u;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    sub-long v7, p1, v0

    .line 26357
    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/5C;->A0T(JJJ)J

    move-result-wide v0

    .line 26358
    .local v0, "toleranceBeforeUs":J
    iget-wide v8, v2, Lcom/facebook/ads/redexgen/X/7u;->A00:J

    .line 26359
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v5, v3, v6

    if-nez v5, :cond_0

    const-wide v12, 0x7fffffffffffffffL

    .line 26360
    :goto_0
    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/5C;->A0T(JJJ)J

    move-result-wide v4

    .line 26361
    .local v2, "toleranceAfterUs":J
    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/7u;->A01:J

    cmp-long v3, v0, v6

    if-nez v3, :cond_2

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/7u;->A00:J

    sget-object v8, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v3, v8, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v3, 0xb

    if-eq v8, v3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26362
    :cond_0
    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    sub-long/2addr v12, p1

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const-string v8, "SySHx2FlEzism2SEaRZKk1Ki9OIwKCgL"

    const/4 v3, 0x0

    aput-object v8, v9, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 26363
    return-object v2

    .line 26364
    :cond_2
    new-instance v2, Lcom/facebook/ads/redexgen/X/7u;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/7u;-><init>(JJ)V

    return-object v2
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/np;)V
    .locals 1

    .line 26365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A03:Lcom/facebook/ads/redexgen/X/nq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nq;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/DW;->ADV(Lcom/facebook/ads/redexgen/X/DX;)V

    .line 26366
    return-void
.end method

.method public static A02(J[Lcom/facebook/ads/redexgen/X/nE;)Z
    .locals 5

    .line 26367
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    cmp-long v0, p0, v1

    if-eqz v0, :cond_1

    .line 26368
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 26369
    .local v3, "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    if-eqz v0, :cond_0

    .line 26370
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nE;->A92()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 26371
    .local v4, "selectedFormat":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A0G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26372
    const/4 v0, 0x1

    return v0

    .line 26373
    .end local v3    # "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    .end local v4    # "selectedFormat":Lcom/facebook/ads/redexgen/X/qI;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26374
    :cond_1
    return v4
.end method


# virtual methods
.method public final A03()Z
    .locals 5

    .line 26375
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A4s(J)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D19760981 for cancel request"
    .end annotation

    .line 26376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DX;->A4s(J)V

    .line 26377
    return-void
.end method

.method public final A5C(J)Z
    .locals 1

    .line 26378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/np;->A5C(J)Z

    move-result v0

    return v0
.end method

.method public final A60(JZ)V
    .locals 1

    .line 26379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/np;->A60(JZ)V

    .line 26380
    return-void
.end method

.method public final A6r(JLcom/facebook/ads/redexgen/X/7u;)J
    .locals 3

    .line 26381
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 26382
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    return-wide v0

    .line 26383
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9v;->A00(JLcom/facebook/ads/redexgen/X/7u;)Lcom/facebook/ads/redexgen/X/7u;

    move-result-object v1

    .line 26384
    .local v0, "clippedSeekParameters":Lcom/facebook/ads/redexgen/X/7u;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/np;->A6r(JLcom/facebook/ads/redexgen/X/7u;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A76(J)J
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D9949576 for unstall buffer"
    .end annotation

    .line 26385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DX;->A76(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A78()J
    .locals 7

    .line 26386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/np;->A78()J

    move-result-wide v5

    .line 26387
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 26388
    :cond_0
    return-wide v3

    .line 26389
    :cond_1
    return-wide v5
.end method

.method public final A8b()J
    .locals 8

    .line 26390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/np;->A8b()J

    move-result-wide v6

    .line 26391
    .local v0, "nextLoadPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v3, v0, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const-string v1, "QBPPyRyowan8CCGBQiXIHMf03VOUOCSC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v0, v6, v1

    if-ltz v0, :cond_2

    .line 26392
    :cond_1
    return-wide v4

    .line 26393
    :cond_2
    return-wide v6
.end method

.method public final A9M()Lcom/facebook/ads/redexgen/X/nW;
    .locals 1

    .line 26394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/np;->A9M()Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v0

    return-object v0
.end method

.method public final ACS()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26395
    const/4 v0, 0x0

    if-nez v0, :cond_0

    .line 26396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/np;->ACS()V

    .line 26397
    return-void

    .line 26398
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic ADV(Lcom/facebook/ads/redexgen/X/DX;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26399
    check-cast p1, Lcom/facebook/ads/redexgen/X/np;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9v;->A01(Lcom/facebook/ads/redexgen/X/np;)V

    return-void
.end method

.method public final AFS(Lcom/facebook/ads/redexgen/X/np;)V
    .locals 1

    .line 26400
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 26401
    return-void

    .line 26402
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A03:Lcom/facebook/ads/redexgen/X/nq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nq;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/nq;->AFS(Lcom/facebook/ads/redexgen/X/np;)V

    .line 26403
    return-void
.end method

.method public final AH5(Lcom/facebook/ads/redexgen/X/nq;J)V
    .locals 1

    .line 26404
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9v;->A03:Lcom/facebook/ads/redexgen/X/nq;

    .line 26405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/np;->AH5(Lcom/facebook/ads/redexgen/X/nq;J)V

    .line 26406
    return-void
.end method

.method public final AHQ()J
    .locals 8

    .line 26407
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A03()Z

    move-result v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 26408
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:J

    .line 26409
    .local v3, "initialDiscontinuityUs":J
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:J

    .line 26410
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->AHQ()J

    move-result-wide v1

    .line 26411
    .local v5, "childDiscontinuityUs":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    :goto_0
    return-wide v1

    :cond_0
    move-wide v1, v5

    goto :goto_0

    .line 26412
    .end local v3    # "initialDiscontinuityUs":J
    .end local v5    # "childDiscontinuityUs":J
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const-string v1, "ABWUoGiNBoa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/np;->AHQ()J

    move-result-wide v1

    .line 26413
    .local v3, "discontinuityUs":J
    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    .line 26414
    return-wide v3

    .line 26415
    :cond_2
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    const/4 v7, 0x1

    cmp-long v0, v1, v3

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 26416
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v0, v1, v3

    if-gtz v0, :cond_4

    :cond_3
    :goto_2
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 26417
    return-wide v1

    .line 26418
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 26419
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AHW(J)V
    .locals 1

    .line 26420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/np;->AHW(J)V

    .line 26421
    return-void
.end method

.method public final AJ8(JZ)J
    .locals 8
    .param p1    # J
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 26422
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:J

    .line 26423
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    array-length v2, v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 26424
    .local v4, "sampleStream":Lcom/facebook/ads/redexgen/X/nt;
    if-eqz v0, :cond_0

    .line 26425
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nt;->A00()V

    .line 26426
    .end local v4    # "sampleStream":Lcom/facebook/ads/redexgen/X/nt;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26427
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/np;->AJ8(JZ)J

    move-result-wide v5

    .line 26428
    .local v0, "seekUs":J
    cmp-long v0, v5, p1

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v0, v5, v1

    if-gtz v0, :cond_3

    :cond_2
    const/4 v7, 0x1

    :cond_3
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 26429
    return-wide v5
.end method

.method public final AJ9([Lcom/facebook/ads/redexgen/X/nE;[Z[Lcom/facebook/ads/redexgen/X/DT;[ZJ)J
    .locals 17

    .line 26430
    move-object/from16 v3, p3

    array-length v0, v3

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/nt;

    move-object/from16 v4, p0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    .line 26431
    array-length v0, v3

    new-array v13, v0, [Lcom/facebook/ads/redexgen/X/DT;

    .line 26432
    .local v0, "childStreams":[Lcom/facebook/ads/redexgen/X/DT;
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, v3

    const/4 v2, 0x0

    if-ge v5, v0, :cond_1

    .line 26433
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    aget-object v0, v3, v5

    check-cast v0, Lcom/facebook/ads/redexgen/X/nt;

    aput-object v0, v1, v5

    .line 26434
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    aget-object v0, v0, v5

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    aget-object v0, v0, v5

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/nt;->A01:Lcom/facebook/ads/redexgen/X/DT;

    :cond_0
    aput-object v2, v13, v5

    .line 26435
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 26436
    .end local v1    # "i":I
    :cond_1
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    .line 26437
    move-wide/from16 v15, p5

    move-object/from16 v14, p4

    move-object/from16 v12, p2

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/np;->AJ9([Lcom/facebook/ads/redexgen/X/nE;[Z[Lcom/facebook/ads/redexgen/X/DT;[ZJ)J

    move-result-wide v9

    .line 26438
    .local v1, "enablePositionUs":J
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9v;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    cmp-long v5, v15, v0

    if-nez v5, :cond_2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    sget-object v7, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v6, v7, v5

    const/4 v5, 0x3

    aget-object v7, v7, v5

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v6, v5, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26439
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 26440
    :cond_3
    sget-object v7, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const-string v6, "en1LL2zHQFU7eKPWWtw7tqDicZnmZ9l5"

    const/4 v5, 0x7

    aput-object v6, v7, v5

    const-string v6, "t66o2OzEfyctLQHjRBlZ897u0IFgDWGZ"

    const/4 v5, 0x5

    aput-object v6, v7, v5

    invoke-static {v0, v1, v11}, Lcom/facebook/ads/redexgen/X/9v;->A02(J[Lcom/facebook/ads/redexgen/X/nE;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26441
    move-wide v0, v9

    .line 26442
    :goto_2
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A02:J

    .line 26443
    cmp-long v0, v9, v15

    if-eqz v0, :cond_4

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    cmp-long v0, v9, v5

    if-ltz v0, :cond_b

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v0, v9, v5

    if-gtz v0, :cond_b

    :cond_4
    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 26444
    const/4 v6, 0x0

    .local v3, "i":I
    :goto_4
    array-length v7, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_a

    sget-object v5, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const-string v1, "DNi9UWzwfCWyYPkB4uGGg0YkPCShAQe6"

    const/4 v0, 0x7

    aput-object v1, v5, v0

    const-string v1, "fAixbEz1F3G47KA6JLUGcT01MO1ZofiJ"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    if-ge v6, v7, :cond_c

    .line 26445
    :goto_5
    aget-object v0, v13, v6

    if-nez v0, :cond_5

    .line 26446
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    sget-object v5, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v5, v5, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    goto :goto_1

    .line 26447
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    aget-object v0, v0, v6

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    aget-object v0, v0, v6

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/nt;->A01:Lcom/facebook/ads/redexgen/X/DT;

    aget-object v7, v13, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const-string v1, "cYzDBwspbZ8a8DM9Dz10VjvDatAoG4Oi"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    const-string v1, "WIkG6wjldaaFwlHYCP34A8xHiCA5NCte"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    if-eq v8, v7, :cond_9

    .line 26448
    :cond_6
    :goto_6
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    aget-object v1, v13, v6

    new-instance v0, Lcom/facebook/ads/redexgen/X/nt;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/nt;-><init>(Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/DT;)V

    aput-object v0, v5, v6

    goto :goto_7

    :cond_7
    if-eq v8, v7, :cond_9

    goto :goto_6

    .line 26449
    :cond_8
    sget-object v5, Lcom/facebook/ads/redexgen/X/9v;->A06:[Ljava/lang/String;

    const-string v1, "ocXNdzhjsFv"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    aput-object v2, v7, v6

    .line 26450
    :cond_9
    :goto_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9v;->A04:[Lcom/facebook/ads/redexgen/X/nt;

    aget-object v0, v0, v6

    aput-object v0, v3, v6

    .line 26451
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    if-ge v6, v7, :cond_c

    goto :goto_5

    .line 26452
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 26453
    .end local v3    # "i":I
    :cond_c
    return-wide v9
.end method

.method public final AJc(Z)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D19875605 for error load during pause"
    .end annotation

    .line 26454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DX;->AJc(Z)V

    .line 26455
    return-void
.end method

.method public final AKb(B)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D13267633 for lower priority during pause"
    .end annotation

    .line 26456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DX;->AKb(B)V

    .line 26457
    return-void
.end method
