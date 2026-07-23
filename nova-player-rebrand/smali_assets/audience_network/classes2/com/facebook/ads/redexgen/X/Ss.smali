.class public final Lcom/facebook/ads/redexgen/X/Ss;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExoPlayerCacheCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Sx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 64375
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64376
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Ljava/util/concurrent/BlockingQueue;

    .line 64377
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/gl;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gl;-><init>(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V

    .line 64378
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64379
    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ss;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 64381
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/St;)V
    .locals 0

    .line 64382
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ss;->A03(Lcom/facebook/ads/redexgen/X/St;)V

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 12

    .line 64383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 64384
    .local v7, "startTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    .line 64385
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fb;->A06(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/fb;

    move-result-object v4

    .line 64386
    .local v9, "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/fb;
    move-object v7, p1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/St;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 64387
    .local v10, "uri":Landroid/net/Uri;
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/St;->A00:J

    .line 64388
    .local v0, "preloadSizeBytes":J
    const-wide/16 v1, -0x1

    cmp-long v0, v8, v1

    if-nez v0, :cond_0

    .line 64389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0S(Landroid/content/Context;)J

    move-result-wide v8

    .line 64390
    .end local v0    # "preloadSizeBytes":J
    .local v11, "preloadSizeBytes":J
    .local v3, "finalPreloadSizeBytes":J
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/gk;

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/gk;-><init>(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/St;JJ)V

    invoke-virtual {v4, v3, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/fb;->A0I(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/fa;J)V

    .line 64391
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64392
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ss;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
