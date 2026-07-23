.class public final Lcom/facebook/ads/redexgen/X/FN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/n7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReleaseTask"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/FM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FM;)V
    .locals 0

    .line 35744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35745
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/FM;

    .line 35746
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 35747
    .local v0, "this":Lcom/facebook/ads/redexgen/X/FN;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FM;->AEj()V

    .line 35748
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/FN;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
