.class public abstract Lcom/facebook/ads/redexgen/X/iv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NativeAdsManagerNativeAdapterListener"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 0

    .line 87645
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iv;->A00:Lcom/facebook/ads/redexgen/X/UK;

    .line 87646
    return-void
.end method

.method public final AEv(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 1

    .line 87647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iv;->A00:Lcom/facebook/ads/redexgen/X/UK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iv;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A1A()Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iv;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A1A()Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VP;->ACm()V

    .line 87649
    :cond_0
    return-void
.end method

.method public final AEx(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 0

    .line 87650
    return-void
.end method

.method public final AEz(Lcom/facebook/ads/redexgen/X/ju;Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 0

    .line 87651
    return-void
.end method
