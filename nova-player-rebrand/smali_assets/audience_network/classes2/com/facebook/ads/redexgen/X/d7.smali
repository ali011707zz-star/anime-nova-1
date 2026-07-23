.class public final Lcom/facebook/ads/redexgen/X/d7;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/dC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicWebChromeClient"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dC;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2681
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hD342XNQVEXChvJ41FuJYkzzL30E7V8C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VFqqxEswv4BXF4BUDT4NnG4IAUyY785"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "G3ZSvK9EmqC1e5u7Ivg7hdOkIQzdfa68"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vFWJ81dDNXk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PGv8G8TosU31EXJAVb0WhvumqcSTUHDE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JPUBUdUfGKDjW9Qe8mrAO5frWlzvQ1oz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qcwfoFOZSGXVTY97XWLRaEh5jd9GG5ia"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FIykCHI4yyfel4YrSgGCK0Zn6vKmeZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/d7;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/d7;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 79587
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d7;->A00:Lcom/facebook/ads/redexgen/X/dC;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/dC;Lcom/facebook/ads/redexgen/X/d5;)V
    .locals 0

    .line 79588
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/d7;-><init>(Lcom/facebook/ads/redexgen/X/dC;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/d7;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/d7;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x45t
        0x42t
        0x49t
        0x62t
        0x59t
        0x41t
        0x4et
        0x49t
        0x5et
        0x27t
        0x2ft
        0x39t
        0x39t
        0x2bt
        0x2dt
        0x2ft
        0x76t
        0x6at
        0x70t
        0x77t
        0x66t
        0x60t
        0x4ct
        0x61t
    .end array-data
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .line 79589
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v1, v0, :cond_0

    .line 79590
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 79591
    .local v0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xa

    const/4 v1, 0x7

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d7;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79592
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d7;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79593
    const/16 v2, 0x11

    const/16 v1, 0x8

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d7;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79594
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79595
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d7;->A00:Lcom/facebook/ads/redexgen/X/dC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dC;->A04(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0N:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 79596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d7;->A00:Lcom/facebook/ads/redexgen/X/dC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dC;->A05(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/cz;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A14:I

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/cz;->A04(ILjava/lang/String;)V

    .line 79597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d7;->A00:Lcom/facebook/ads/redexgen/X/dC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dC;->A03(Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A69(Ljava/lang/String;)V

    .line 79598
    .end local v0    # "error":Lorg/json/JSONObject;
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/d7;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/d7;->A02:[Ljava/lang/String;

    const-string v1, "bhT1kVUsfNz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
