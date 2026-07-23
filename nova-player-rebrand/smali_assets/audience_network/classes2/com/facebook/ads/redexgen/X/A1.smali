.class public final Lcom/facebook/ads/redexgen/X/A1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/A2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/no;

.field public final A02:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/androidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26930
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A1;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/no;)V

    .line 26931
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/no;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/androidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/no;",
            ")V"
        }
    .end annotation

    .line 26932
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26933
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A1;->A02:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26934
    iput p2, p0, Lcom/facebook/ads/redexgen/X/A1;->A00:I

    .line 26935
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/A1;->A01:Lcom/facebook/ads/redexgen/X/no;

    .line 26936
    return-void
.end method


# virtual methods
.method public final A00(ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/A1;
    .locals 2

    .line 26937
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A1;->A02:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/A1;

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/A1;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/no;)V

    return-object v0
.end method
