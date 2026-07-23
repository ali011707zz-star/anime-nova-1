.class public final Lcom/facebook/ads/redexgen/X/n6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Fb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Fa;->A00(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/49;)Lcom/facebook/ads/redexgen/X/n6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/49;

.field public final synthetic A01:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/49;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n6;->A01:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/n6;->A00:Lcom/facebook/ads/redexgen/X/49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AHb()V
    .locals 2

    .line 99816
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/n6;->A00:Lcom/facebook/ads/redexgen/X/49;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n6;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/49;->A39(Ljava/lang/Object;)V

    .line 99817
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 99818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n6;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99819
    return-void
.end method
