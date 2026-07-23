.class public final Lcom/facebook/ads/redexgen/X/84;
.super Lcom/facebook/ads/redexgen/X/kH;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 493
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FXNBCWXiStej7hPExkUYAqHU7xYJWQz0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9V456DvY4LqOh9I9hdT7Vdo5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hY2FptqSd7XbZZsJCz2yOGxQcUuE9Eo6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F2N3RsuOcTrAQaEUExDI4U65CqttWDRl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hYiRMwjZqKFmNKhRfgQ6FfhFwFErfvFO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BBwXtDWFWjLC6NycZYUWGAP3M0YJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/84;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/84;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/84;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/84;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/N0;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/N0;",
            "Z)V"
        }
    .end annotation

    .line 22176
    .local p5, "mExtraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v3, p3

    move v5, p7

    move-object v2, p2

    move-object v4, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/kH;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N0;Z)V

    .line 22177
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/84;->A00:Landroid/net/Uri;

    .line 22178
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/84;->A01:Ljava/util/Map;

    .line 22179
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/84;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

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
    .locals 3

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/84;->A02:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/84;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/84;->A03:[Ljava/lang/String;

    const-string v1, "n2WgzR0RMCkX50JDMRkryQ8YygezODnU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Oz9myBlwI7NBoyftyrFAavzWMm25M0Ie"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x64t
        -0x49t
        -0x41t
        -0x3et
        -0x45t
        -0x46t
        0x76t
        -0x36t
        -0x3bt
        0x76t
        -0x3bt
        -0x3at
        -0x45t
        -0x3ct
        0x76t
        -0x3et
        -0x41t
        -0x3ct
        -0x3ft
        0x76t
        -0x35t
        -0x38t
        -0x3et
        -0x70t
        0x76t
        -0x2dt
        -0x30t
        -0x2bt
        -0x2et
    .end array-data
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/Mq;
    .locals 3

    .line 22180
    sget-object v2, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 22181
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A03:Z

    if-eqz v0, :cond_0

    .line 22182
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/84;->A0M()Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v2

    .line 22183
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A01:Ljava/util/Map;

    .line 22184
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0i(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Mq;Ljava/util/Map;)Z

    move-result v0

    .line 22185
    .local v1, "clickFilteringEnabled":Z
    if-nez v0, :cond_1

    .line 22186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A01:Ljava/util/Map;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/kH;->A0J(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Mq;)V

    .line 22187
    :cond_1
    return-object v2
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/Mq;
    .locals 6

    .line 22188
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A00:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kH;->A0K(Landroid/net/Uri;)Z

    move-result v0

    .line 22189
    .local v1, "redirectedToApp":Z
    if-eqz v0, :cond_0

    .line 22190
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A0A:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0

    .line 22191
    :cond_0
    :try_start_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/84;->A00:Landroid/net/Uri;

    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 22192
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A01:Ljava/util/Map;

    .line 22193
    invoke-static {v5, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A06(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    .line 22194
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22195
    .local v2, "ex":Ljava/lang/Exception;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/84;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22196
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A04:Lcom/facebook/ads/redexgen/X/Mq;

    .line 22197
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
