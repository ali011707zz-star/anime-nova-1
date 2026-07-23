.class public final Lcom/facebook/ads/redexgen/X/hL;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hC;->A0X(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V
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

    .line 84439
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hL;->A00:Lcom/facebook/ads/redexgen/X/hC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hL;->A01:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 84440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hL;->A01:Lcom/facebook/ads/redexgen/X/UK;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1o(ZZ)V

    .line 84441
    return-void
.end method
