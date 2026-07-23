.class final synthetic Lcom/google/android/gms/internal/ads/zzdsg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsh;

.field private final synthetic zzb:Lorg/json/JSONObject;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdsh;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsg;->zza:Lcom/google/android/gms/internal/ads/zzdsh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsg;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsg;->zza:Lcom/google/android/gms/internal/ads/zzdsh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsg;->zzb:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsh;->zzc(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcjl;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
