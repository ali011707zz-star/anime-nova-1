.class final Lcom/google/android/gms/internal/ads/zzduk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzduv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzduv;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduk;->zza:Lcom/google/android/gms/internal/ads/zzduv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduk;->zza:Lcom/google/android/gms/internal/ads/zzduv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduv;->zzb()Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdeg;->zza()V

    return-void
.end method

.method public final zzdl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduk;->zza:Lcom/google/android/gms/internal/ads/zzduv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduv;->zzb()Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdeg;->zzb()V

    return-void
.end method
