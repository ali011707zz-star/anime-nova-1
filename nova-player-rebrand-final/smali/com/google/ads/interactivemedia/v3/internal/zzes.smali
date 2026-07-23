.class public final Lcom/google/ads/interactivemedia/v3/internal/zzes;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzub;

.field private final zzb:F


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzes;->zzb:F

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzes;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    return-void
.end method


# virtual methods
.method final synthetic zzb(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/ImageSize;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ImageSize;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ImageSize;->height()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzes;->zzb:F

    .line 5
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzsj;->$r8$clinit:I

    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v0

    .line 6
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v4, v6

    if-lez v4, :cond_2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    float-to-int v0, v1

    const/4 v1, 0x1

    .line 10
    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method
