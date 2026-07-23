.class public final Lcom/facebook/ads/redexgen/X/El;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/nE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Definition"
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/pg;

.field public final A02:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/El;->A01()V

    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/pg;[I)V
    .locals 1

    .line 35117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/El;-><init>(Lcom/facebook/ads/redexgen/X/pg;[II)V

    .line 35118
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pg;[II)V
    .locals 5

    .line 35119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35120
    array-length v0, p2

    if-nez v0, :cond_0

    .line 35121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd

    const/16 v1, 0x1c

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35122
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/pg;

    .line 35123
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/El;->A02:[I

    .line 35124
    iput p3, p0, Lcom/facebook/ads/redexgen/X/El;->A00:I

    .line 35125
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/El;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x52

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

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/El;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0xbt
        0x4t
        0x3t
        -0xct
        0x15t
        0x16t
        0x19t
        0x1et
        0x19t
        0x24t
        0x19t
        0x1ft
        0x1et
        0x3t
        0x2bt
        0x2et
        0x32t
        0x37t
        -0x22t
        0x32t
        0x30t
        0x1ft
        0x21t
        0x29t
        0x31t
        -0x22t
        0x1ft
        0x30t
        0x23t
        -0x22t
        0x2ct
        0x2dt
        0x32t
        -0x22t
        0x1ft
        0x2at
        0x2at
        0x2dt
        0x35t
        0x23t
        0x22t
    .end array-data
.end method
