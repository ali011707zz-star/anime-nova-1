.class final synthetic Lcom/google/android/gms/internal/ads/zzemn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzems;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjc;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfir;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzems;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemn;->zza:Lcom/google/android/gms/internal/ads/zzems;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemn;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemn;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemn;->zza:Lcom/google/android/gms/internal/ads/zzems;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemn;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzemn;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzems;->zzd(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lorg/json/JSONArray;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
