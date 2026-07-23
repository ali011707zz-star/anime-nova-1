.class final Lcom/google/android/gms/internal/ads/zzbmq;
.super Lcom/google/android/gms/internal/ads/zzblv;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbms;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbms;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmq;->zza:Lcom/google/android/gms/internal/ads/zzbms;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzblv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzblm;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmq;->zza:Lcom/google/android/gms/internal/ads/zzbms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbms;->zzd()Lcom/google/android/gms/ads/formats/zzd;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbms;->zze(Lcom/google/android/gms/internal/ads/zzblm;)Lcom/google/android/gms/internal/ads/zzbln;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbms;->zzd()Lcom/google/android/gms/ads/formats/zzd;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/zzd;->zzc(Lcom/google/android/gms/internal/ads/zzbln;Ljava/lang/String;)V

    return-void
.end method
