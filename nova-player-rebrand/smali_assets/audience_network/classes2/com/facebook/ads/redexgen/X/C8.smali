.class public final Lcom/facebook/ads/redexgen/X/C8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public A03:[B

.field public A04:[B

.field public final A05:Landroid/net/Uri;

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 31848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31849
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Ljava/lang/String;

    .line 31850
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Landroid/net/Uri;

    .line 31851
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/C8;
    .locals 0

    .line 31852
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:Ljava/lang/String;

    .line 31853
    return-object p0
.end method

.method public final A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/C8;
    .locals 0

    .line 31854
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:Ljava/lang/String;

    .line 31855
    return-object p0
.end method

.method public final A02(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/C8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/C8;"
        }
    .end annotation

    .line 31856
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/StreamKey;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:Ljava/util/List;

    .line 31857
    return-object p0
.end method

.method public final A03([B)Lcom/facebook/ads/redexgen/X/C8;
    .locals 0

    .line 31858
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:[B

    .line 31859
    return-object p0
.end method

.method public final A04([B)Lcom/facebook/ads/redexgen/X/C8;
    .locals 0

    .line 31860
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C8;->A04:[B

    .line 31861
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;
    .locals 10

    .line 31862
    new-instance v1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Landroid/net/Uri;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:Ljava/lang/String;

    .line 31863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:Ljava/util/List;

    :goto_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/C8;->A04:[B

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:[B

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;[BLjava/lang/String;[BLcom/facebook/ads/redexgen/X/C7;)V

    .line 31864
    return-object v1

    .line 31865
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A03()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v5

    goto :goto_0
.end method
