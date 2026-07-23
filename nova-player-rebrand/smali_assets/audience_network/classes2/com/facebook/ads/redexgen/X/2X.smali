.class public final Lcom/facebook/ads/redexgen/X/2X;
.super Lcom/facebook/ads/redexgen/X/CL;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lorg/json/JSONObject;

.field public final A01:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cb;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 9286
    sget-object v0, Lcom/facebook/ads/redexgen/X/gh;->A03:Lcom/facebook/ads/redexgen/X/gh;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/CL;-><init>(Lcom/facebook/ads/redexgen/X/Cb;Lcom/facebook/ads/redexgen/X/gh;)V

    .line 9287
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:Lorg/json/JSONObject;

    .line 9288
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:Lorg/json/JSONObject;

    .line 9289
    return-void
.end method


# virtual methods
.method public final A4D(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
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

    .line 9290
    .local p1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local p2, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A03(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    .line 9291
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CL;->A4D(Ljava/util/Map;Ljava/util/Map;)V

    .line 9292
    return-void
.end method
