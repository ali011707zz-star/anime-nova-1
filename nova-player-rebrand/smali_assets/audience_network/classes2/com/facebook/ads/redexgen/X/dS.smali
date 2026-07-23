.class public final Lcom/facebook/ads/redexgen/X/dS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5F;->A0T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2713
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aSVeS7GSTPGzGlwxFERzGOUaCHJkzI2z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LLGylRAhThVIhIHAbih9tPBDCPjYJ3wk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dAcv7uC7M3KkKHminzJu7oFLvmyzwOeo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9GvayoE6VvkK0xgQDuyzQgqlx5rjdrnu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wDDK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nNoIeo5hKMcMuIwTTSmTqlLWYr2HGCGs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Kjjrp4DquliSLC6MHV0dGTx7o2b6nbq3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WO7dkLjdWbLrsRFVrNnfWInSuw6lOMDM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dS;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/dS;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80179
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dS;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/dS;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/dS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/dS;->A02:[Ljava/lang/String;

    const-string v1, "ZS6NMOZ5iivoiIhrEAHYVVuLQariJbL8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "6wgrAttfPWhTSI4WoHgDbqlH426fwJ7f"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

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
    .locals 4

    const/4 v0, 0x7

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/dS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/dS;->A02:[Ljava/lang/String;

    const-string v1, "vsVzmfSe1AoNrvloOTDnivjLsCV7rctR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zSqcVhdNlZdzdn2RltwvtxLuLIPpuSoH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/dS;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x36t
        -0x3bt
        -0x3bt
        -0x3et
        -0x48t
        -0x49t
        -0x38t
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 80180
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dS;
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dS;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0n(Lcom/facebook/ads/redexgen/X/5F;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80181
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dS;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0H(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/cd;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cd;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 80182
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dS;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0I(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ACQ()V

    .line 80183
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dS;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
