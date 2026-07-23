.class public final Lcom/facebook/ads/redexgen/X/J8;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/d4;->A09()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/d4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/J8;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/d4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42252
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/d4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/J8;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x72

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

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/J8;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0x68t
        0x65t
        0x64t
        0x6et
        0x21t
        0x76t
        0x60t
        0x72t
        0x21t
        0x6ft
        0x64t
        0x77t
        0x64t
        0x73t
        0x21t
        0x71t
        0x73t
        0x64t
        0x71t
        0x60t
        0x73t
        0x64t
        0x65t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 42253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/d4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d4;->A0J(Lcom/facebook/ads/redexgen/X/d4;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42254
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/d4;

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/d4;->A0G(Lcom/facebook/ads/redexgen/X/d4;Ljava/lang/String;)V

    .line 42255
    :cond_0
    return-void
.end method
