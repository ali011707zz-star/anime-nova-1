.class public final Lcom/facebook/ads/redexgen/X/dg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/55;->A1G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80270
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dg;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 80271
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dg;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dg;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/55;->A16(Lcom/facebook/ads/redexgen/X/55;Z)Z

    .line 80272
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dg;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0G(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/dm;->AFw(Z)V

    .line 80273
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dg;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
