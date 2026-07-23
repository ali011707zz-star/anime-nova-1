.class public abstract Lcom/facebook/ads/redexgen/X/O0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1464
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8XYGd5ZHSKJUGKcOBZRj1wh994qBk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BxRxgsb39CeS8gUybSCvfMthfoa7WN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MbLF7RBGQJ5IZlZwsL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5COIZmJumnkEkrhpQeQyhRhZGCLVsyVV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KxSUW8Yx0pGLd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vVb3IVkHxruGPbcu6dN9QNWQiYSW5FCa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S8VYx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aJn40"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/O0;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/NQ;Lcom/facebook/ads/redexgen/X/Sx;Ljava/lang/String;)V
    .locals 7

    .line 55200
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55201
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A05()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55202
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A04()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/O0;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/O0;->A00:[Ljava/lang/String;

    const-string v1, "IYXFBoSH0TRoN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v3, :cond_0

    .line 55203
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A03()I

    move-result v0

    if-lez v0, :cond_0

    .line 55204
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55205
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A05()Ljava/lang/String;

    move-result-object v3

    .line 55206
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A03()I

    move-result v0

    int-to-float v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v1, v0

    float-to-int v4, v1

    .line 55207
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A04()I

    move-result v0

    int-to-float v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v1, v0

    float-to-int v5, v1

    .line 55208
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v6

    move-object p0, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55209
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55210
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
