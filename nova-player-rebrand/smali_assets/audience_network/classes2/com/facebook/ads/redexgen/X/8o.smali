.class public final Lcom/facebook/ads/redexgen/X/8o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/8p;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8p;)V
    .locals 1

    .line 23235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23236
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    .line 23237
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    .line 23238
    return-void

    .line 23239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(I)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "New API"
    .end annotation

    .line 23240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23241
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8a;-><init>(Lcom/facebook/ads/redexgen/X/8o;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23242
    :cond_0
    return-void
.end method

.method public final A01(IJJ)V
    .locals 8

    .line 23243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8e;

    move-object v2, p0

    move-wide v6, p4

    move-wide v4, p2

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/8e;-><init>(Lcom/facebook/ads/redexgen/X/8o;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23245
    :cond_0
    return-void
.end method

.method public final synthetic A02(IJJ)V
    .locals 6

    .line 23246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    .line 23247
    move-wide v4, p4

    move-wide v2, p2

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8p;->AD9(IJJ)V

    .line 23248
    return-void
.end method

.method public final A03(J)V
    .locals 2

    .line 23249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Lcom/facebook/ads/redexgen/X/8o;J)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23251
    :cond_0
    return-void
.end method

.method public final synthetic A04(J)V
    .locals 1

    .line 23252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8p;->AD5(J)V

    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V
    .locals 2

    .line 23253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8j;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/8j;-><init>(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23255
    :cond_0
    return-void
.end method

.method public final synthetic A06(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V
    .locals 1

    .line 23256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8p;->AD3(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 23257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8p;->AD4(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V

    .line 23258
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 2

    .line 23259
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 23260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23261
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8h;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8h;-><init>(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/6I;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23262
    :cond_0
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 2

    .line 23263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23264
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/6I;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23265
    :cond_0
    return-void
.end method

.method public final synthetic A09(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 1

    .line 23266
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 23267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8p;->AD1(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 23268
    return-void
.end method

.method public final synthetic A0A(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 1

    .line 23269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8p;->AD2(Lcom/facebook/ads/redexgen/X/6I;)V

    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/8r;)V
    .locals 2

    .line 23270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23271
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8d;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8d;-><init>(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/8r;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23272
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/8r;)V
    .locals 2

    .line 23273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23274
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8Z;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8Z;-><init>(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/8r;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23275
    :cond_0
    return-void
.end method

.method public final A0D(Ljava/lang/Exception;)V
    .locals 2

    .line 23276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8g;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8g;-><init>(Lcom/facebook/ads/redexgen/X/8o;Ljava/lang/Exception;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23278
    :cond_0
    return-void
.end method

.method public final synthetic A0E(Ljava/lang/Exception;)V
    .locals 1

    .line 23279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8p;->AD6(Ljava/lang/Exception;)V

    return-void
.end method

.method public final A0F(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "New API"
    .end annotation

    .line 23280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8k;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8k;-><init>(Lcom/facebook/ads/redexgen/X/8o;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23282
    :cond_0
    return-void
.end method

.method public final A0G(Ljava/lang/String;JJ)V
    .locals 8

    .line 23283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8Y;

    move-object v2, p0

    move-wide v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/8Y;-><init>(Lcom/facebook/ads/redexgen/X/8o;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23285
    :cond_0
    return-void
.end method

.method public final synthetic A0H(Ljava/lang/String;JJ)V
    .locals 6

    .line 23286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    .line 23287
    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8p;->AD0(Ljava/lang/String;JJ)V

    .line 23288
    return-void
.end method

.method public final A0I(Z)V
    .locals 2

    .line 23289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23290
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8c;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8c;-><init>(Lcom/facebook/ads/redexgen/X/8o;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23291
    :cond_0
    return-void
.end method

.method public final synthetic A0J(Z)V
    .locals 1

    .line 23292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8p;->AFy(Z)V

    return-void
.end method

.method public final A0K([BJ)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "New API"
    .end annotation

    .line 23293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8l;-><init>(Lcom/facebook/ads/redexgen/X/8o;[BJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23295
    :cond_0
    return-void
.end method
