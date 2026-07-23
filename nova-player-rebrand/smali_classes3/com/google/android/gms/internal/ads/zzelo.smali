.class final Lcom/google/android/gms/internal/ads/zzelo;
.super Lcom/google/android/gms/internal/ads/zzbvf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzelp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzekj;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelp;Lcom/google/android/gms/internal/ads/zzekj;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zza:Lcom/google/android/gms/internal/ads/zzelp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvf;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzekj;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zza:Lcom/google/android/gms/internal/ads/zzelp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzelp;->zzd(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzekj;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelv;->zzj()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzekj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzelv;->zzw(ILjava/lang/String;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzekj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzelv;->zzx(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbuc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zza:Lcom/google/android/gms/internal/ads/zzelp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzelp;->zze(Lcom/google/android/gms/internal/ads/zzbuc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzekj;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelv;->zzj()V

    return-void
.end method
