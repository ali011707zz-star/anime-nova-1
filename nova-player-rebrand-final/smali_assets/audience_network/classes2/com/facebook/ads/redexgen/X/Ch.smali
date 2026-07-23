.class public final enum Lcom/facebook/ads/redexgen/X/Ch;
.super Lcom/facebook/ads/redexgen/X/gI;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/gI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 32313
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/gI;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/gH;)V

    return-void
.end method


# virtual methods
.method public final A05(Lorg/json/JSONArray;I)Z
    .locals 3

    .line 32314
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    if-ne v1, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final A06(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z
    .locals 2

    .line 32315
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v1

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 3

    .line 32316
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v1, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final A08(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    .line 32317
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
