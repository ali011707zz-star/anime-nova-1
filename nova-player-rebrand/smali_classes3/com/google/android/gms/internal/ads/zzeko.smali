.class final synthetic Lcom/google/android/gms/internal/ads/zzeko;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjl;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfir;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcti;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzekr;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzcti;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeko;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzc:Lcom/google/android/gms/internal/ads/zzcti;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeko;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzM:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzav()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzc:Lcom/google/android/gms/internal/ads/zzcti;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzJ()V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->onPause()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcti;->zzh()Lcom/google/android/gms/internal/ads/zzctr;

    move-result-object p1

    return-object p1
.end method
