.class public Lcom/facebook/ads/redexgen/X/ok;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/78;


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "Should be final"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/px;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/45;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3334
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hSbyIXWx35EcWpJ5mgpqJrodnP2zgUAj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AVKvZ0FxnTaSPhab1fIF2iZ72kGLJbya"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jBX7iJXGD8JRWgbUYtK1siSQEeTEZwCL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "i2fIBHFmzda6l4Lh5IwFm1sKJFPGPiRM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MPSpeSFedASltWD94wRgDX9C2oesADq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pjPp4ZdncQK9eqjJ4SlffLD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oopCB6d3Vy5GhBPVddSO0qnC65I08xM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WPZc57Li25BnEd3F6sy7axVnNov0V"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ok;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/45;)V
    .locals 1

    .line 103260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103261
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ok;->A04:Lcom/facebook/ads/redexgen/X/45;

    .line 103262
    sget-object v0, Lcom/facebook/ads/redexgen/X/px;->A06:Lcom/facebook/ads/redexgen/X/px;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:Lcom/facebook/ads/redexgen/X/px;

    .line 103263
    return-void
.end method


# virtual methods
.method public A00()V
    .locals 2

    .line 103264
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:Z

    if-nez v0, :cond_0

    .line 103265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A04:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A00:J

    .line 103266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:Z

    .line 103267
    :cond_0
    return-void
.end method

.method public A01()V
    .locals 2

    .line 103268
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:Z

    if-eqz v0, :cond_0

    .line 103269
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ok;->A8p()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ok;->A02(J)V

    .line 103270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:Z

    .line 103271
    :cond_0
    return-void
.end method

.method public A02(J)V
    .locals 2

    .line 103272
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ok;->A01:J

    .line 103273
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:Z

    if-eqz v0, :cond_0

    .line 103274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A04:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A00:J

    .line 103275
    :cond_0
    return-void
.end method

.method public A8m()Lcom/facebook/ads/redexgen/X/px;
    .locals 1

    .line 103276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:Lcom/facebook/ads/redexgen/X/px;

    return-object v0
.end method

.method public A8p()J
    .locals 6

    .line 103277
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ok;->A01:J

    .line 103278
    .local v0, "positionUs":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:Z

    if-eqz v0, :cond_0

    .line 103279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A04:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A00:J

    sub-long/2addr v4, v0

    .line 103280
    .local v2, "elapsedSinceBaseMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:Lcom/facebook/ads/redexgen/X/px;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/px;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    .line 103281
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 103282
    .end local v2    # "elapsedSinceBaseMs":J
    :cond_0
    :goto_0
    return-wide v2

    .line 103283
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:Lcom/facebook/ads/redexgen/X/px;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/px;->A03(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public AJd(Lcom/facebook/ads/redexgen/X/px;)V
    .locals 5

    .line 103284
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:Z

    if-eqz v0, :cond_0

    .line 103285
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ok;->A8p()J

    move-result-wide v2

    sget-object v4, Lcom/facebook/ads/redexgen/X/ok;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v4, v4, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v4, Lcom/facebook/ads/redexgen/X/ok;->A05:[Ljava/lang/String;

    const-string v1, "MyAjQeitkUrtgk2AHovxe6SLNdU2U"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    invoke-virtual {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/ok;->A02(J)V

    .line 103286
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:Lcom/facebook/ads/redexgen/X/px;

    .line 103287
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
