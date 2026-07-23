.class final Lcom/google/android/gms/internal/ads/zzbmr;
.super Lcom/google/android/gms/internal/ads/zzbly;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbms;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbms;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmr;->zza:Lcom/google/android/gms/internal/ads/zzbms;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbly;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzblm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmr;->zza:Lcom/google/android/gms/internal/ads/zzbms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbms;->zzc()Lcom/google/android/gms/ads/formats/zze;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbms;->zze(Lcom/google/android/gms/internal/ads/zzblm;)Lcom/google/android/gms/internal/ads/zzbln;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/formats/zze;->zzb(Lcom/google/android/gms/internal/ads/zzbln;)V

    return-void
.end method
