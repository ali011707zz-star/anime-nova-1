.class public final Lcom/google/android/gms/internal/ads/zzeua;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcdz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzcdz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeua;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeua;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Lcom/google/android/gms/internal/ads/zzcdz;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzetz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzetz;-><init>(Lcom/google/android/gms/internal/ads/zzeua;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeua;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x9

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzeub;
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeub;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Lcom/google/android/gms/internal/ads/zzcdz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeua;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdz;->zzl()Z

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzeub;-><init>(Lcom/google/android/gms/ads/internal/client/zzx;Z)V

    return-object v0
.end method
