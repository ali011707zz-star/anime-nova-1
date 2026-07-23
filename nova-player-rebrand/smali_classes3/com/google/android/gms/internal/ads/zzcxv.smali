.class public final Lcom/google/android/gms/internal/ads/zzcxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdct;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lcom/google/android/gms/internal/ads/zzdel;
.implements Lcom/google/android/gms/internal/ads/zzdbz;
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzdgw;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcdo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcdo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdo;->zzf()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdJ()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdO(Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdP(Lcom/google/android/gms/internal/ads/zzfjc;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zza:Lcom/google/android/gms/common/util/Clock;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdo;->zzd(J)V

    return-void
.end method

.method public final zzdr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdo;->zze()V

    return-void
.end method

.method public final zzds()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdo;->zzg()V

    return-void
.end method

.method public final zzdt()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zze()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdo;->zzh(Z)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdo;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbgj$zzb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdo;->zzb()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbgj$zzb;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbgj$zzb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdo;->zzc()V

    return-void
.end method

.method public final zzm(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzo()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdo;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
