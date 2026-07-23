.class public abstract Lcom/facebook/ads/redexgen/X/CM;
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
    name = "ClientBundleResponse"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/gU;

.field public final A01:Lcom/facebook/ads/redexgen/X/2d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2d;Lcom/facebook/ads/redexgen/X/gU;)V
    .locals 0

    .line 32025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32026
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:Lcom/facebook/ads/redexgen/X/2d;

    .line 32027
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:Lcom/facebook/ads/redexgen/X/gU;

    .line 32028
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

    .line 32029
    .local p1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local p2, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:Lcom/facebook/ads/redexgen/X/gU;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32030
    return-void
.end method
