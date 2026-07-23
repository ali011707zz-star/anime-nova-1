.class public final Lcom/google/android/gms/internal/ads/zzaca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/ads/zzuw;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzui;

.field private zze:Landroid/os/Handler;

.field private zzf:Lcom/google/android/gms/internal/ads/zzadm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzuw;->zzb:Lcom/google/android/gms/internal/ads/zzuw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzc:Lcom/google/android/gms/internal/ads/zzuw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzgru;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzuw;)Lcom/google/android/gms/internal/ads/zzaca;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzc:Lcom/google/android/gms/internal/ads/zzuw;

    return-object p0
.end method

.method public final zzb(Landroid/os/Handler;)Lcom/google/android/gms/internal/ads/zzaca;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/os/Handler;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadm;)Lcom/google/android/gms/internal/ads/zzaca;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzf:Lcom/google/android/gms/internal/ads/zzadm;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzacc;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzb:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzf:Lcom/google/android/gms/internal/ads/zzadm;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzf:Lcom/google/android/gms/internal/ads/zzadm;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzb:Z

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(Lcom/google/android/gms/internal/ads/zzaca;)V

    return-object v0
.end method

.method final synthetic zze()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zza:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzuw;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzc:Lcom/google/android/gms/internal/ads/zzuw;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzui;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    return-object v0
.end method

.method final synthetic zzh()Landroid/os/Handler;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/os/Handler;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzadm;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzf:Lcom/google/android/gms/internal/ads/zzadm;

    return-object v0
.end method
