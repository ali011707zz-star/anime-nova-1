.class public final Lcom/facebook/ads/redexgen/X/I1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5F;->A0g(Ljava/lang/String;)V
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

    .line 802
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BeK4HZWWIRhrC207wWuIOn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZxUaKMHZMCvHIxTDkc1UvZSYXikI2iYM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xy0Ab8m7NOX4ZRxTfyGPwRY1TRrgVPC4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ij8auLNb9rfA8yI55JUjNirWgnYpCp0M"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "e9T4yeifuMgQg3dKDn6E2LsVBs4fgiHR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ibrxpSG6qut0wBAmR6wSiB8exNotCqiu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LMYPYXdb4SaVI93FsN1uYFih9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8N3vGs6nddgUWUG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/I1;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/I1;->A01()V

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

    .line 40043
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/I1;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A02:[Ljava/lang/String;

    const-string v1, "F3dYTVgRpzEGoEWMN2T8FFCtbrhRHRBi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x63

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

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/I1;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x15t
        0x13t
        0x5t
        0x12t
        0x3ft
        0xet
        0x1t
        0x16t
        0x9t
        0x7t
        0x1t
        0x14t
        0x9t
        0xft
        0xet
        0x3ft
        0x9t
        0x1t
        0x2t
    .end array-data
.end method


# virtual methods
.method public final AF7(Ljava/lang/String;)V
    .locals 2

    .line 40044
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0t(Lcom/facebook/ads/redexgen/X/5F;Z)Z

    .line 40045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0F(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 40046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0F(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 40047
    return-void
.end method

.method public final AF9(Ljava/lang/String;)V
    .locals 5

    .line 40048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/5F;->A0t(Lcom/facebook/ads/redexgen/X/5F;Z)Z

    .line 40049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0F(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 40050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0E(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->setUrl(Ljava/lang/String;)V

    .line 40051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0p(Lcom/facebook/ads/redexgen/X/5F;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    sget-object v1, Lcom/facebook/ads/redexgen/X/I1;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A02:[Ljava/lang/String;

    const-string v1, "LFtEVX0D7i5Pos5vlgnVVb1H7Q5y"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5F;->A04(Lcom/facebook/ads/redexgen/X/5F;)I

    move-result v0

    if-le v0, v4, :cond_1

    .line 40052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/5F;->A0u(Lcom/facebook/ads/redexgen/X/5F;Z)Z

    .line 40053
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0d(Lcom/facebook/ads/redexgen/X/5F;Ljava/lang/String;)V

    .line 40054
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A05(Lcom/facebook/ads/redexgen/X/5F;)I

    .line 40055
    return-void
.end method

.method public final AFY(I)V
    .locals 1

    .line 40056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0o(Lcom/facebook/ads/redexgen/X/5F;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0F(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 40058
    :cond_0
    return-void
.end method

.method public final AFb(Ljava/lang/String;)V
    .locals 1

    .line 40059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0E(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->setTitle(Ljava/lang/String;)V

    .line 40060
    return-void
.end method

.method public final AFe()V
    .locals 2

    .line 40061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/5F;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->ADJ(I)V

    .line 40062
    return-void
.end method
