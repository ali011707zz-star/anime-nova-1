.class public final Lcom/facebook/ads/redexgen/X/Ki;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/Ki;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Kj;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 933
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qTeBguUhuyM1MFes5Wth7HwI8JVW0esL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wy2OEDVCsbs7Li1HpnMScgVTk8nNd5Di"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CU9fduzhq9VQNbJmZcJcyCUxTgO6nbWs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "s"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JcGduWYdz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iAKvMVZDfF33p8y0i7fbnjg8iQoR6jrx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ki;->A02:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Kh;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Kj;I)V
    .locals 0

    .line 48272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48273
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/Kj;

    .line 48274
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ki;->A00:I

    .line 48275
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Kj;ILcom/facebook/ads/redexgen/X/Kg;)V
    .locals 0

    .line 48276
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ki;-><init>(Lcom/facebook/ads/redexgen/X/Kj;I)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ki;)I
    .locals 0

    .line 48277
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ki;Lcom/facebook/ads/redexgen/X/Ki;)I
    .locals 1

    .line 48278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/Kj;

    iget p0, v0, Lcom/facebook/ads/redexgen/X/Kj;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/Kj;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Kj;->A00:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ki;)Lcom/facebook/ads/redexgen/X/Kj;
    .locals 0

    .line 48279
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/Kj;

    return-object p0
.end method

.method public static synthetic A03()Ljava/util/Comparator;
    .locals 4

    .line 48280
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ki;->A03:Ljava/util/Comparator;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ki;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ki;->A02:[Ljava/lang/String;

    const-string v1, "h"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "u"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method
