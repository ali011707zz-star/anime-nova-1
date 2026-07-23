.class public final Lcom/facebook/ads/redexgen/X/ax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ao;->A8x()Lcom/facebook/ads/redexgen/X/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ao;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ao;Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77118
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ax;->A01:Lcom/facebook/ads/redexgen/X/ao;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ax;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAX()Z
    .locals 1

    .line 77119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ax;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->isLimitAdTracking()Z

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 77120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ax;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
