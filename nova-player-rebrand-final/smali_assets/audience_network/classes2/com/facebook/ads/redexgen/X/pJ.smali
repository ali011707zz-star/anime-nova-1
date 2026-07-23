.class public final Lcom/facebook/ads/redexgen/X/pJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4X;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pK;
    }
.end annotation


# static fields
.field public static final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pK;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 3346
    const/16 v1, 0x32

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pJ;->A01:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 104075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104076
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    .line 104077
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/pK;
    .locals 3

    .line 104078
    sget-object v2, Lcom/facebook/ads/redexgen/X/pJ;->A01:Ljava/util/List;

    monitor-enter v2

    .line 104079
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/pJ;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104080
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pK;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/pK;-><init>(Lcom/facebook/ads/redexgen/X/51;)V

    .line 104081
    :goto_0
    monitor-exit v2

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/pJ;->A01:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/pJ;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pK;

    goto :goto_0

    .line 104082
    :goto_1
    return-object v0

    .line 104083
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/pK;)V
    .locals 3

    .line 104084
    sget-object v2, Lcom/facebook/ads/redexgen/X/pJ;->A01:Ljava/util/List;

    monitor-enter v2

    .line 104085
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/pJ;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v0, 0x32

    if-ge v1, v0, :cond_0

    .line 104086
    sget-object v0, Lcom/facebook/ads/redexgen/X/pJ;->A01:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104087
    :cond_0
    monitor-exit v2

    .line 104088
    return-void

    .line 104089
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/pK;)V
    .locals 0

    .line 104090
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/pJ;->A01(Lcom/facebook/ads/redexgen/X/pK;)V

    return-void
.end method


# virtual methods
.method public final A03(Ljava/lang/Runnable;)Z
    .locals 1

    .line 104091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final A8R()Landroid/os/Looper;
    .locals 1

    .line 104092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final A9n(I)Z
    .locals 1

    .line 104093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final ACg(I)Lcom/facebook/ads/redexgen/X/pK;
    .locals 2

    .line 104094
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pJ;->A00()Lcom/facebook/ads/redexgen/X/pK;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/pK;->A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/pJ;)Lcom/facebook/ads/redexgen/X/pK;

    move-result-object v0

    return-object v0
.end method

.method public final ACh(III)Lcom/facebook/ads/redexgen/X/pK;
    .locals 2

    .line 104095
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pJ;->A00()Lcom/facebook/ads/redexgen/X/pK;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    .line 104096
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/pK;->A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/pJ;)Lcom/facebook/ads/redexgen/X/pK;

    move-result-object v0

    .line 104097
    return-object v0
.end method

.method public final ACi(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/pK;
    .locals 2

    .line 104098
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pJ;->A00()Lcom/facebook/ads/redexgen/X/pK;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    .line 104099
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/pK;->A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/pJ;)Lcom/facebook/ads/redexgen/X/pK;

    move-result-object v0

    .line 104100
    return-object v0
.end method

.method public final ACj(ILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/pK;
    .locals 2

    .line 104101
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pJ;->A00()Lcom/facebook/ads/redexgen/X/pK;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/pK;->A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/pJ;)Lcom/facebook/ads/redexgen/X/pK;

    move-result-object v0

    return-object v0
.end method

.method public final AIT(I)V
    .locals 1

    .line 104102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104103
    return-void
.end method

.method public final AJA(I)Z
    .locals 1

    .line 104104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public final AJB(IJ)Z
    .locals 1

    .line 104105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    return v0
.end method

.method public final AJD(Lcom/facebook/ads/redexgen/X/4W;)Z
    .locals 1

    .line 104106
    check-cast p1, Lcom/facebook/ads/redexgen/X/pK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pJ;->A00:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/pK;->A03(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method
