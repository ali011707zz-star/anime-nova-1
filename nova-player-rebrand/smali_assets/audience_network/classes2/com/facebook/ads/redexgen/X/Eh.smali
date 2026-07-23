.class public abstract Lcom/facebook/ads/redexgen/X/Eh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Eg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/redexgen/X/Eh<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/qI;

.field public final A03:Lcom/facebook/ads/redexgen/X/pg;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/pg;I)V
    .locals 1

    .line 34860
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Eh;, "Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34861
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Eh;->A00:I

    .line 34862
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Eh;->A03:Lcom/facebook/ads/redexgen/X/pg;

    .line 34863
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Eh;->A01:I

    .line 34864
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/pg;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 34865
    return-void
.end method


# virtual methods
.method public abstract A08()I
.end method

.method public abstract A09(Lcom/facebook/ads/redexgen/X/Eh;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
