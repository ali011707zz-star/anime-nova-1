.class public final Lcom/facebook/ads/redexgen/X/RT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RU;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62300
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RT;->A00:Lcom/facebook/ads/redexgen/X/RU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 62301
    .local v0, "this":Lcom/facebook/ads/redexgen/X/RT;
    :try_start_0
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/RT;->A00:Lcom/facebook/ads/redexgen/X/RU;

    const-wide/16 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/RU;->A00(Lcom/facebook/ads/redexgen/X/RU;J)J

    .line 62302
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/RT;->A00:Lcom/facebook/ads/redexgen/X/RU;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RU;->A03(Lcom/facebook/ads/redexgen/X/RU;Z)Z

    .line 62303
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/RT;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
