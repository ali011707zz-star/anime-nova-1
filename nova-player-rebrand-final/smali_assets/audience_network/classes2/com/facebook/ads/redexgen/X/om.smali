.class public final Lcom/facebook/ads/redexgen/X/om;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GQ;
.implements Lcom/facebook/ads/redexgen/X/8p;
.implements Lcom/facebook/ads/redexgen/X/ES;
.implements Lcom/facebook/ads/redexgen/X/Bf;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AA;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3335
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mdkndyL3N"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "34XFwDl9WvKoMHQUixXhMeiNQCyC6vNP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5uafIaN5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lxzaK8fg5Pf0nzPouXyzPKk1aT8cB3T1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DTIJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0UAV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "B5vkeIjqEzHsmqRbylQSobdgrKqNmXUo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pkzfV8UoB1KOSL3E8gfET47OMeTC19My"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AA;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 103288
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 0

    .line 103289
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/om;-><init>(Lcom/facebook/ads/redexgen/X/AA;)V

    return-void
.end method


# virtual methods
.method public final AD0(Ljava/lang/String;JJ)V
    .locals 11

    .line 103290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0C(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    const-string v1, "1hpUDXdDopjYnxDN8fIPsNGSxN8OzRvU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/8p;

    .line 103291
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    move-wide v9, p4

    move-wide v7, p2

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/8p;->AD0(Ljava/lang/String;JJ)V

    .line 103292
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    goto :goto_0

    .line 103293
    :cond_1
    return-void
.end method

.method public final AD1(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 2

    .line 103294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0C(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    .line 103295
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8p;->AD1(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 103296
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    goto :goto_0

    .line 103297
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/AA;->A03(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/qI;

    .line 103298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/AA;->A05(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/6I;)Lcom/facebook/ads/redexgen/X/6I;

    .line 103299
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A00(Lcom/facebook/ads/redexgen/X/AA;I)I

    .line 103300
    return-void
.end method

.method public final AD2(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 2

    .line 103301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->A05(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/6I;)Lcom/facebook/ads/redexgen/X/6I;

    .line 103302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0C(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    .line 103303
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8p;->AD2(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 103304
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    goto :goto_0

    .line 103305
    :cond_0
    return-void
.end method

.method public final AD3(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 2

    .line 103306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->A03(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/qI;

    .line 103307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0C(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8p;

    .line 103308
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8p;->AD3(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 103309
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    goto :goto_0

    .line 103310
    :cond_0
    return-void
.end method

.method public final synthetic AD4(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V
    .locals 0

    return-void
.end method

.method public final synthetic AD5(J)V
    .locals 0

    return-void
.end method

.method public final synthetic AD6(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final AD9(IJJ)V
    .locals 8

    .line 103311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0C(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/8p;

    .line 103312
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    move-wide v6, p4

    move-wide v4, p2

    move v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/8p;->AD9(IJJ)V

    .line 103313
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8p;
    goto :goto_0

    .line 103314
    :cond_0
    return-void
.end method

.method public final synthetic ADU(IJ)V
    .locals 0

    return-void
.end method

.method public final ADZ(Lcom/facebook/ads/redexgen/X/pR;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Required until we deprecate and move ComponentListener to ExoPlayerImpl."
    .end annotation

    .line 103315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A09(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3U;

    .line 103316
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/3U;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3U;->ADZ(Lcom/facebook/ads/redexgen/X/pR;)V

    .line 103317
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/3U;
    goto :goto_0

    .line 103318
    :cond_0
    return-void
.end method

.method public final ADa(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Required until we deprecate and move ComponentListener to ExoPlayerImpl."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;)V"
        }
    .end annotation

    .line 103319
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A09(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3U;

    .line 103320
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/3U;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3U;->ADa(Ljava/util/List;)V

    .line 103321
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/3U;
    goto :goto_0

    .line 103322
    :cond_0
    return-void
.end method

.method public final ADl(IJ)V
    .locals 2

    .line 103323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0A(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    .line 103324
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GQ;->ADl(IJ)V

    .line 103325
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    goto :goto_0

    .line 103326
    :cond_0
    return-void
.end method

.method public final AEt(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .locals 2

    .line 103327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A08(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bf;

    .line 103328
    .local v1, "metadataOutput":Lcom/facebook/ads/redexgen/X/Bf;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bf;->AEt(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 103329
    .end local v1    # "metadataOutput":Lcom/facebook/ads/redexgen/X/Bf;
    goto :goto_0

    .line 103330
    :cond_0
    return-void
.end method

.method public final AFf(Ljava/lang/Object;J)V
    .locals 2

    .line 103331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A01(Lcom/facebook/ads/redexgen/X/AA;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 103332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0B(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103333
    .local v1, "videoListener":Lcom/facebook/ads/redexgen/X/ol;
    .end local v1    # "videoListener":Lcom/facebook/ads/redexgen/X/ol;
    goto :goto_0

    .line 103334
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0A(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    .line 103335
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GQ;->AFf(Ljava/lang/Object;J)V

    .line 103336
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    goto :goto_1

    .line 103337
    :cond_1
    return-void
.end method

.method public final synthetic AFy(Z)V
    .locals 0

    return-void
.end method

.method public final AGN(Ljava/lang/String;JJ)V
    .locals 8

    .line 103338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0A(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/GQ;

    .line 103339
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    move-wide v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/GQ;->AGN(Ljava/lang/String;JJ)V

    .line 103340
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    goto :goto_0

    .line 103341
    :cond_0
    return-void
.end method

.method public final AGO(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 2

    .line 103342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0A(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    .line 103343
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GQ;->AGO(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 103344
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    goto :goto_0

    .line 103345
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/AA;->A02(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/qI;

    .line 103346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/AA;->A04(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/6I;)Lcom/facebook/ads/redexgen/X/6I;

    .line 103347
    return-void
.end method

.method public final AGP(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 5

    .line 103348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->A04(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/6I;)Lcom/facebook/ads/redexgen/X/6I;

    .line 103349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0A(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    const-string v1, "MKCckBbCZrSSu6G06Z7NkbaNocq2WvpN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "V8qjKHPFdvtphjyj0wrcUTYdTARdRgua"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    .line 103350
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GQ;->AGP(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 103351
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    goto :goto_0

    .line 103352
    :cond_1
    return-void
.end method

.method public final AGU(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 5

    .line 103353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->A02(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/qI;

    .line 103354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0A(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    const-string v1, "2z1T7IcDfmpzuxqypnwVKmOXmU8bKGPo"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    .line 103355
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GQ;->AGU(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 103356
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    goto :goto_0

    .line 103357
    :cond_1
    return-void
.end method

.method public final synthetic AGV(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V
    .locals 0

    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/pW;)V
    .locals 6

    .line 103358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0B(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/5L;

    .line 103359
    .local v1, "videoListener":Lcom/facebook/ads/redexgen/X/5L;
    iget v3, p1, Lcom/facebook/ads/redexgen/X/pW;->A03:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/pW;->A01:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/pW;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/pW;->A00:F

    invoke-interface {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5L;->AGa(IIIF)V

    .line 103360
    .end local v1    # "videoListener":Lcom/facebook/ads/redexgen/X/5L;
    goto :goto_0

    .line 103361
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A0A(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/GQ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 103362
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/om;->A01:[Ljava/lang/String;

    const-string v1, "q7eFcMKXm9CoB0iVpo1HKrbod3G9GfaY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/GQ;->AGb(Lcom/facebook/ads/redexgen/X/pW;)V

    .line 103363
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/GQ;
    goto :goto_1

    .line 103364
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 103365
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A0G(Lcom/facebook/ads/redexgen/X/AA;Landroid/view/Surface;Z)V

    .line 103366
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 103367
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A0G(Lcom/facebook/ads/redexgen/X/AA;Landroid/view/Surface;Z)V

    .line 103368
    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 103369
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 103370
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 103371
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 103372
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A0G(Lcom/facebook/ads/redexgen/X/AA;Landroid/view/Surface;Z)V

    .line 103373
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 103374
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/om;->A00:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A0G(Lcom/facebook/ads/redexgen/X/AA;Landroid/view/Surface;Z)V

    .line 103375
    return-void
.end method
