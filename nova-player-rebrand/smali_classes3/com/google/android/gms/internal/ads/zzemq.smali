.class final synthetic Lcom/google/android/gms/internal/ads/zzemq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzems;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzc:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfjc;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzfir;

.field private final synthetic zzf:Lorg/json/JSONObject;

.field private final synthetic zzg:Lcom/google/android/gms/ads/internal/zzb;

.field private final synthetic zzh:Lcom/google/android/gms/internal/ads/zzcce;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzems;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemq;->zza:Lcom/google/android/gms/internal/ads/zzems;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzd:Lcom/google/android/gms/internal/ads/zzfjc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemq;->zze:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzf:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzg:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzh:Lcom/google/android/gms/internal/ads/zzcce;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemq;->zza:Lcom/google/android/gms/internal/ads/zzems;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzd:Lcom/google/android/gms/internal/ads/zzfjc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzemq;->zze:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzf:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzg:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzh:Lcom/google/android/gms/internal/ads/zzcce;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzems;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)Lcom/google/android/gms/internal/ads/zzdoc;

    move-result-object v0

    return-object v0
.end method
