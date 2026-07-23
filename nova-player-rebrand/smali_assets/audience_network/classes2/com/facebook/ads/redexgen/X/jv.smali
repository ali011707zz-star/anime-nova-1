.class public final Lcom/facebook/ads/redexgen/X/jv;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ju;->A06(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ju;

.field public final synthetic A01:Ljava/util/Map;

.field public final synthetic A02:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ju;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 89205
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:Lcom/facebook/ads/redexgen/X/ju;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jv;->A02:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jv;->A01:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 89206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:Lcom/facebook/ads/redexgen/X/ju;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ju;->A00(Lcom/facebook/ads/redexgen/X/ju;)Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89207
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89208
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A02:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A01:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:Lcom/facebook/ads/redexgen/X/ju;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ju;->A01(Lcom/facebook/ads/redexgen/X/ju;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 89211
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:Lcom/facebook/ads/redexgen/X/ju;

    .line 89212
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ju;->A00(Lcom/facebook/ads/redexgen/X/ju;)Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->AC3(Ljava/lang/String;Ljava/util/Map;)V

    .line 89213
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
