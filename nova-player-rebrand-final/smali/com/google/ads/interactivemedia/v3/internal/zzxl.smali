.class final Lcom/google/ads/interactivemedia/v3/internal/zzxl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private zza:[C

.field private zzb:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:[C

    array-length v0, v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 0
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zzb:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zzb:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final zza([C)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:[C

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zzb:Ljava/lang/String;

    return-void
.end method
