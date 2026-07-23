.class public final enum Lcom/facebook/ads/redexgen/X/Cf;
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


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 684
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "n7SKlqK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ov2fNltgQ2EAr85rcAXjQlotsfjsnjuH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ovWB89LlYvQ4xO5HZfV2GFW4RL9XN4h2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "w8d2diIE5BdvGUn1gxyTHp0hEgENQTV7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yQnpH44oXSx8ccz3NjdKCULhtA2Hxjvh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "86uwoduXnLYKbsdqFVwkHHSOZ5iH2tHE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "J0bksEA3Nc1mI6xnOvQtusRgBbL88ZUJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XzqVLub6oNjkAstpNhW0t4rN94XX0A8D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A00:[Ljava/lang/String;

    return-void
.end method

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

    .line 32291
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/gI;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/gH;)V

    return-void
.end method


# virtual methods
.method public final A05(Lorg/json/JSONArray;I)Z
    .locals 8

    .line 32292
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 32293
    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v3

    cmpl-double v0, v6, v3

    if-nez v0, :cond_1

    .line 32294
    invoke-virtual {p1, p2, v5}, Lorg/json/JSONArray;->optInt(II)I

    move-result v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cf;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v3, v3, v0

    const/16 v0, 0x1f

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x68

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cf;->A00:[Ljava/lang/String;

    const-string v3, "ESUjQDK13szqjYK8RJAQddjghxYzdQOh"

    const/4 v0, 0x4

    aput-object v3, v4, v0

    int-to-double v3, v6

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v1

    cmpl-double v0, v3, v1

    if-nez v0, :cond_1

    const/4 v5, 0x1

    .line 32295
    :cond_1
    return v5
.end method

.method public final A06(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z
    .locals 2

    .line 32296
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->optInt(I)I

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
    .locals 8

    .line 32297
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 32298
    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v0, v6, v3

    if-nez v0, :cond_1

    .line 32299
    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Cf;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v4, v0

    const/4 v0, 0x2

    aget-object v4, v4, v0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cf;->A00:[Ljava/lang/String;

    const-string v3, "ksANhPg"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    int-to-double v3, v6

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    cmpl-double v0, v3, v1

    if-nez v0, :cond_1

    const/4 v5, 0x1

    .line 32300
    :cond_1
    return v5
.end method

.method public final A08(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    .line 32301
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
