.class public final Lcom/facebook/ads/redexgen/X/b2;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebChromeClientImpl"
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2623
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qIelJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lKTIcg2UjfF14Z8Xhui"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NLc2w0oJuVItZcslj1CIxITo5xRh8cik"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7h0SW3CZf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7u0iJws4mJjRjrjcNYguso1ZQWILKCjj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5VZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KSQwjaQJUqtoICfJeANBQIZfUxb6Ta6M"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WWxpfzOlcldolHheyTOG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b2;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b2;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77204
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/b2;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/b2;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/b2;->A01:[Ljava/lang/String;

    const-string v1, "CG0OpRrZpH4z5OjNzt5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "sch"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x25

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b2;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x63t
        -0x37t
        -0x38t
        -0x33t
        -0x37t
        -0x3at
        -0x41t
        0x7at
        -0x39t
        -0x41t
        -0x33t
        -0x33t
        -0x45t
        -0x3ft
        -0x41t
        -0x6ct
        0x7at
        -0x27t
        -0x4t
        -0x12t
        -0xft
        -0xat
        -0x5t
        -0xct
        -0x53t
        -0x3t
        -0x1t
        -0x4t
        -0xct
        -0x1t
        -0xet
        0x0t
        0x0t
        -0x39t
        -0x53t
    .end array-data
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .line 77205
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77207
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .line 77208
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    const/16 v1, 0x12

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77210
    :cond_0
    return-void
.end method
