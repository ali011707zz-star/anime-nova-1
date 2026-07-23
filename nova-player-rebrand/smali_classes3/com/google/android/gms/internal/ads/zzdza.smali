.class final Lcom/google/android/gms/internal/ads/zzdza;
.super Lcom/google/android/gms/internal/ads/zzdze;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:J

.field private zzb:I

.field private zzc:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdze;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(J)Lcom/google/android/gms/internal/ads/zzdze;
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zza:J

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzc:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzc:B

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzdze;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzb:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzc:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzc:B

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdzf;
    .locals 5

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzc:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzc:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " id"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzc:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " eventType"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzb;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdza;->zza:J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdza;->zzb:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdzb;-><init>(JI[B)V

    return-object v0
.end method
