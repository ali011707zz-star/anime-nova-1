.class public final Lcom/google/android/gms/internal/ads/zzbbq;
.super Lcom/google/android/gms/internal/ads/zzbby;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzh:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    .line 1
    const-string v3, "PILFsXLzYdqBxxfwB9b+jT5mnzLC4LU5UXMk7tC1zw8="

    const/16 v6, 0x2d

    const-string v2, "TnO68f+IpvRRkyv0ANYwkK+/mU2YJddrRcZ9TNokdmi5eEzcRJBPehtgPhuxRZAE"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbby;-><init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;II)V

    iput-object p7, v0, Lcom/google/android/gms/internal/ads/zzbbq;->zzh:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzh:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zze:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbab;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbab;->zza:Ljava/lang/Long;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzawg;->zzC(J)Lcom/google/android/gms/internal/ads/zzawg;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzc:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzag(I)Lcom/google/android/gms/internal/ads/zzawg;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzag(I)Lcom/google/android/gms/internal/ads/zzawg;

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
