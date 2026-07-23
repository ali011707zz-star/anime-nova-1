.class public final Lcom/facebook/ads/redexgen/X/C2;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/C5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalHandler"
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/os/Handler;

.field public final A08:Landroid/os/HandlerThread;

.field public final A09:Lcom/facebook/ads/redexgen/X/CJ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/nw;

.field public final A0B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Bk;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/o0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 670
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iNmXvBj9FTihCrbZiC4S7zhCL1s9H33W"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EvGedAo1NbwIZrU2eJLjABwCKULHNO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OhLMnivBPD1ct3YE1XOZQ5ppblACA0SV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Bbpc8NZfeBPLrlsLcOoRpsaFZoo07Ukk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cYMMpvUaIb0CtoOD5hU2j4Ih7c76pz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QlCwnx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3GDIv0eUOBpBneHy6OJWPXV1MBWevv42"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cGd21R9dzjO1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/C2;->A0D()V

    return-void
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Lcom/facebook/ads/redexgen/X/nw;Lcom/facebook/ads/redexgen/X/CJ;Landroid/os/Handler;IIZ)V
    .locals 1

    .line 31378
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31379
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C2;->A08:Landroid/os/HandlerThread;

    .line 31380
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    .line 31381
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/C2;->A09:Lcom/facebook/ads/redexgen/X/CJ;

    .line 31382
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/C2;->A07:Landroid/os/Handler;

    .line 31383
    iput p5, p0, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    .line 31384
    iput p6, p0, Lcom/facebook/ads/redexgen/X/C2;->A03:I

    .line 31385
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/C2;->A05:Z

    .line 31386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    .line 31387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0C:Ljava/util/HashMap;

    .line 31388
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Bk;Lcom/facebook/ads/redexgen/X/Bk;)I
    .locals 3

    .line 31389
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    invoke-static {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A08(JJ)I

    move-result v0

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Bk;Lcom/facebook/ads/redexgen/X/Bk;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/C2;->A00(Lcom/facebook/ads/redexgen/X/Bk;Lcom/facebook/ads/redexgen/X/Bk;)I

    move-result p0

    return p0
.end method

.method private A02(Ljava/lang/String;)I
    .locals 5

    .line 31390
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 31391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bk;

    .line 31392
    .local v1, "download":Lcom/facebook/ads/redexgen/X/Bk;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const-string v1, "id4WW5MNYn317aHfBDbhwYGK6MIHb4Bm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31393
    return v4

    .line 31394
    .end local v1    # "download":Lcom/facebook/ads/redexgen/X/Bk;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31395
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/Bk;
    .locals 8

    .line 31396
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v0, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    iget v1, p1, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 31397
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C2;->A02(Ljava/lang/String;)I

    move-result v6

    .line 31398
    .local v0, "changedIndex":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    .line 31399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31400
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/C1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/C1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 31401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31402
    :cond_1
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bk;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 31403
    .local v1, "needsSort":Z
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31404
    if-eqz v7, :cond_3

    .line 31405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/C1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/C1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 31406
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 31407
    .end local v1    # "needsSort":Z
    :cond_3
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nw;->AHF(Lcom/facebook/ads/redexgen/X/Bk;)V

    goto :goto_3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31408
    :catch_0
    move-exception v4

    .line 31409
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdf

    const/16 v1, 0x17

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31410
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/C0;

    invoke-direct {v2, p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/C0;-><init>(Lcom/facebook/ads/redexgen/X/Bk;ZLjava/util/List;Ljava/lang/Exception;)V

    .line 31411
    .local v1, "update":Lcom/facebook/ads/redexgen/X/C0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A07:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31412
    return-object p1
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;
    .locals 1

    .line 31413
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 31414
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/C2;->A05(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C2;->A03(Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    return-object v0

    .line 31415
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;
    .locals 11

    .line 31416
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bk;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    .line 31417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    const/4 v10, 0x0

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    move v9, p2

    move v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJIILcom/facebook/ads/redexgen/X/C6;)V

    .line 31418
    return-object v0
.end method

.method private A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Bk;
    .locals 5

    .line 31419
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C2;->A02(Ljava/lang/String;)I

    move-result v1

    .line 31420
    .local v0, "index":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 31421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bk;

    return-object v0

    .line 31422
    :cond_0
    if-eqz p2, :cond_1

    .line 31423
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Bx;->A7q(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31424
    :catch_0
    move-exception v4

    .line 31425
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    const/16 v1, 0x19

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31426
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/o0;Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/o0;
    .locals 11

    .line 31427
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 31428
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A03(Lcom/facebook/ads/redexgen/X/o0;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 31429
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/o0;->A05(Z)V

    .line 31430
    return-object p1

    .line 31431
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0U()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    if-lt v1, v0, :cond_2

    .line 31432
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 31433
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0, v2}, Lcom/facebook/ads/redexgen/X/C2;->A04(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v2

    .line 31434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A09:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CJ;->A5M(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)Lcom/facebook/ads/redexgen/X/CH;

    move-result-object v5

    .line 31435
    .local v0, "downloader":Lcom/facebook/ads/redexgen/X/CH;
    new-instance v3, Lcom/facebook/ads/redexgen/X/o0;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/C2;->A03:I

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v9, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/o0;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/C6;ZILcom/facebook/ads/redexgen/X/C2;Lcom/facebook/ads/redexgen/X/Bz;)V

    .line 31436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0C:Ljava/util/HashMap;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31437
    iget v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A01:I

    if-nez v1, :cond_3

    .line 31438
    const/16 v2, 0xb

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/C2;->sendEmptyMessageDelayed(IJ)Z

    .line 31439
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/o0;->start()V

    .line 31440
    return-object v3
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/C2;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09()V
    .locals 6

    .line 31441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0C:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/o0;

    .line 31442
    .local v1, "task":Lcom/facebook/ads/redexgen/X/o0;
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/o0;->A05(Z)V

    .line 31443
    .end local v1    # "task":Lcom/facebook/ads/redexgen/X/o0;
    goto :goto_0

    .line 31444
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nw;->AJO()V

    goto :goto_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31445
    :catch_0
    move-exception v4

    .line 31446
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdf

    const/16 v1, 0x17

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31447
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A08:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 31449
    monitor-enter p0

    .line 31450
    :try_start_1
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/C2;->A00:Z

    .line 31451
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 31452
    monitor-exit p0

    .line 31453
    return-void

    .line 31454
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private A0A()V
    .locals 10

    .line 31455
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 31456
    .local v1, "terminalDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    const/4 v1, 0x4

    const/4 v0, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 31457
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Bx;->A7r([I)Lcom/facebook/ads/redexgen/X/o4;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31458
    .local v2, "cursor":Lcom/facebook/ads/redexgen/X/Bo;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/o4;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31459
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/o4;->A00()Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31460
    :cond_0
    if-eqz v2, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/o4;->close()V

    goto :goto_2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 31461
    .restart local v2    # "cursor":Lcom/facebook/ads/redexgen/X/Bo;
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/o4;->close()V

    goto :goto_1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "terminalDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 31462
    .end local v2    # "cursor":Lcom/facebook/ads/redexgen/X/Bo;
    .restart local v1    # "terminalDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    .local v2, "e":Ljava/io/IOException;
    :catch_0
    const/16 v2, 0x2a

    const/16 v1, 0x19

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 31463
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x5

    const/4 v3, 0x0

    if-ge v2, v0, :cond_3

    .line 31464
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    .line 31465
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bk;

    .line 31466
    invoke-static {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/C2;->A05(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    .line 31467
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31468
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 31469
    .end local v2    # "i":I
    :cond_3
    const/4 v5, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const-string v1, "XqOejHHacjjZLx98zpLnY1LZJhfsrk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "zG4BgrMO4aUj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v5, v8, :cond_6

    .line 31470
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    .line 31471
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Bk;

    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 31472
    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const-string v1, "KT3y83B5rUupwCjllTydcOADIPFLf4ae"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v9, v6, v3}, Lcom/facebook/ads/redexgen/X/C2;->A05(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    .line 31473
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31474
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 31475
    .end local v2    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/C1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/C1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 31476
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nw;->AJp()V

    goto :goto_5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 31477
    :catch_1
    move-exception v5

    .line 31478
    .local v2, "e":Ljava/io/IOException;
    const/16 v2, 0xdf

    const/16 v1, 0x17

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31479
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31480
    .local v0, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 31481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    .line 31482
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Bk;

    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/C0;

    invoke-direct {v2, v1, v3, v5, v0}, Lcom/facebook/ads/redexgen/X/C0;-><init>(Lcom/facebook/ads/redexgen/X/Bk;ZLjava/util/List;Ljava/lang/Exception;)V

    .line 31483
    .local v3, "update":Lcom/facebook/ads/redexgen/X/C0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A07:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31484
    .end local v3    # "update":Lcom/facebook/ads/redexgen/X/C0;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 31485
    .end local v2    # "i":I
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31486
    return-void
.end method

.method private A0B()V
    .locals 5

    .line 31487
    const/4 v4, 0x0

    .line 31488
    .local v0, "accumulatingDownloadTaskCount":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 31489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Bk;

    .line 31490
    .local v2, "download":Lcom/facebook/ads/redexgen/X/Bk;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0C:Ljava/util/HashMap;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/o0;

    .line 31491
    .local v3, "activeTask":Lcom/facebook/ads/redexgen/X/o0;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    packed-switch v0, :pswitch_data_0

    .line 31492
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 31493
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/C2;->A0O(Lcom/facebook/ads/redexgen/X/o0;Lcom/facebook/ads/redexgen/X/Bk;)V

    .line 31494
    goto :goto_1

    .line 31495
    :pswitch_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31496
    invoke-direct {p0, v1, v2, v4}, Lcom/facebook/ads/redexgen/X/C2;->A0P(Lcom/facebook/ads/redexgen/X/o0;Lcom/facebook/ads/redexgen/X/Bk;I)V

    .line 31497
    goto :goto_1

    .line 31498
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/C2;->A0M(Lcom/facebook/ads/redexgen/X/o0;)V

    .line 31499
    goto :goto_1

    .line 31500
    :pswitch_4
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/C2;->A07(Lcom/facebook/ads/redexgen/X/o0;Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/o0;

    move-result-object v1

    .line 31501
    :goto_1
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/o0;->A03(Lcom/facebook/ads/redexgen/X/o0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31502
    add-int/lit8 v4, v4, 0x1

    .line 31503
    .end local v2    # "download":Lcom/facebook/ads/redexgen/X/Bk;
    .end local v3    # "activeTask":Lcom/facebook/ads/redexgen/X/o0;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31504
    .end local v1    # "i":I
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private A0C()V
    .locals 6

    .line 31505
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 31506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Bk;

    .line 31507
    .local v1, "download":Lcom/facebook/ads/redexgen/X/Bk;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 31508
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/nw;->AHF(Lcom/facebook/ads/redexgen/X/Bk;)V

    goto :goto_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31509
    :catch_0
    move-exception v4

    .line 31510
    .local v2, "e":Ljava/io/IOException;
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdf

    const/16 v1, 0x17

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31511
    .end local v1    # "download":Lcom/facebook/ads/redexgen/X/Bk;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 31512
    .end local v0    # "i":I
    :cond_1
    const/16 v2, 0xb

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/C2;->sendEmptyMessageDelayed(IJ)Z

    .line 31513
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x103

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/C2;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x2at
        -0x36t
        -0x9t
        0x22t
        0x2at
        0x21t
        0x1ft
        0x22t
        0x14t
        0x17t
        0x0t
        0x14t
        0x21t
        0x14t
        0x1at
        0x18t
        0x25t
        -0x3dt
        -0x22t
        -0x1at
        -0x17t
        -0x1et
        -0x1ft
        -0x63t
        -0xft
        -0x14t
        -0x63t
        -0x17t
        -0x14t
        -0x22t
        -0x1ft
        -0x63t
        -0x1ft
        -0x14t
        -0xct
        -0x15t
        -0x17t
        -0x14t
        -0x22t
        -0x1ft
        -0x49t
        -0x63t
        -0x6dt
        -0x52t
        -0x4at
        -0x47t
        -0x4et
        -0x4ft
        0x6dt
        -0x3ft
        -0x44t
        0x6dt
        -0x47t
        -0x44t
        -0x52t
        -0x4ft
        0x6dt
        -0x4ft
        -0x44t
        -0x3ct
        -0x45t
        -0x47t
        -0x44t
        -0x52t
        -0x4ft
        -0x40t
        0x7bt
        -0x63t
        -0x48t
        -0x40t
        -0x3dt
        -0x44t
        -0x45t
        0x77t
        -0x35t
        -0x3at
        0x77t
        -0x3dt
        -0x3at
        -0x48t
        -0x45t
        0x77t
        -0x40t
        -0x3bt
        -0x45t
        -0x44t
        -0x31t
        -0x7bt
        -0x57t
        -0x3ct
        -0x34t
        -0x31t
        -0x38t
        -0x39t
        -0x7dt
        -0x29t
        -0x2et
        -0x7dt
        -0x2bt
        -0x38t
        -0x30t
        -0x2et
        -0x27t
        -0x38t
        -0x7dt
        -0x37t
        -0x2bt
        -0x2et
        -0x30t
        -0x7dt
        -0x39t
        -0x3ct
        -0x29t
        -0x3ct
        -0x3bt
        -0x3ct
        -0x2at
        -0x38t
        -0x6dt
        -0x52t
        -0x4at
        -0x47t
        -0x4et
        -0x4ft
        0x6dt
        -0x3ft
        -0x44t
        0x6dt
        -0x41t
        -0x4et
        -0x46t
        -0x44t
        -0x3dt
        -0x4et
        0x6dt
        -0x45t
        -0x44t
        -0x45t
        -0x4et
        -0x3bt
        -0x4at
        -0x40t
        -0x3ft
        -0x4et
        -0x45t
        -0x3ft
        0x6dt
        -0x4ft
        -0x44t
        -0x3ct
        -0x45t
        -0x47t
        -0x44t
        -0x52t
        -0x4ft
        -0x79t
        0x6dt
        -0xct
        0xft
        0x17t
        0x1at
        0x13t
        0x12t
        -0x32t
        0x22t
        0x1dt
        -0x32t
        0x21t
        0x13t
        0x22t
        -0x32t
        0x1bt
        0xft
        0x1ct
        0x23t
        0xft
        0x1at
        -0x32t
        0x21t
        0x22t
        0x1dt
        0x1et
        -0x32t
        0x20t
        0x13t
        0xft
        0x21t
        0x1dt
        0x1ct
        -0x71t
        -0x56t
        -0x4et
        -0x4bt
        -0x52t
        -0x53t
        0x69t
        -0x43t
        -0x48t
        0x69t
        -0x44t
        -0x52t
        -0x43t
        0x69t
        -0x4at
        -0x56t
        -0x49t
        -0x42t
        -0x56t
        -0x4bt
        0x69t
        -0x44t
        -0x43t
        -0x48t
        -0x47t
        0x69t
        -0x45t
        -0x52t
        -0x56t
        -0x44t
        -0x48t
        -0x49t
        -0x7dt
        0x69t
        -0x43t
        -0x28t
        -0x20t
        -0x1dt
        -0x24t
        -0x25t
        -0x69t
        -0x15t
        -0x1at
        -0x69t
        -0x14t
        -0x19t
        -0x25t
        -0x28t
        -0x15t
        -0x24t
        -0x69t
        -0x20t
        -0x1bt
        -0x25t
        -0x24t
        -0x11t
        -0x5bt
        -0xdt
        0x0t
        0x12t
        0xat
        -0x41t
        0x5t
        0x0t
        0x8t
        0xbt
        0x4t
        0x3t
        -0x27t
        -0x41t
    .end array-data
.end method

.method private A0E(I)V
    .locals 7

    .line 31514
    iput p1, p0, Lcom/facebook/ads/redexgen/X/C2;->A04:I

    .line 31515
    const/4 v6, 0x0

    .line 31516
    .local v0, "cursor":Lcom/facebook/ads/redexgen/X/Bo;
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nw;->AJO()V

    .line 31517
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x5

    filled-new-array {v5, v2, v1, v0, v3}, [I

    move-result-object v0

    .line 31518
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Bx;->A7r([I)Lcom/facebook/ads/redexgen/X/o4;

    move-result-object v6

    .line 31519
    :goto_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/o4;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31520
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/o4;->A00()Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31521
    :catch_0
    move-exception v4

    .line 31522
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x43

    const/16 v2, 0x15

    const/16 v0, 0xe

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31524
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 31525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31526
    .local v2, "downloadsForMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A07:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31527
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31528
    return-void

    .line 31529
    :catchall_0
    move-exception v0

    .end local v2    # "downloadsForMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 31530
    throw v0
.end method

.method private A0F(I)V
    .locals 0

    .line 31531
    iput p1, p0, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    .line 31532
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31533
    return-void
.end method

.method private A0G(I)V
    .locals 0

    .line 31534
    iput p1, p0, Lcom/facebook/ads/redexgen/X/C2;->A03:I

    .line 31535
    return-void
.end method

.method private A0H(I)V
    .locals 0

    .line 31536
    iput p1, p0, Lcom/facebook/ads/redexgen/X/C2;->A04:I

    .line 31537
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31538
    return-void
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/Bk;)V
    .locals 8

    .line 31539
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v0, 0x7

    const/4 v3, 0x1

    if-ne v1, v0, :cond_1

    .line 31540
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Bk;->A03:I

    if-nez v0, :cond_0

    .line 31541
    const/4 v3, 0x0

    .line 31542
    .local v0, "state":I
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Bk;->A03:I

    invoke-direct {p0, p1, v3, v0}, Lcom/facebook/ads/redexgen/X/C2;->A04(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;

    .line 31543
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31544
    .end local v0    # "state":I
    .end local v0
    .end local v1
    :goto_0
    return-void

    .line 31545
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C2;->A02(Ljava/lang/String;)I

    move-result v1

    .line 31546
    .local v0, "removeIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31547
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/nw;->AIR(Ljava/lang/String;)V

    goto :goto_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31548
    .local v1, "e":Ljava/io/IOException;
    :catch_0
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x58

    const/16 v5, 0x1e

    const/16 v4, 0x1a

    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const-string v1, "0mOws7zeqclkbY70VWtV8amCVjdjwc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "5byiBwQrvMTmrLaxdcHCyvzuNe0iHvcw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v7, v5, v4}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 31549
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/C0;

    invoke-direct {v2, p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/C0;-><init>(Lcom/facebook/ads/redexgen/X/Bk;ZLjava/util/List;Ljava/lang/Exception;)V

    .line 31550
    .local v1, "update":Lcom/facebook/ads/redexgen/X/C0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A07:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/Bk;I)V
    .locals 16

    .line 31551
    move-object/from16 v2, p0

    move/from16 v13, p2

    move-object/from16 v3, p1

    if-nez v13, :cond_1

    .line 31552
    iget v1, v3, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 31553
    const/4 v0, 0x0

    invoke-direct {v2, v3, v0, v0}, Lcom/facebook/ads/redexgen/X/C2;->A04(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;

    .line 31554
    .end local v15
    :cond_0
    :goto_0
    return-void

    .line 31555
    :cond_1
    iget v5, v3, Lcom/facebook/ads/redexgen/X/Bk;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const-string v1, "qDoL4xVSTO8RDQU7ZVoZcH2BhkCOc4"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "ugBXxeG19GlyVlR2WcoXaVyqVtSsbrKH"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    if-eq v13, v5, :cond_0

    .line 31556
    iget v6, v3, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    .line 31557
    .local v2, "state":I
    if-eqz v6, :cond_3

    const/4 v0, 0x2

    if-ne v6, v0, :cond_4

    .line 31558
    :cond_3
    const/4 v6, 0x1

    .line 31559
    .end local v2    # "state":I
    .local v15, "state":I
    :cond_4
    new-instance v4, Lcom/facebook/ads/redexgen/X/Bk;

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-wide v7, v3, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    .line 31560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v3, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    const/4 v14, 0x0

    iget-object v15, v3, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    move-object v0, v4

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJIILcom/facebook/ads/redexgen/X/C6;)V

    .line 31561
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A03(Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/Bk;

    goto :goto_0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/Bk;Ljava/lang/Exception;)V
    .locals 19

    .line 31562
    move-object/from16 v3, p0

    new-instance v7, Lcom/facebook/ads/redexgen/X/Bk;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    .line 31563
    move-object/from16 v4, p2

    if-nez v4, :cond_1

    const/4 v9, 0x3

    :goto_0
    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    .line 31564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A03:I

    .line 31565
    if-nez v4, :cond_0

    .line 31566
    const/16 v17, 0x0

    .line 31567
    :goto_1
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    move-object/from16 v18, v0

    move/from16 v16, v1

    invoke-direct/range {v7 .. v18}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJIILcom/facebook/ads/redexgen/X/C6;)V

    .line 31568
    .end local v18
    .local v3, "download":Lcom/facebook/ads/redexgen/X/Bk;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/C2;->A02(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 31569
    :cond_0
    const/16 v17, 0x1

    goto :goto_1

    .line 31570
    :cond_1
    const/4 v9, 0x4

    goto :goto_0

    .line 31571
    :goto_2
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/nw;->AHF(Lcom/facebook/ads/redexgen/X/Bk;)V

    goto :goto_3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31572
    :catch_0
    move-exception v6

    .line 31573
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xdf

    const/16 v1, 0x17

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31574
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/C0;

    invoke-direct {v2, v7, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/C0;-><init>(Lcom/facebook/ads/redexgen/X/Bk;ZLjava/util/List;Ljava/lang/Exception;)V

    .line 31575
    .local v0, "update":Lcom/facebook/ads/redexgen/X/C0;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/C2;->A07:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31576
    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/o0;)V
    .locals 8

    .line 31577
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A01(Lcom/facebook/ads/redexgen/X/o0;)Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v0

    iget-object v7, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    .line 31578
    .local v0, "downloadId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0C:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31579
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A03(Lcom/facebook/ads/redexgen/X/o0;)Z

    move-result v4

    .line 31580
    .local v1, "isRemove":Z
    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 31581
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/C2;->A06:Z

    .line 31582
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A04(Lcom/facebook/ads/redexgen/X/o0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31583
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31584
    return-void

    .line 31585
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A01:I

    if-nez v0, :cond_0

    .line 31586
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/C2;->removeMessages(I)V

    goto :goto_0

    .line 31587
    :cond_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A02(Lcom/facebook/ads/redexgen/X/o0;)Ljava/lang/Exception;

    move-result-object v3

    .line 31588
    .local v3, "finalException":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 31589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf6

    const/16 v1, 0xd

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A01(Lcom/facebook/ads/redexgen/X/o0;)Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v3}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31590
    :cond_3
    invoke-direct {p0, v7, v6}, Lcom/facebook/ads/redexgen/X/C2;->A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const-string v1, "ylCSlCHYxJLig8GFragBjcnbyuXWai"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "OMWcFhgpmCCD5KtgAO70M2kgxcAld7fK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Bk;

    .line 31591
    .local v2, "download":Lcom/facebook/ads/redexgen/X/Bk;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    packed-switch v0, :pswitch_data_0

    .line 31592
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 31593
    :pswitch_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 31594
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/C2;->A0I(Lcom/facebook/ads/redexgen/X/Bk;)V

    .line 31595
    goto :goto_1

    .line 31596
    :pswitch_2
    xor-int/lit8 v0, v4, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 31597
    invoke-direct {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/C2;->A0K(Lcom/facebook/ads/redexgen/X/Bk;Ljava/lang/Exception;)V

    .line 31598
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31599
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/o0;)V
    .locals 1

    .line 31600
    if-eqz p1, :cond_0

    .line 31601
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A03(Lcom/facebook/ads/redexgen/X/o0;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 31602
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/o0;->A05(Z)V

    .line 31603
    :cond_0
    return-void
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/o0;J)V
    .locals 17

    .line 31604
    move-object/from16 v3, p0

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/o0;->A01(Lcom/facebook/ads/redexgen/X/o0;)Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    .line 31605
    .local v13, "downloadId":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Bk;

    .line 31606
    .local v14, "download":Lcom/facebook/ads/redexgen/X/Bk;
    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    move-wide/from16 v12, p2

    cmp-long v0, v12, v1

    if-eqz v0, :cond_0

    const-wide/16 v1, -0x1

    cmp-long v0, v12, v1

    if-nez v0, :cond_1

    .line 31607
    :cond_0
    return-void

    .line 31608
    :cond_1
    new-instance v5, Lcom/facebook/ads/redexgen/X/Bk;

    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget v7, v4, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    iget-wide v8, v4, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    .line 31609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget v14, v4, Lcom/facebook/ads/redexgen/X/Bk;->A03:I

    iget v15, v4, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    move-object/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJIILcom/facebook/ads/redexgen/X/C6;)V

    .line 31610
    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/C2;->A03(Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/Bk;

    .line 31611
    return-void
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/o0;Lcom/facebook/ads/redexgen/X/Bk;)V
    .locals 10

    .line 31612
    if-eqz p1, :cond_1

    .line 31613
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A03(Lcom/facebook/ads/redexgen/X/o0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31614
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/o0;->A05(Z)V

    .line 31615
    :cond_0
    return-void

    .line 31616
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/C2;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const-string v1, "e4XXQnURg6mIpThj5jyh4wOBvzx0EgPt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 31617
    return-void

    .line 31618
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A09:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CJ;->A5M(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)Lcom/facebook/ads/redexgen/X/CH;

    move-result-object v4

    .line 31619
    .local v0, "downloader":Lcom/facebook/ads/redexgen/X/CH;
    new-instance v2, Lcom/facebook/ads/redexgen/X/o0;

    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v5, p2, Lcom/facebook/ads/redexgen/X/Bk;->A00:Lcom/facebook/ads/redexgen/X/C6;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/C2;->A03:I

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/o0;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/C6;ZILcom/facebook/ads/redexgen/X/C2;Lcom/facebook/ads/redexgen/X/Bz;)V

    .line 31620
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C2;->A0C:Ljava/util/HashMap;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A06:Z

    .line 31622
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/o0;->start()V

    .line 31623
    return-void
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/o0;Lcom/facebook/ads/redexgen/X/Bk;I)V
    .locals 1

    .line 31624
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/o0;->A03(Lcom/facebook/ads/redexgen/X/o0;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 31625
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    if-lt p3, v0, :cond_1

    .line 31626
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/C2;->A04(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;

    .line 31627
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/o0;->A05(Z)V

    .line 31628
    :cond_1
    return-void
.end method

.method private A0Q(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;I)V
    .locals 14

    .line 31629
    move-object v2, p0

    move-object v4, p1

    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    .line 31630
    .local p0, "download":Lcom/facebook/ads/redexgen/X/Bk;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 31631
    .local v10, "nowMs":J
    move/from16 v12, p2

    if-eqz v0, :cond_0

    .line 31632
    invoke-static {v0, v4, v12, v6, v7}, Lcom/facebook/ads/redexgen/X/C5;->A00(Lcom/facebook/ads/redexgen/X/Bk;Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJ)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A03(Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/Bk;

    .line 31633
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31634
    return-void

    .line 31635
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/Bk;

    .line 31636
    if-eqz v12, :cond_1

    .line 31637
    const/4 v5, 0x1

    .line 31638
    :goto_1
    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    move-wide v8, v6

    .end local v10    # "nowMs":J
    .local p3, "nowMs":J
    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V

    .line 31639
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/C2;->A03(Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/Bk;

    goto :goto_0

    .line 31640
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private A0R(Ljava/lang/String;)V
    .locals 4

    .line 31641
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v2

    .line 31642
    .local v0, "download":Lcom/facebook/ads/redexgen/X/Bk;
    if-nez v2, :cond_0

    .line 31643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x76

    const/16 v1, 0x27

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 31644
    return-void

    .line 31645
    :cond_0
    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A04(Lcom/facebook/ads/redexgen/X/Bk;II)Lcom/facebook/ads/redexgen/X/Bk;

    .line 31646
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31647
    return-void
.end method

.method private A0S(Ljava/lang/String;I)V
    .locals 6

    .line 31648
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_1

    .line 31649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 31650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/C2;->A0J(Lcom/facebook/ads/redexgen/X/Bk;I)V

    .line 31651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31652
    .end local v1    # "i":I
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/nw;->AJq(I)V

    goto :goto_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31653
    :catch_0
    move-exception v3

    .line 31654
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x9d

    const/16 v1, 0x20

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 31655
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    .line 31656
    .local v1, "download":Lcom/facebook/ads/redexgen/X/Bk;
    if-eqz v0, :cond_2

    .line 31657
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/C2;->A0J(Lcom/facebook/ads/redexgen/X/Bk;I)V

    .line 31658
    .end local v1    # "download":Lcom/facebook/ads/redexgen/X/Bk;
    .end local v2
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31659
    return-void

    .line 31660
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A0A:Lcom/facebook/ads/redexgen/X/nw;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/nw;->AJr(Ljava/lang/String;I)V

    goto :goto_1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31661
    :catch_1
    move-exception v4

    .line 31662
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xbd

    const/16 v1, 0x22

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private A0T(Z)V
    .locals 0

    .line 31663
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/C2;->A05:Z

    .line 31664
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C2;->A0B()V

    .line 31665
    return-void
.end method

.method private A0U()Z
    .locals 4

    .line 31666
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C2;->A05:Z

    if-nez v0, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/C2;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/C2;->A0E:[Ljava/lang/String;

    const-string v1, "cfwXoVsCs"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 31667
    .local v0, "this":Lcom/facebook/ads/redexgen/X/C2;
    .local p1, "message":Landroid/os/Message;
    const/4 v5, 0x1

    .line 31668
    .local v1, "processedExternalMessage":Z
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 31669
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/C2;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 31670
    .restart local v0    # "this":Lcom/facebook/ads/redexgen/X/C2;
    :pswitch_0
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/C2;->A09()V

    .line 31671
    return-void

    .line 31672
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/C2;
    :pswitch_1
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/C2;->A0C()V

    .line 31673
    return-void

    .line 31674
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/o0;

    .line 31675
    .local v2, "task":Lcom/facebook/ads/redexgen/X/o0;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0N(II)J

    move-result-wide v0

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/C2;->A0N(Lcom/facebook/ads/redexgen/X/o0;J)V

    .line 31676
    return-void

    .line 31677
    .end local v2    # "task":Lcom/facebook/ads/redexgen/X/o0;
    :pswitch_3
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/C2;->A0A()V

    goto :goto_1

    .line 31678
    .end local v2
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/o0;

    .line 31679
    .restart local v2    # "task":Lcom/facebook/ads/redexgen/X/o0;
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0L(Lcom/facebook/ads/redexgen/X/o0;)V

    .line 31680
    const/4 v5, 0x0

    .line 31681
    goto :goto_1

    .line 31682
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 31683
    .local v2, "id":Ljava/lang/String;
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0R(Ljava/lang/String;)V

    goto :goto_1

    .line 31684
    .end local v2    # "id":Ljava/lang/String;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    .line 31685
    .local v2, "request":Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31686
    .local v5, "stopReason":I
    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0Q(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;I)V

    goto :goto_1

    .line 31687
    .end local v2    # "request":Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;
    .end local v5    # "stopReason":I
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31688
    .local v2, "minRetryCount":I
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0G(I)V

    goto :goto_1

    .line 31689
    .end local v2    # "minRetryCount":I
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31690
    .local v2, "maxParallelDownloads":I
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0F(I)V

    goto :goto_1

    .line 31691
    .end local v2    # "maxParallelDownloads":I
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 31692
    .local v2, "id":Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31693
    .restart local v5    # "stopReason":I
    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0S(Ljava/lang/String;I)V

    goto :goto_1

    .line 31694
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "stopReason":I
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31695
    .local v2, "notMetRequirements":I
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0H(I)V

    goto :goto_1

    .line 31696
    .end local v2    # "notMetRequirements":I
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 31697
    .local v2, "downloadsPaused":Z
    :goto_0
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0T(Z)V

    goto :goto_1

    .line 31698
    .end local v2    # "downloadsPaused":Z
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31699
    .local v2, "notMetRequirements":I
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C2;->A0E(I)V

    .line 31700
    .end local v2    # "notMetRequirements":I
    :goto_1
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/C2;->A07:Landroid/os/Handler;

    .line 31701
    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/C2;->A0C:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 31702
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31703
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "processedExternalMessage":Z
    .end local p1    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
