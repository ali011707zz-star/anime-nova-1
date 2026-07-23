.class public final Lcom/facebook/ads/redexgen/X/2a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/ColorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9301
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    .line 9302
    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    .line 9303
    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    .line 9304
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)V
    .locals 1

    .line 9305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9306
    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    .line 9307
    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    .line 9308
    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    .line 9309
    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A03:[B

    .line 9310
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/androidx/media3/common/ColorInfo;Lcom/facebook/ads/redexgen/X/2Z;)V
    .locals 0

    .line 9311
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2a;-><init>(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)V

    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/2a;
    .locals 0

    .line 9312
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    .line 9313
    return-object p0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/2a;
    .locals 0

    .line 9314
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    .line 9315
    return-object p0
.end method

.method public final A02(I)Lcom/facebook/ads/redexgen/X/2a;
    .locals 0

    .line 9316
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    .line 9317
    return-object p0
.end method

.method public final A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    .locals 5

    .line 9318
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A03:[B

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;-><init>(III[B)V

    return-object v0
.end method
