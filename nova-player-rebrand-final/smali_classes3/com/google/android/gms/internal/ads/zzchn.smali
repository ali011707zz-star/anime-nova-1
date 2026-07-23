.class final Lcom/google/android/gms/internal/ads/zzchn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:I

.field final synthetic zzd:I

.field final synthetic zze:J

.field final synthetic zzf:J

.field final synthetic zzg:Z

.field final synthetic zzh:I

.field final synthetic zzi:I

.field final synthetic zzj:Lcom/google/android/gms/internal/ads/zzchr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchr;Ljava/lang/String;Ljava/lang/String;IIJJZII)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchn;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzc:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzd:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzchn;->zze:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzf:J

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzg:Z

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzh:I

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzi:I

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzj:Lcom/google/android/gms/internal/ads/zzchr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheProgress"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchn;->zza:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzb:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzc:I

    const-string v2, "bytesLoaded"

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzd:I

    const-string v2, "totalBytes"

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzchn;->zze:J

    const-string v3, "bufferedDuration"

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzf:J

    const-string v3, "totalDuration"

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzg:Z

    if-eq v1, v2, :cond_0

    const-string v1, "0"

    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "1"

    .line 8
    :goto_0
    const-string v2, "cacheReady"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzh:I

    const-string v2, "playerCount"

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzi:I

    const-string v2, "playerPreparedCount"

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchn;->zzj:Lcom/google/android/gms/internal/ads/zzchr;

    const-string v2, "onPrecacheEvent"

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzw(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
