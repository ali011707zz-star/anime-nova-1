.class public final Lcom/google/android/gms/internal/ads/zzdao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjd;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdag;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzekl;

.field private final zzg:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdan;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzi()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzj()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzk()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzc:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzl()Lcom/google/android/gms/internal/ads/zzfjd;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzd:Lcom/google/android/gms/internal/ads/zzfjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzm()Lcom/google/android/gms/internal/ads/zzdag;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zze:Lcom/google/android/gms/internal/ads/zzdag;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzn()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzf:Lcom/google/android/gms/internal/ads/zzekl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzo()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzg:I

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzdan;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzc:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdan;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdan;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zze:Lcom/google/android/gms/internal/ads/zzdag;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdan;->zzd(Lcom/google/android/gms/internal/ads/zzdag;)Lcom/google/android/gms/internal/ads/zzdan;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzf:Lcom/google/android/gms/internal/ads/zzekl;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdan;->zzg(Lcom/google/android/gms/internal/ads/zzekl;)Lcom/google/android/gms/internal/ads/zzdan;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzfjk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzfjd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzd:Lcom/google/android/gms/internal/ads/zzfjd;

    return-object v0
.end method

.method final zzd()Landroid/os/Bundle;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method final zze()Lcom/google/android/gms/internal/ads/zzdag;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zze:Lcom/google/android/gms/internal/ads/zzdag;

    return-object v0
.end method

.method final zzf(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zza:Landroid/content/Context;

    return-object p1
.end method

.method final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzekl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzf:Lcom/google/android/gms/internal/ads/zzekl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzekl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method final zzh()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzg:I

    return v0
.end method
