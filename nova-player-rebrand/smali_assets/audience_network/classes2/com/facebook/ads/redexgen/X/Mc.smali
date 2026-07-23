.class public final Lcom/facebook/ads/redexgen/X/Mc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MW;->A0b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MW;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mc;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52186
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mc;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mc;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3e

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

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Mc;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x24t
        0x30t
        0x31t
        0x2at
        0x26t
        0x29t
        0x2ct
        0x26t
        0x2et
    .end array-data
.end method


# virtual methods
.method public final ADS()V
    .locals 5

    .line 52187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mc;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0Z(Lcom/facebook/ads/redexgen/X/MW;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mc;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0a(Lcom/facebook/ads/redexgen/X/MW;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52188
    :cond_0
    return-void

    .line 52189
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Mc;->A00:Lcom/facebook/ads/redexgen/X/MW;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0U(Lcom/facebook/ads/redexgen/X/MW;ZLjava/lang/String;)V

    .line 52190
    return-void
.end method

.method public final AFV(F)V
    .locals 0

    .line 52191
    return-void
.end method
