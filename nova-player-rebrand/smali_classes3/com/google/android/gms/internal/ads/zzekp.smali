.class final synthetic Lcom/google/android/gms/internal/ads/zzekp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzekr;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfir;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjc;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzduz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzekr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzduz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekp;->zza:Lcom/google/android/gms/internal/ads/zzekr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzc:Lcom/google/android/gms/internal/ads/zzfjc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzd:Lcom/google/android/gms/internal/ads/zzduz;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekp;->zza:Lcom/google/android/gms/internal/ads/zzekr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzc:Lcom/google/android/gms/internal/ads/zzfjc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzd:Lcom/google/android/gms/internal/ads/zzduz;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzekr;->zzc(Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzduz;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
