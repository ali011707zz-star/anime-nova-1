.class public abstract Lcom/facebook/ads/redexgen/X/j4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/O6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RVCacheListener"
.end annotation


# instance fields
.field public final A00:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 88093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88094
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/j4;->A00:Z

    .line 88095
    return-void
.end method


# virtual methods
.method public abstract A00()V
.end method

.method public abstract A01(Z)V
.end method

.method public final ADL()V
    .locals 1

    .line 88096
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/j4;->A00:Z

    if-eqz v0, :cond_0

    .line 88097
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/j4;->A00()V

    .line 88098
    :goto_0
    return-void

    .line 88099
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/j4;->A01(Z)V

    goto :goto_0
.end method

.method public final ADT()V
    .locals 1

    .line 88100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/j4;->A01(Z)V

    .line 88101
    return-void
.end method
