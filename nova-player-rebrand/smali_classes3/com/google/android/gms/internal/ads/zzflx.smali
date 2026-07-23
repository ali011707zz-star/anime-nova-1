.class final Lcom/google/android/gms/internal/ads/zzflx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzflw;

.field private zzc:J

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzflw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzflw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzb:Lcom/google/android/gms/internal/ads/zzflw;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzf:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzc:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzd:I

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zze:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzb:Lcom/google/android/gms/internal/ads/zzflw;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzflw;->zza:Z

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzf:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzb:Lcom/google/android/gms/internal/ads/zzflw;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzflw;->zzb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzflw;->zzb:I

    return-void
.end method

.method public final zzd()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zza:J

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzc:J

    return-wide v0
.end method

.method public final zzf()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzd:I

    return v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzflw;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzb:Lcom/google/android/gms/internal/ads/zzflw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflw;->zza()Lcom/google/android/gms/internal/ads/zzflw;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzflw;->zza:Z

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzflw;->zzb:I

    return-object v1
.end method

.method public final zzh()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzflx;->zza:J

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Last accessed: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzc:J

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Accesses: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzd:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nEntries retrieved: Valid: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzflx;->zze:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Stale: "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzflx;->zzf:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
