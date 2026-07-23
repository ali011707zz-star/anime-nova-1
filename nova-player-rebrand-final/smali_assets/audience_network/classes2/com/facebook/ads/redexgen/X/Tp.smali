.class public final Lcom/facebook/ads/redexgen/X/Tp;
.super Lcom/facebook/ads/redexgen/X/WP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6y;->AEl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66201
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tp;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WP;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 66202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tp;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6y;->A01:Lcom/facebook/ads/NativeAdListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tp;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6y;->A00:Lcom/facebook/ads/NativeAdBase;

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 66203
    return-void
.end method
