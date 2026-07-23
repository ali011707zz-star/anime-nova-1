.class public final Lcom/facebook/ads/redexgen/X/cI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cJ;->A09(Landroid/widget/FrameLayout;Lcom/facebook/ads/redexgen/X/Kr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Kr;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2668
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5siEYkdbttFpPpKGpl3QSuzD1TdUzqaY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "myaIheKQJ4XKLjb9jwKnfQPKdgb03x65"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7UC9gtjSNciDETfiVIuIcEpkShzxljy2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zUgtzOTCnewqlW3ay8eN5ZGY8omlP8wl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HCNRIc1Jq5CHui75"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5JldaPh0422ECqUrSdIW3CP66xzzDRpo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6NBLbo7bp32p6xzITlg23gMBc6vteD1q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6aVSVJl49uZRPmkaVoTjRyLu3FUElegz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cI;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cI;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cJ;Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78916
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cI;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/cI;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/cI;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cI;->A03:[Ljava/lang/String;

    const-string v1, "VNdWttTdUjFkQFP8JWlqZZM22OaN4Km2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "R7Bf4UcSP1AaUkuG6x1PRuhjomEl3ayd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xb

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cI;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x5at
        0x5et
        0x5bt
        0x5at
        0x4dt
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

    .line 78917
    .local v0, "this":Lcom/facebook/ads/redexgen/X/cI;
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cI;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    if-eqz v0, :cond_1

    .line 78918
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/cI;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 78919
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/cI;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/cI;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/cI;->A03:[Ljava/lang/String;

    const-string v1, "pv88L2Qv4olKMchOaCJJbvU1UVpDqKti"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "h7t7tL7arYQ0kU7vuWKWmfHlmY1cI4wR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
