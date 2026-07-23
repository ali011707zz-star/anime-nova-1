.class public final Lcom/facebook/ads/redexgen/X/Tt;
.super Lcom/facebook/ads/redexgen/X/WP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6y;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6y;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Vm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6y;Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 66213
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tt;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tt;->A01:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WP;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 66214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6y;->A01:Lcom/facebook/ads/NativeAdListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6y;->A00:Lcom/facebook/ads/NativeAdBase;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A01:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XE;->A00(Lcom/facebook/ads/redexgen/X/Vm;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/NativeAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 66215
    return-void
.end method
