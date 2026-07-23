.class final Lcom/google/android/gms/internal/ads/zzdss;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkf;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdst;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdst;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "_videoMediaView"

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdss;->zza:Ljava/lang/String;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzb:Lcom/google/android/gms/internal/ads/zzdst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzb:Lcom/google/android/gms/internal/ads/zzdst;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzc()Lcom/google/android/gms/internal/ads/zzdoc;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdss;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzc()Lcom/google/android/gms/internal/ads/zzdoc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoc;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzb(Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzc()Lorg/json/JSONObject;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lorg/json/JSONObject;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
