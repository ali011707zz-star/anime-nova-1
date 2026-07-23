.class public final Lcom/google/android/gms/internal/ads/zzeyb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzfjk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeya;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeya;-><init>(Lcom/google/android/gms/internal/ads/zzeyb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x15

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzeyc;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    const-string v2, "requester_type_2"

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeyc;-><init>(Z)V

    return-object v0
.end method
