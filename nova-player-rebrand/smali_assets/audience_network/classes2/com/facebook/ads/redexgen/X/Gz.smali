.class public final Lcom/facebook/ads/redexgen/X/Gz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/H2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampSearchResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult$Type;
    }
.end annotation


# static fields
.field public static final A03:Lcom/facebook/ads/redexgen/X/Gz;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 766
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gz;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gz;-><init>(IJJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gz;->A03:Lcom/facebook/ads/redexgen/X/Gz;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 38230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38231
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gz;->A00:I

    .line 38232
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Gz;->A02:J

    .line 38233
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Gz;->A01:J

    .line 38234
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Gz;)I
    .locals 0

    .line 38235
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Gz;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Gz;)J
    .locals 1

    .line 38236
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Gz;->A02:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Gz;)J
    .locals 1

    .line 38237
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Gz;->A01:J

    return-wide v0
.end method

.method public static A03(J)Lcom/facebook/ads/redexgen/X/Gz;
    .locals 4

    .line 38238
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gz;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gz;-><init>(IJJ)V

    return-object v0
.end method

.method public static A04(JJ)Lcom/facebook/ads/redexgen/X/Gz;
    .locals 2

    .line 38239
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gz;

    const/4 v1, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gz;-><init>(IJJ)V

    return-object v0
.end method

.method public static A05(JJ)Lcom/facebook/ads/redexgen/X/Gz;
    .locals 2

    .line 38240
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gz;

    const/4 v1, -0x2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gz;-><init>(IJJ)V

    return-object v0
.end method
