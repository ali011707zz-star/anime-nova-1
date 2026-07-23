.class public final Lcom/google/android/gms/internal/ads/zzevr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdvu;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzdvu;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevr;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevr;->zzb:Lcom/google/android/gms/internal/ads/zzdvu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevr;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzevr;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzevq;-><init>(Lcom/google/android/gms/internal/ads/zzevr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevr;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x11

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzevs;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevr;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevr;->zzb:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevr;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdvu;->zzb(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdvu;->zzc()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzevs;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzevs;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v2
.end method
