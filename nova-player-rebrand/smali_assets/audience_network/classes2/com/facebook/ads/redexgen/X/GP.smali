.class public final Lcom/facebook/ads/redexgen/X/GP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/GQ;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/GQ;)V
    .locals 1

    .line 37084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37085
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    .line 37086
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    .line 37087
    return-void

    .line 37088
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(IJ)V
    .locals 2

    .line 37089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37090
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GL;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GL;-><init>(Lcom/facebook/ads/redexgen/X/GP;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37091
    :cond_0
    return-void
.end method

.method public final A01(IJ)V
    .locals 2

    .line 37092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37093
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GC;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GC;-><init>(Lcom/facebook/ads/redexgen/X/GP;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37094
    :cond_0
    return-void
.end method

.method public final synthetic A02(IJ)V
    .locals 1

    .line 37095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    .line 37096
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GQ;->ADU(IJ)V

    .line 37097
    return-void
.end method

.method public final synthetic A03(IJ)V
    .locals 1

    .line 37098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GQ;->ADl(IJ)V

    return-void
.end method

.method public final A04(ILcom/facebook/ads/redexgen/X/qI;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "New event handler"
    .end annotation

    .line 37099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    if-eqz v0, :cond_0

    .line 37100
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GO;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/GO;-><init>(Lcom/facebook/ads/redexgen/X/GP;ILcom/facebook/ads/redexgen/X/qI;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37101
    :cond_0
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V
    .locals 2

    .line 37102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37103
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GI;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/GI;-><init>(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37104
    :cond_0
    return-void
.end method

.method public final synthetic A06(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V
    .locals 1

    .line 37105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GQ;->AGU(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 37106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/GQ;->AGV(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V

    .line 37107
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/pW;)V
    .locals 2

    .line 37108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37109
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GK;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/GK;-><init>(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/pW;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37110
    :cond_0
    return-void
.end method

.method public final synthetic A08(Lcom/facebook/ads/redexgen/X/pW;)V
    .locals 1

    .line 37111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GQ;->AGb(Lcom/facebook/ads/redexgen/X/pW;)V

    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 2

    .line 37112
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 37113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37114
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GM;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/GM;-><init>(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/6I;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37115
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 2

    .line 37116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37117
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GG;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/GG;-><init>(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/6I;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37118
    :cond_0
    return-void
.end method

.method public final synthetic A0B(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 1

    .line 37119
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 37120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GQ;->AGO(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 37121
    return-void
.end method

.method public final synthetic A0C(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 1

    .line 37122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GQ;->AGP(Lcom/facebook/ads/redexgen/X/6I;)V

    return-void
.end method

.method public final A0D(Ljava/lang/Object;)V
    .locals 4

    .line 37123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 37125
    .local v0, "renderTimeMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GH;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/facebook/ads/redexgen/X/GH;-><init>(Lcom/facebook/ads/redexgen/X/GP;Ljava/lang/Object;J)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37126
    .end local v0    # "renderTimeMs":J
    :cond_0
    return-void
.end method

.method public final synthetic A0E(Ljava/lang/Object;J)V
    .locals 1

    .line 37127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GQ;->AFf(Ljava/lang/Object;J)V

    return-void
.end method

.method public final A0F(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "New event handler"
    .end annotation

    .line 37128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37129
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GJ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/GJ;-><init>(Lcom/facebook/ads/redexgen/X/GP;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37130
    :cond_0
    return-void
.end method

.method public final A0G(Ljava/lang/String;JJ)V
    .locals 8

    .line 37131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/GF;

    move-object v2, p0

    move-wide v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/GF;-><init>(Lcom/facebook/ads/redexgen/X/GP;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37133
    :cond_0
    return-void
.end method

.method public final synthetic A0H(Ljava/lang/String;JJ)V
    .locals 6

    .line 37134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    .line 37135
    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/GQ;->AGN(Ljava/lang/String;JJ)V

    .line 37136
    return-void
.end method
