.class public abstract Lcom/facebook/ads/redexgen/X/CL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/gc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Cb;

.field public final A01:Lcom/facebook/ads/redexgen/X/gh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cb;Lcom/facebook/ads/redexgen/X/gh;)V
    .locals 0

    .line 32019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32020
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    .line 32021
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CL;->A01:Lcom/facebook/ads/redexgen/X/gh;

    .line 32022
    return-void
.end method


# virtual methods
.method public A4D(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/gK;",
            "Lcom/facebook/ads/redexgen/X/gh;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/sync/SyncModifiableBundle;",
            "Lcom/facebook/ads/redexgen/X/gU;",
            ">;)V"
        }
    .end annotation

    .line 32023
    .local p1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local p2, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A01:Lcom/facebook/ads/redexgen/X/gh;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32024
    return-void
.end method
