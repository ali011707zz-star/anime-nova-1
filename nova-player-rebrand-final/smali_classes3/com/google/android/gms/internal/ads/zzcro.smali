.class final Lcom/google/android/gms/internal/ads/zzcro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfqk;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcrv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcrv;Lcom/google/android/gms/internal/ads/zzfqk;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcro;->zza:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzd:Lcom/google/android/gms/internal/ads/zzcrv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcro;->zza:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcrn;-><init>(Lcom/google/android/gms/internal/ads/zzcro;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfqk;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzd:Lcom/google/android/gms/internal/ads/zzcrv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrv;->zzj()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcro;->zza:Lcom/google/android/gms/internal/ads/zzfqk;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>(Lcom/google/android/gms/internal/ads/zzfqk;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzd:Lcom/google/android/gms/internal/ads/zzcrv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrv;->zzj()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object p1

    .line 2
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzgzy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
