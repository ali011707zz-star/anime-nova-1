.class public final Lcom/facebook/ads/redexgen/X/Lb;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 991
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tEEVNd46OYTAYJSvyZnVijwEJ9mxfgyG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BJ13dc7vhZee7KVmjVySYl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uE9iMCRF0OSjC6XoeKPzOCY04vXFo0vs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DUz1uNpjuvZzd5dAiuCT4alZ5wEF4BPh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "e8UGMtu5263EOY4JBlmpZ4vkWui3yNma"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jevJBWsVVFh2OOXdK4BBnA9fQcBAm7nu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BtKAl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xnRt56CD5b22yVN7z7QNi6lTzhm5niaa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Lb;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lb;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lb;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lb;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lb;->A01:[Ljava/lang/String;

    const-string v1, "03i3f9u06CqTOPMXzFUkxIwTnPnoVd6c"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    xor-int/2addr v3, p2

    xor-int/lit8 v0, v3, 0x64

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 50496
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 50497
    .local v0, "dotIndex":I
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 50498
    .local v1, "slashIndex":I
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    if-le v2, v1, :cond_0

    add-int/lit8 v0, v2, 0x2

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 50499
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 50500
    :goto_0
    return-object v0

    .line 50501
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lb;->A00(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lb;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A03(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 50502
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50503
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50504
    .local v1, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lb;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
