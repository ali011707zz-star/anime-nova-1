.class public final Lcom/facebook/ads/redexgen/X/Pj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/Pn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Pn;Lcom/facebook/ads/redexgen/X/Pn;)I
    .locals 2

    .line 58183
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Pn;->A02:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Pn;->A02:I

    sub-int/2addr v1, v0

    return v1
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

    .line 58184
    check-cast p1, Lcom/facebook/ads/redexgen/X/Pn;

    check-cast p2, Lcom/facebook/ads/redexgen/X/Pn;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Pj;->A00(Lcom/facebook/ads/redexgen/X/Pn;Lcom/facebook/ads/redexgen/X/Pn;)I

    move-result v0

    return v0
.end method
