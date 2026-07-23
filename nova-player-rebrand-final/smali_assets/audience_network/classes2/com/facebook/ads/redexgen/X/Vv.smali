.class public final Lcom/facebook/ads/redexgen/X/Vv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UK;->A1d(Lcom/facebook/ads/redexgen/X/ju;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69878
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEv(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 1

    .line 69879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VP;->ACm()V

    .line 69881
    :cond_0
    return-void
.end method

.method public final AEw(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 0

    .line 69882
    return-void
.end method

.method public final AEx(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 0

    .line 69883
    return-void
.end method

.method public final AEz(Lcom/facebook/ads/redexgen/X/ju;Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 0

    .line 69884
    return-void
.end method
