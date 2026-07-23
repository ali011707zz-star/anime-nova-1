.class public final Lcom/facebook/ads/redexgen/X/JO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/mp4/Track$Transformation;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/redexgen/X/qI;

.field public final A08:[J

.field public final A09:[J

.field public final A0A:[Lcom/facebook/ads/redexgen/X/JP;


# direct methods
.method public constructor <init>(IIJJJLcom/facebook/ads/redexgen/X/qI;I[Lcom/facebook/ads/redexgen/X/JP;I[J[J)V
    .locals 0

    .line 42905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42906
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JO;->A00:I

    .line 42907
    iput p2, p0, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    .line 42908
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    .line 42909
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/JO;->A05:J

    .line 42910
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/JO;->A04:J

    .line 42911
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    .line 42912
    iput p10, p0, Lcom/facebook/ads/redexgen/X/JO;->A02:I

    .line 42913
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/JO;->A0A:[Lcom/facebook/ads/redexgen/X/JP;

    .line 42914
    iput p12, p0, Lcom/facebook/ads/redexgen/X/JO;->A01:I

    .line 42915
    iput-object p13, p0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    .line 42916
    iput-object p14, p0, Lcom/facebook/ads/redexgen/X/JO;->A09:[J

    .line 42917
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/JP;
    .locals 1

    .line 42918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JO;->A0A:[Lcom/facebook/ads/redexgen/X/JP;

    if-nez v0, :cond_0

    .line 42919
    const/4 v0, 0x0

    .line 42920
    :goto_0
    return-object v0

    .line 42921
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JO;->A0A:[Lcom/facebook/ads/redexgen/X/JP;

    aget-object v0, v0, p1

    goto :goto_0
.end method
