.class public final Lcom/facebook/ads/redexgen/X/Gq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/Ac3Util$SyncFrameInfo$StreamType;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    .line 37785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37786
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gq;->A06:Ljava/lang/String;

    .line 37787
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gq;->A05:I

    .line 37788
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Gq;->A01:I

    .line 37789
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Gq;->A04:I

    .line 37790
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Gq;->A02:I

    .line 37791
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Gq;->A03:I

    .line 37792
    iput p7, p0, Lcom/facebook/ads/redexgen/X/Gq;->A00:I

    .line 37793
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIIILcom/facebook/ads/redexgen/X/Go;)V
    .locals 0

    .line 37794
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Gq;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method
