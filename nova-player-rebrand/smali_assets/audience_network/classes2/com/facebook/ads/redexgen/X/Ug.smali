.class public final Lcom/facebook/ads/redexgen/X/Ug;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Y3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchLocation"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/UU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UU;II)V
    .locals 0

    .line 68039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68040
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A02:Lcom/facebook/ads/redexgen/X/UU;

    .line 68041
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    .line 68042
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    .line 68043
    return-void
.end method
