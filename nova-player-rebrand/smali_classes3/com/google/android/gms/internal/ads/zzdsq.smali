.class public final Lcom/google/android/gms/internal/ads/zzdsq;
.super Lcom/google/android/gms/internal/ads/zzbli;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdoc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdoh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdoc;Lcom/google/android/gms/internal/ads/zzdoh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbli;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzC()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbks;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzR()Lcom/google/android/gms/internal/ads/zzbks;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzH()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd()V

    return-void
.end method

.method public final zzk()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzc(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzm(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zze(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final zzn(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzf(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzbkl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzz()Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zzc:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzL()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsq;->zza:Ljava/lang/String;

    return-object v0
.end method
