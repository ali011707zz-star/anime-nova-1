.class public final Lcom/google/android/gms/internal/ads/zzftp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfti;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzftp;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/android/gms/internal/ads/zzftd;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfth;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfte;Lcom/google/android/gms/internal/ads/zzfta;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzb:F

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzftp;
    .locals 3

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzftp;->zza:Lcom/google/android/gms/internal/ads/zzftp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfta;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfta;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfte;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfte;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzftp;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzftp;-><init>(Lcom/google/android/gms/internal/ads/zzfte;Lcom/google/android/gms/internal/ads/zzfta;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzftp;->zza:Lcom/google/android/gms/internal/ads/zzftp;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzftp;->zza:Lcom/google/android/gms/internal/ads/zzftp;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsz;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzftd;

    .line 2
    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzftd;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfsz;Lcom/google/android/gms/internal/ads/zzftp;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzc:Lcom/google/android/gms/internal/ads/zzftd;

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftg;->zza()Lcom/google/android/gms/internal/ads/zzftg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzftj;->zzg(Lcom/google/android/gms/internal/ads/zzfti;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftg;->zza()Lcom/google/android/gms/internal/ads/zzftg;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftj;->zze()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfur;->zzb()Lcom/google/android/gms/internal/ads/zzfur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfur;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzc:Lcom/google/android/gms/internal/ads/zzftd;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftd;->zza()V

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfur;->zzb()Lcom/google/android/gms/internal/ads/zzfur;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfur;->zzc()V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfur;->zzb()Lcom/google/android/gms/internal/ads/zzfur;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfur;->zze()V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfur;->zzb()Lcom/google/android/gms/internal/ads/zzfur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfur;->zzd()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftg;->zza()Lcom/google/android/gms/internal/ads/zzftg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftj;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzc:Lcom/google/android/gms/internal/ads/zzftd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzb()V

    return-void
.end method

.method public final zzf(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfth;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfth;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfth;->zzf()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfsn;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzg()Lcom/google/android/gms/internal/ads/zzftx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzftx;->zzo(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzg()F
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzb:F

    return v0
.end method
