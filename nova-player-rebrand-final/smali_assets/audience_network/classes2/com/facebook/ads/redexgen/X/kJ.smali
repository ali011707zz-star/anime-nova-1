.class public final Lcom/facebook/ads/redexgen/X/kJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Mx;->A01(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/kJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gi;

.field public final synthetic A01:Ljava/lang/String;

.field public final synthetic A02:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89625
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kJ;->A02:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kJ;->A00:Lcom/facebook/ads/redexgen/X/gi;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/kJ;->A01:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7O()Ljava/lang/String;
    .locals 1

    .line 89626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kJ;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A7p()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kJ;->A00:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kJ;->A02:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A03(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A8K()Lcom/facebook/ads/redexgen/X/Mv;
    .locals 1

    .line 89628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kJ;->A02:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mx;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Mv;

    move-result-object v0

    return-object v0
.end method
