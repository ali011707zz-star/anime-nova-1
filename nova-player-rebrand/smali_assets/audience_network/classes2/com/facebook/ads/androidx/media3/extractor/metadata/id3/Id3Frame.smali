.class public abstract Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 98673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98674
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    .line 98675
    return-void
.end method


# virtual methods
.method public final synthetic A9a()[B
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3E;->A01(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A9b()Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3E;->A00(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 98676
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98677
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    return-object v0
.end method
