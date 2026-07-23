.class public final Lcom/facebook/ads/redexgen/X/GV;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4V;->A0B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4V;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 751
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ziFc1AxLwl06l9cm2ro8EEkTqcfxuLTc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ot3h47XlIqwqlb0VDKX34tYNREgAb88h"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XErmhi3UBKLFfekLEXmFG5T5AXnu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x4ahbzSdp8w2tJq97wkZytqruvrbxvGd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5eNtQA6JlDjBFR49aczWqHsgt2phfPFu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5gzf4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tgwS2khKEZgsCudiehRL6tpdm2kFQW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Wy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GV;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37151
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GV;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A02:[Ljava/lang/String;

    const-string v1, "VyWbJGKy3Ebs7lO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x3et
        0x1t
        0xct
        0xdt
        0x7t
        0x48t
        0x6t
        0xdt
        0x1et
        0xdt
        0x1at
        0x48t
        0x1bt
        0x1ct
        0x9t
        0x1at
        0x1ct
        0xdt
        0xct
        0x48t
        0x18t
        0x4t
        0x9t
        0x11t
        0x1t
        0x6t
        0xft
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 37152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A0V(Lcom/facebook/ads/redexgen/X/4V;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37153
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GV;->A00:Lcom/facebook/ads/redexgen/X/4V;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4V;->A0M(Lcom/facebook/ads/redexgen/X/4V;Ljava/lang/String;)V

    .line 37154
    :cond_0
    return-void
.end method
