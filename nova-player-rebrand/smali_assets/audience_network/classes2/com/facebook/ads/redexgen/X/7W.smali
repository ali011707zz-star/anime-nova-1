.class public final Lcom/facebook/ads/redexgen/X/7W;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "NEW_CLASS"
    }
    value = "D63737392: Class for performance negative testing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/7V;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/7V;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 473
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uumaDejXtY9QuA71Txc6KqwcrEMmZNPm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dsya3x18X7BukkIokO15GhTYLGiL2hRr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RNehmKATQ4InJCkQYMjQTj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eAq9FO9dhgnzxwHSxHo7MGMv1ckJfF3W"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rfJrIe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7W;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7W;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 21162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7W;->A00:Ljava/util/Map;

    .line 21164
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 21165
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 21166
    .local v0, "configArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 21167
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 21168
    .local v2, "configItem":Lorg/json/JSONObject;
    const/16 v2, 0x11

    const/16 v1, 0x8

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 21169
    .local v3, "position":I
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 21170
    .local v4, "baseLatency":I
    const/16 v2, 0xb

    const/4 v1, 0x6

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 21171
    .local v5, "jitter":I
    const/16 v2, 0x19

    const/16 v1, 0xc

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 21172
    .local v6, "samplingRate":I
    new-instance v2, Lcom/facebook/ads/redexgen/X/7V;

    invoke-direct {v2, p0, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/7V;-><init>(Lcom/facebook/ads/redexgen/X/7W;III)V

    .line 21173
    .local v7, "config":Lcom/facebook/ads/redexgen/X/7V;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7W;->A00:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21174
    .end local v2    # "configItem":Lorg/json/JSONObject;
    .end local v3    # "position":I
    .end local v4    # "baseLatency":I
    .end local v5    # "jitter":I
    .end local v6    # "samplingRate":I
    .end local v7    # "config":Lcom/facebook/ads/redexgen/X/7V;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21175
    :catch_0
    :cond_1
    return-void

    .line 21176
    :cond_2
    :goto_1
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/7W;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    xor-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/7W;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7W;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7W;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x9t
        0x1bt
        0xdt
        0x24t
        0x9t
        0x1ct
        0xdt
        0x6t
        0xbt
        0x11t
        0x1ct
        0x3ft
        0x22t
        0x22t
        0x33t
        0x24t
        0x5ft
        0x60t
        0x7ct
        0x66t
        0x7bt
        0x66t
        0x60t
        0x61t
        0xct
        0x3et
        0x32t
        0x2ft
        0x33t
        0x36t
        0x31t
        0x38t
        0xdt
        0x3et
        0x2bt
        0x3at
    .end array-data
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/7V;
    .locals 3

    .line 21177
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7W;->A00:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7W;->A00:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7V;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
