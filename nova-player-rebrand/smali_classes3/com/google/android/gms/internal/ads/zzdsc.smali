.class final synthetic Lcom/google/android/gms/internal/ads/zzdsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsh;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/zzb;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcce;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdsh;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zza:Lcom/google/android/gms/internal/ads/zzdsh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzb:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzc:Lcom/google/android/gms/internal/ads/zzcce;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zza:Lcom/google/android/gms/internal/ads/zzdsh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzb:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzc:Lcom/google/android/gms/internal/ads/zzcce;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdsh;->zze(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
