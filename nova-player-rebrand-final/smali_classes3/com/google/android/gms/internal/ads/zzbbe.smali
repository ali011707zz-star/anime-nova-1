.class public final Lcom/google/android/gms/internal/ads/zzbbe;
.super Lcom/google/android/gms/internal/ads/zzbby;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzbal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;IILcom/google/android/gms/internal/ads/zzbal;)V
    .locals 7

    .line 1
    const-string v3, "/PvocKqER/fglRgbozHO01MU+uyxr0WG8/b5JQrvhOY="

    const/16 v6, 0x55

    const-string v2, "uAqKAtpzCVdzsQfO3VsjAegcR1bzJIPV7WnBpdLTTlepVA45FMcx2CHHUDw9JuIC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbby;-><init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;II)V

    iput-object p7, v0, Lcom/google/android/gms/internal/ads/zzbbe;->zzh:Lcom/google/android/gms/internal/ads/zzbal;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zze:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzh:Lcom/google/android/gms/internal/ads/zzbal;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbal;->zzf()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbal;->zzg()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbal;->zzi()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbal;->zzh()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v3, 0x2

    aput-object v4, v5, v3

    const/4 v3, 0x3

    aput-object v1, v5, v3

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    aget-wide v3, v0, v6

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzawg;->zzY(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 8
    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzawg;->zzZ(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
