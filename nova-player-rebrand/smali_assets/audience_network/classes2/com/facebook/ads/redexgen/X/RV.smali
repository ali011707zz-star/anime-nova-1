.class public final Lcom/facebook/ads/redexgen/X/RV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RW;->A01()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RW;

.field public final synthetic A01:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1615
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "I2VmByDixuV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bEgjeHiCKL8bN0Y2xmhvt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ep8bZoaW9qgdmenOEM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "U1x4f2Mle4YpVecP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6pFKFCdnQFQQrPpkBrBSvGNPTjtJIqqH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uR6rFONyTXbT3WTsrhnl74"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HWYTd9Yr1UQKCKQrjsxmT8cIIu2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gbeo1KbNmS02dvrZyrXpgnCOAkkwIw0y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RV;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RW;Ljava/lang/Thread;)V
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

    .line 62337
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RV;->A00:Lcom/facebook/ads/redexgen/X/RW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RV;->A01:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Ljava/lang/Thread;Ljava/lang/Thread;)I
    .locals 4

    .line 62338
    if-ne p1, p2, :cond_1

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/RV;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/RV;->A02:[Ljava/lang/String;

    const-string v1, "KlossopSTK0WgZ36dTrk3tViYspVBMBU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62339
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A01:Ljava/lang/Thread;

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    return v0

    .line 62340
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A01:Ljava/lang/Thread;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 62341
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 62342
    check-cast p1, Ljava/lang/Thread;

    check-cast p2, Ljava/lang/Thread;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RV;->A00(Ljava/lang/Thread;Ljava/lang/Thread;)I

    move-result v0

    return v0
.end method
