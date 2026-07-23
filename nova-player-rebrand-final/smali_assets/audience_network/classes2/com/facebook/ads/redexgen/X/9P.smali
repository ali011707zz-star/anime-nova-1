.class public final Lcom/facebook/ads/redexgen/X/9P;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamEventCallbackV29"
.end annotation


# instance fields
.field public final A00:Landroid/media/AudioTrack$StreamEventCallback;

.field public final A01:Landroid/os/Handler;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/oM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oM;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 24067
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9P;->A02:Lcom/facebook/ads/redexgen/X/oM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24068
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A01:Landroid/os/Handler;

    .line 24069
    new-instance v0, Lcom/facebook/ads/redexgen/X/9O;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/9O;-><init>(Lcom/facebook/ads/redexgen/X/9P;Lcom/facebook/ads/redexgen/X/oM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A00:Landroid/media/AudioTrack$StreamEventCallback;

    .line 24070
    return-void
.end method


# virtual methods
.method public final A00(Landroid/media/AudioTrack;)V
    .locals 2

    .line 24071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A01:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A00:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 24072
    return-void
.end method

.method public final A01(Landroid/media/AudioTrack;)V
    .locals 2

    .line 24073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A00:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 24074
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9P;->A01:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 24075
    return-void
.end method
