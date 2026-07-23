.class public final Lcom/facebook/ads/redexgen/X/LD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/LC;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/LC;",
            ">;[B)V"
        }
    .end annotation

    .line 49487
    .local p3, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49488
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LD;->A00:I

    .line 49489
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LD;->A01:Ljava/lang/String;

    .line 49490
    if-nez p3, :cond_0

    .line 49491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 49492
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LD;->A02:Ljava/util/List;

    .line 49493
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/LD;->A03:[B

    .line 49494
    return-void

    .line 49495
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
