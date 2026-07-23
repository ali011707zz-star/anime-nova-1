.class public final Lcom/facebook/ads/redexgen/X/mj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacTimestampSeeker"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HE;

.field public final A02:Lcom/facebook/ads/redexgen/X/HJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3261
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Qzrb2NyX11iip4M0Dun9HjrVhDBjGiaF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S4lxERGEQHczdoRlIRLlXReEKfWFWSGc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "txU8e6wljbe290bqTydjfEMDFUDvEmx5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZB68ibpDVF3DEFIIdRwQIG37zRUG2jhG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NKfzuQ6LKFKezVni40AKhLW9Qs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gUOm4cnsv29C5J2bDVOWEpGrIAhYUn7e"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xRx4EoAOCCZ90h8tA3pJ1YmFxzetviZR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6LlO7okteSZZNTbDPWq3J1SHLhykMwkf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mj;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HJ;I)V
    .locals 1

    .line 99375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mj;->A02:Lcom/facebook/ads/redexgen/X/HJ;

    .line 99377
    iput p2, p0, Lcom/facebook/ads/redexgen/X/mj;->A00:I

    .line 99378
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HE;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mj;->A01:Lcom/facebook/ads/redexgen/X/HE;

    .line 99379
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/HJ;ILcom/facebook/ads/redexgen/X/Ho;)V
    .locals 0

    .line 99380
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mj;-><init>(Lcom/facebook/ads/redexgen/X/HJ;I)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ms;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99381
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v1

    const-wide/16 v5, 0x6

    sub-long/2addr v1, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mj;->A02:Lcom/facebook/ads/redexgen/X/HJ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/mj;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mj;->A01:Lcom/facebook/ads/redexgen/X/HE;

    .line 99382
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HF;->A09(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HJ;ILcom/facebook/ads/redexgen/X/HE;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99383
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/mj;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/mj;->A03:[Ljava/lang/String;

    const-string v1, "MdA2mB0qiCN7NKRKcBY3aVGEnEzRIKP4"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Kp5wPJFyOGMB7tBJUi3Fl7WX9iQtExSk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99384
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v1

    sub-long/2addr v1, v5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 99385
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 99386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mj;->A02:Lcom/facebook/ads/redexgen/X/HJ;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A09:J

    return-wide v0

    .line 99387
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mj;->A01:Lcom/facebook/ads/redexgen/X/HE;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HE;->A00:J

    return-wide v0
.end method


# virtual methods
.method public final synthetic AFs()V
    .locals 0

    return-void
.end method

.method public final AIw(Lcom/facebook/ads/redexgen/X/ms;J)Lcom/facebook/ads/redexgen/X/Gz;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99388
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v6

    .line 99389
    .local v0, "searchPosition":J
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mj;->A00(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v2

    .line 99390
    .local v2, "leftFrameFirstSampleNumber":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v9

    .line 99391
    .local v4, "leftFramePosition":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mj;->A02:Lcom/facebook/ads/redexgen/X/HJ;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/HJ;->A06:I

    .line 99392
    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 99393
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 99394
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mj;->A00(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v0

    .line 99395
    .local v6, "rightFrameFirstSampleNumber":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v4

    .line 99396
    .local v8, "rightFramePosition":J
    cmp-long v8, v2, p2

    if-gtz v8, :cond_0

    cmp-long v8, v0, p2

    if-lez v8, :cond_0

    .line 99397
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/Gz;->A03(J)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    .line 99398
    :cond_0
    cmp-long v8, v0, p2

    if-gtz v8, :cond_1

    .line 99399
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/Gz;->A05(JJ)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    .line 99400
    :cond_1
    invoke-static {v2, v3, v6, v7}, Lcom/facebook/ads/redexgen/X/Gz;->A04(JJ)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0
.end method
