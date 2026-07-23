.class public final Lcom/facebook/ads/redexgen/X/Kk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/Kk;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Kb;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Kb;)V
    .locals 0

    .line 48303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48304
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kk;->A00:I

    .line 48305
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Kk;->A01:Lcom/facebook/ads/redexgen/X/Kb;

    .line 48306
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kk;)I
    .locals 2

    .line 48307
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Kk;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Kk;->A00:I

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 48308
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kk;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kk;->A00(Lcom/facebook/ads/redexgen/X/Kk;)I

    move-result v0

    return v0
.end method
