.class final Lcom/google/android/gms/internal/ads/zzhjn;
.super Lcom/google/android/gms/internal/ads/zzhbp;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhqy;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhqy;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhbp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhjn;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhjn;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjn;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhjn;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    .line 2
    :cond_0
    const-string v1, "CRUNCHY"

    goto :goto_0

    :cond_1
    const-string v1, "RAW"

    goto :goto_0

    :cond_2
    const-string v1, "LEGACY"

    goto :goto_0

    :cond_3
    const-string v1, "TINK"

    .line 1
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    const-string v0, "(typeUrl=%s, outputPrefixType=%s)"

    .line 2
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjn;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
