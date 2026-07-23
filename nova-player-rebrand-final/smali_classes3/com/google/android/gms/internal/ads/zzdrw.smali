.class final synthetic Lcom/google/android/gms/internal/ads/zzdrw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbde;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    return-void
.end method


# virtual methods
.method public final synthetic zzdj(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    if-eq v1, p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    .line 3
    :cond_0
    const-string p1, "1"

    .line 1
    :goto_0
    const-string v1, "isVisible"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    const-string v1, "onAdVisibilityChanged"

    .line 3
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
