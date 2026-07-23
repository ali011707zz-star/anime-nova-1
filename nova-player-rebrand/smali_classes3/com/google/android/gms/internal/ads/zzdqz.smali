.class final synthetic Lcom/google/android/gms/internal/ads/zzdqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdra;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjc;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfir;

.field private final synthetic zzd:Lorg/json/JSONObject;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdra;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zza:Lcom/google/android/gms/internal/ads/zzdra;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzd:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zza:Lcom/google/android/gms/internal/ads/zzdra;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzd:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdra;->zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v0

    return-object v0
.end method
