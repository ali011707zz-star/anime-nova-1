.class public final enum Lcom/facebook/ads/redexgen/X/Cg;
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

    .line 685
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1ZkmGDQLr4HHzESqnZwtiaJskrCoCdgr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZuXKvCVbKiCO09p9pYqDyLAizJSm2C6Q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nueEAEfgKP3aoalcvcV3IYW8uca"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZSO21PM30lkMK5VtmFwCGRnC4HfRl6Ua"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ewMxBq6LlUCdKuikxzCZkjc2M9R"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JDKZd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VKrSZQCGjlRNXLKdswkZgNPUMacPzyqz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RC4irD47U"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cg;->A00:[Ljava/lang/String;

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

    .line 32302
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/gI;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/gH;)V

    return-void
.end method


# virtual methods
.method public final A05(Lorg/json/JSONArray;I)Z
    .locals 8

    .line 32303
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 32304
    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v3

    cmpl-double v0, v6, v3

    if-nez v0, :cond_0

    .line 32305
    invoke-virtual {p1, p2, v5}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    int-to-double v3, v0

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v1

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 32306
    :cond_0
    return v5
.end method

.method public final A06(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z
    .locals 5

    .line 32307
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    cmpl-double v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 8

    .line 32308
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 32309
    const-wide/16 v3, 0x0

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cg;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cg;->A00:[Ljava/lang/String;

    const-string v1, "ccqqHA83ZTWiIg3HPQbc0aiXb2J"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9RASlEbgrOZWYduHYKXmEPevqLf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    cmpl-double v0, v6, v1

    if-nez v0, :cond_1

    .line 32310
    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v1, v0

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v0, v1, v3

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    .line 32311
    :cond_1
    return v5
.end method

.method public final A08(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 5

    .line 32312
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    cmpl-double v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
